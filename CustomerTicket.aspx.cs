using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class CustomerTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            string email = Session["email"].ToString();
            string cnic = getCNIC(email);
            DAL dal = new DAL();
            DataTable dt = dal.show("Ticket_Reservations", "cnic", cnic);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        private string getCNIC(string email)
        {
            DAL dal = new DAL();
            DataTable dt = dal.show("users", "email", email);
            string cnic = dt.Rows[0]["cnic"].ToString();
            return cnic;

        }


    }

}