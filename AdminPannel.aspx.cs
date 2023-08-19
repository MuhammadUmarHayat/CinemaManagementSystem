using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class AdminPannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }


            DAL dal = new DAL();

            Label1.Text = "Total Registered Members  " + dal.TotalMembers();
            Label2.Text = "Total Shows " + dal.TotalShows();
            Label3.Text = "Total Sold Tickets  " + dal.TotalSoldTickets();
            Label4.Text = "Total Income Generated  " + dal.TotalIncome();

        }




    }
}