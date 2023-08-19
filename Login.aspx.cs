using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            string password = TextBox2.Text;
            if (email.Equals("admin@gmail.com") && password.Equals("admin"))
            {
                Session["email"] = email;

                Response.Redirect("AdminPannel.aspx");
            }
            DAL dal = new DAL();
            if (dal.login(email, password))
            {
                Session["email"] = email;

                Response.Redirect("CustomerPanel.aspx");
            }
            else
            {

                Label1.Text = "Please enter corract email and passowrd";
            }
        }
    }
}