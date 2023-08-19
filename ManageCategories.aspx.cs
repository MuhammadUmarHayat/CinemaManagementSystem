using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class ManageCategories : System.Web.UI.Page
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
            //save
            string title = txtTitle.Text;
            string description = txtDescription.Text;


            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);

            DAL dal = new DAL();
            string[] arr = { title, description, link };
            Boolean result = dal.save("categories", arr);
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
            //refresh
            Response.Redirect("ManageCategories.aspx");

        }
    }
}