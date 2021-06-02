/*************************************************************************************/
// -->Template Name: Bootstrap Press Admin
// -->Author: Themedesigner
// -->Email: niravjoshi87@gmail.com
// -->File: datatable_basic_init
/*************************************************************************************/

/****************************************
 *       Basic Table                   *
 ****************************************/
$("#zero_config").DataTable();

/****************************************
 *       Default Order Table           *
 ****************************************/
$("#default_order").DataTable({
  order: [[3, "desc"]],
});

/****************************************
 *       Multi-column Order Table      *
 ****************************************/
$("#leads_table").DataTable({
  order: [[4, "desc"]],
  //   columnDefs: [
  //     {
  //       targets: [4],
  //       //   orderData: [4, 4],
  //       order: [[4, "desc"]],
  //     },
  // {
  //   targets: [1],
  //   orderData: [1, 0],
  // },
  // {
  //   targets: [3],
  //   orderData: [3, 0],
  // },
  //   ],
});
