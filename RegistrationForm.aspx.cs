using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //send email
            Button1.Visible = true;


            Random rnd = new Random();
            int num = rnd.Next();

            Session["code"] = num;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("email", "password");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Registration Varification Code ";
            msg.Body = "Hi, Thanks For Your Registration at Cinema management system, Your code is" + num.ToString();
            string toaddress = txtEmail.Text;
            msg.To.Add(toaddress);
            string fromaddress = "email";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                Label1.Text = "The verification code has been sent to your email account. Please check and enter your varification code here";

            }
            catch
            {
                throw;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //register Now button

            save();

        }


        private void save()
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string mobile = txtMob.Text;
            string cnic = txtCnic.Text;
            string address = txtAdd.Text;
            string gender = RadioButtonList1.SelectedValue.ToString();
            string status = "ok";


            DAL dal = new DAL();//insert into users(email,name,password,mobile,cnic,address,gender,status)
            string[] arr = { email, name, password, mobile, cnic, address, gender, status };
            Boolean result = dal.save("users", arr);
            if (result)
            {
                Label1.Text = "You are registered successfully";

                Session["email"] = email;
                Session["name"] = name;
                Session["cnic"] = cnic;
                Response.Redirect("GetMembership.aspx");

            }
            else
            {
                Label1.Text = "Something went wrong please try latter";
            }


        }


    }
}