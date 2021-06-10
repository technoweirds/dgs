using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography;
using System.Globalization;
using System.Text;
using System.Net.Mail;
using System.Net.Mime;
using System.Data.SqlClient;
using DataAccess;
using Entities;


public partial class Portfolio_loan_portfolio_manager : System.Web.UI.Page
{
    DBCode db = new DBCode();
    DBHelper helper = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Rid"] != null)
            {
                FillLoanHistoryNew();
            }
            else
            {
                Response.Redirect("loan-portfolio.aspx");
            }
        }
    }
    private void FillLoanHistoryNew()
    {
        try
        {

            using (SqlConnection con = DBCode.getSqlConnection())
            {
                using (SqlCommand cmd = new SqlCommand("usp_GetPortfolioSummary", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Rid", SqlDbType.Int).Value = Convert.ToInt32(Session["Rid"]);
                con.Open();
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                Session["Result"] = ds;
                ListViewQLApplications.DataSource = ds;
                ListViewQLApplications.DataBind();

                ////===================Loan Amount Total================================================================================================= 
                var resultLAmunt = ds.Tables[0].AsEnumerable()
                .Sum(x => Convert.ToInt32(x["LoanAmount"]));
                lblTLA.Text = resultLAmunt.ToString();
                lblTLA.Text = string.Format("{0:n0}", double.Parse(lblTLA.Text));
                ////===================END================================================================================================================ 

                ////===================EMI Total==========================================================================================================
                var resultTEMI = ds.Tables[0].AsEnumerable()
                     .Sum(x => Convert.ToInt32(x["EMI"]));
                lblTEMI.Text = resultTEMI.ToString();
                lblTEMI.Text = string.Format("{0:n0}", double.Parse(lblTEMI.Text));
                ////===================END================================================================================================================ 
                Session["lblTEMI"] = lblTEMI.Text;

                }
            }
        }
        catch (Exception ex)
        {
            DBHelper helper = new DBHelper();
            helper.AddErrorlog("loan-portfolio-manager.aspx", "FillLoanHistoryNew", ex.ToString());
        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string strEMI = "select dbo.udf_CalEMI (" + txtLoanAmount.Text.Trim() + "," + txtROI.Text.Trim() + "," + Convert.ToInt32(txtTenure.Text.Trim()) * 12 + "); ";
            string strEMIresult = db.executeScalar(strEMI);

            DateTime dt1 = Convert.ToDateTime(txtLoanStartDate.Text);
            string StartDate = dt1.ToString("dd MMM yyyy");

            Portfolio oPortfolio = new Portfolio();
            oPortfolio.CatId = Convert.ToInt32(DDLoanT.SelectedValue.ToString());
            oPortfolio.LoanAmount = Convert.ToInt32(txtLoanAmount.Text.Trim());
            oPortfolio.ROI = txtROI.Text.Trim();
            oPortfolio.Tenure = txtTenure.Text.Trim();
            oPortfolio.BankName = txtbankname.Text.Trim();
            oPortfolio.EMI = Convert.ToDouble(strEMIresult);
            oPortfolio.EMIDate = DDlistDay.SelectedValue.ToString();
            oPortfolio.Rid = Convert.ToInt32(Session["Rid"]);
            oPortfolio.LoanStartDate = Convert.ToDateTime(StartDate);
            oPortfolio.City = txtCity.Text.Trim();
            oPortfolio.Salary = Convert.ToInt32(TextSalary.Text.Trim());
            int id = oPortfolio.InsertPortfolio(oPortfolio);
            Session["Portfolio"] = "Portfolio";
            clear();
            FillLoanHistoryNew();
        }
        catch (Exception ex)
        {
            DBHelper helper = new DBHelper();
            helper.AddErrorlog("loan-portfolio-manager.aspx", "btnsubmit_Click", ex.ToString());
        }
    }
    protected void ListViewQLApplications_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        //=================================Apply LinkButton Redirect Link==============================================
        if (e.CommandName == "Redirect2")
        {
            Session["id"] = e.CommandArgument.ToString();

            string catID = "select CatId from Portfolio where PortfolioId='" + Session["id"] + "'";
            string categoryID = db.executeScalar(catID);
            Session["strCode2"] = categoryID;
            Label lblREMAINING = (Label)e.Item.FindControl("lblREMAINING");
            Label lblTenure = (Label)e.Item.FindControl("lblTenure");
            Label lblEMI = (Label)e.Item.FindControl("lblEMI");
            Label lblloanSdate = (Label)e.Item.FindControl("lblloanSdate");

            Label lblCity = (Label)e.Item.FindControl("lblCity");
            Label lblSalary = (Label)e.Item.FindControl("lblSalary");

            string RemainingAmount = lblREMAINING.Text;
            string Tenure = lblTenure.Text;
            string EMI = lblEMI.Text;
            string City =lblCity.Text;
            string Salary =lblSalary.Text;

            Session["RemainingAmount"] = RemainingAmount;
            Session["Tenure"] = Tenure;
            Session["EMI"] = EMI;
            DateTime dt = Convert.ToDateTime(lblloanSdate.Text);
            int year = DateTime.UtcNow.Year - dt.Year;
            int month = DateTime.UtcNow.Month - dt.Month;
            if (month > 6)
            {
                year++;
            }

            Session["Tenure"] = Convert.ToInt32(lblTenure.Text) - year;

            string Tyear = Session["Tenure"].ToString();
            string Rid = Session["Rid"].ToString();
            string catName = string.Empty;
            if (categoryID == "2")
            {
                catName = "Personal Loan";
            }
            if (categoryID == "1")
            {
                catName = "Home Loan";
            }
            //if (categoryID == "33")
            //{
            //    catName = "Car Loan";
            //}
            if (categoryID == "4")
            {
                catName = "Business Loan";
            }
            //if (categoryID == "21")
            //{
            //    catName = "Personal Loan";
            //}
            if (categoryID == "5")
            {
                catName = "Loan Against Property";
            }
            if (categoryID == "26")
            {
                catName = "Lease Rental Discounting";
            }

            double PoLAmt = Convert.ToDouble(RemainingAmount);
            double PoEMI = Convert.ToDouble(EMI);
            double PoSalary = Convert.ToDouble(Salary);

            if (categoryID == "2")
            {
                Response.Redirect("~/personal-loan/index.aspx?Portfolio=" + 1001 + "&catID=" + categoryID + "&Rid=" + Rid + "&Tenure=" + Tyear + "&EMI=" + PoEMI + "&LoanAmt=" + PoLAmt + "&catName=" + catName + "&Salary=" + PoSalary + "&City=" + City);
            }
            if (categoryID == "1")
            {
                Response.Redirect("~/home-loan/index.aspx?Portfolio=" + 1001 + "&catID=" + categoryID + "&Rid=" + Rid + "&Tenure=" + Tyear + "&EMI=" + PoEMI + "&LoanAmt=" + PoLAmt + "&catName=" + catName + "&Salary=" + PoSalary + "&City=" + City);
            }
            if (categoryID == "4")
            {
                Response.Redirect("~/business-loan/index.aspx?Portfolio=" + 1001 + "&catID=" + categoryID + "&Rid=" + Rid + "&Tenure=" + Tyear + "&EMI=" + PoEMI + "&LoanAmt=" + PoLAmt + "&catName=" + catName + "&Salary=" + PoSalary + "&City=" + City);
            }
            if (categoryID == "5")
            {
                Response.Redirect("~/loan-against-property/index.aspx?Portfolio=" + 1001 + "&catID=" + categoryID + "&Rid=" + Rid + "&Tenure=" + Tyear + "&EMI=" + PoEMI + "&LoanAmt=" + PoLAmt + "&catName=" + catName + "&Salary=" + PoSalary + "&City=" + City);
            }
        }

        else if (e.CommandName == "DeleteRecord")
        {
            try
            {

                if (db.executeQuery("update Portfolio set Status=0 where PortfolioId='" + e.CommandArgument.ToString() + "'"))
                {
                    Response.Write("<script type='text/javascript'>alert('Record has been deleted succesfully.');</script>");
                    FillLoanHistoryNew();
                }



            }

            catch (Exception ex)
            {
                DBHelper helper = new DBHelper();
                helper.AddErrorlog("loan-portfolio-manager.aspx", "ListViewQLApplications_ItemCommand", ex.ToString());
            }

        }
    }
    protected void ListViewQLApplications_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                var lblicon = (Label)e.Item.FindControl("lblicon");
                var lbltaSaving = (Label)e.Item.FindControl("lbltaSaving");
                var lblASaving = (Label)e.Item.FindControl("lblASaving");
                var LinkButton1 = (LinkButton)e.Item.FindControl("LBApply");
                var lblTotalLoanAmountSaving = (Label)e.Item.FindControl("lblTotalLAmtSaving");
                var lblTotalLAmtSaving = (Label)e.Item.FindControl("lblTotalLAmtSaving");

            string input = lblTotalLoanAmountSaving.Text;
            string sub = input.Substring(0, 1);
            Console.WriteLine("Substring: {0}", sub);

            double totalamt = Convert.ToDouble(lblTotalLoanAmountSaving.Text);
            if (totalamt > 0)
            {
                lblASaving.Visible = false;
                LinkButton1.Visible = true;
            }
            else
            {
                lblASaving.Visible = true;
                LinkButton1.Visible = false;
            }           


            }

        }
        catch (Exception ex)
        {

            helper.AddErrorlog("loan-portfolio-manager.aspx", "ListViewQLApplications_ItemDataBound", ex.ToString());
        }

    }
    public bool User_Link(string CatId)
    {
        try
        {        ////=================================Visible True and False Apply LinkButton==============================================

        if (CatId == "6" || CatId == "21" || CatId == "8")
        {

            return false;

        }
        else
        {
            return true;
            }
        }

        catch (Exception ex)
        {
            helper.AddErrorlog("loan-portfolio-manager.aspx", "User_Link", ex.ToString());
        }
        return true;
    }

    public void clear()
    {
        try
        {

            Session["lblMonthlyPayment1"] = null;
            Session["lblMonthlyPayment2"] = null;
            Session["CatID"] = null;
            DDLoanT.SelectedValue = "Select";
            txtLoanAmount.Text = "";
            txtROI.Text = "";
            txtTenure.Text = "";
            txtbankname.Text = "";
            DDlistDay.SelectedValue = "Select";
        }
        catch (Exception ex)
        {
            helper.AddErrorlog("loan-portfolio-manager.aspx", "clear", ex.ToString());
        }

    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetListofBankName(string prefixText)
    {
        try
        {

            using (SqlConnection sqlconn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["constring"]))
            {
                sqlconn.Open();
                SqlCommand cmd = new SqlCommand("select DISTINCT top 5 BankName from dbo.List_Of_Bank_Name where BankName like'" + prefixText + "%'", sqlconn);
                cmd.Parameters.AddWithValue("@BankName", prefixText);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                List<string> CountryNames = new List<string>();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    CountryNames.Add(dt.Rows[i]["BankName"].ToString());
                }
                return CountryNames;
            }
        }
        catch (Exception ex)
        {
            DBHelper helper = new DBHelper();
            helper.AddErrorlog("loan-portfolio-manager.aspx", "GetListofBankName", ex.ToString());
        }
        return null;
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetListofCitys(string prefixText)
    {
        try
        {

            using (SqlConnection sqlconn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["constring"]))
            {
                sqlconn.Open();
                SqlCommand cmd = new SqlCommand("select top 5 NameCity from dbo.BAListOfCities where NameCity like '" + prefixText + "%'", sqlconn);
                cmd.Parameters.AddWithValue("@NameCity", prefixText);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                List<string> CountryNames = new List<string>();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    CountryNames.Add(dt.Rows[i]["NameCity"].ToString());
                }
                return CountryNames;
            }
        }


        catch (Exception ex)
        {
            DBHelper helper = new DBHelper();
            helper.AddErrorlog("loan-portfolio-manager.aspx", "GetListofCitys", ex.ToString());
        }
        return null;
    }
}