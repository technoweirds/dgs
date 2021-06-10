using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
using Utilities;

public partial class Portfolio_loan_portfolio : System.Web.UI.Page
{
    protected string Rid = "";
    DBHelper helper = new DBHelper();
    protected string serviceURLPath = ConfigRelated.GetAppSettingsValueByKey("AppServiceURLPath");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Rid"] != null)
        {
            Rid = Session["Rid"].ToString();
        }
    }
}