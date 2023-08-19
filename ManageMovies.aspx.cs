using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class ManageMovies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            bindCategory();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = Calendar1.SelectedDate.ToString();
        }
        private void bindCategory()
        {
            DAL dal = new DAL();
            DataTable dt = dal.show("categories");
            if (dt.Rows.Count > 0)
            { // bind domain with the dropdownlist
                ddlCategory.DataTextField = "category";
                ddlCategory.DataValueField = "category";
                ddlCategory.DataSource = dt;
                ddlCategory.DataBind();
            }


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string title = txtMovieTitle.Text;
            string category = ddlCategory.Text;
            string description = txtDescription.Text;
            string cast = txtCast.Text;
            string rDate = Label2.Text;
            string status = ddlStatus.Text;
            string rank = ddlRank.Text;

            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);

            DAL dal = new DAL();
            string[] arr = { title, category, description, cast, rDate, status, link, rank };
            Boolean result = dal.save("movies", arr);
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
            Response.Redirect("ManageMovies.aspx");
        }
    }
}