using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class ManageTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string type = ddlType.Text;
            string price = txtPrice.Text;
            string status = ddlStatus.Text;
            DAL dal = new DAL();
            string[] arr = { type, price, status };
            Boolean result = dal.save("tickets", arr);
            if (result)
            {
                Label1.Text = "Record is saved successfully";
            }
            else
            {
                Label1.Text = "Something went wrong please try latter";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageTickets.aspx");

        }
    }
}