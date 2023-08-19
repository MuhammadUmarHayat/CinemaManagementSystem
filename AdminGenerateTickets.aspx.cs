using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class AdminGenerateTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            DAL dal = new DAL();
            DataTable dt = dal.show("Ticket_Reservations", "isTicketGenerated", "no");
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}