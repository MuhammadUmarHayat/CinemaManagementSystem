using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class ManageShows : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = Calendar1.SelectedDate.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string title = ddlMovie.Text;
            string theatre = ddlTheatre.Text;
            string date1 = Label2.Text;
            string time = txtTime.Text;
            string status = ddlStatus.Text;
            string seats = txtSeat.Text;


            DAL dal = new DAL();
            string[] arr = { title, theatre, date1, time, seats, status };
            Boolean result = dal.save("shows", arr);
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
            Response.Redirect("ManageShows.aspx");
        }
    }
}