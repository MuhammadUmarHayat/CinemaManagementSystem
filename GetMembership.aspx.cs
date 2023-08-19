using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class GetMembership : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"].Equals(null) || Session["name"].Equals(null) || Session["cnic"].Equals(null))
            {

            }
            else
            {
                string email = Session["email"].ToString();
                string name = Session["name"].ToString();
                string cnic = Session["cnic"].ToString();
                lblCNIC.Text = cnic;
                lblEmail.Text = email;
                lblName.Text = name;
                lblTotalPayment.Text = "100";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //save payment
            string name = lblName.Text;
            string cnic = lblCNIC.Text;
            string totalPayment = lblTotalPayment.Text;
            string method = ddlmethod.Text;
            string bankName = txtBankName.Text;
            string accountNo = txtAcNo.Text;
            string csv = txtCSV.Text;
            string date = DateTime.Now.ToString();

            DAL dal = new DAL();

            string[] arr = { name, cnic, totalPayment, method, bankName, accountNo, csv, date };
            Boolean result = dal.save("customerPayments", arr);
            if (result)
            {
                hyperLinkTicket.Visible = true;
                Label1.Text = "Thank you for using this application. Now you can generate ticket. ";
            }
            else
            {
                Label1.Text = "Something went wrong please try latter";
            }
        }
    }
}