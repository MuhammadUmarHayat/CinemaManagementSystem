using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] sar = (string[])Session["sar"];

            string name = sar[0];
            string cnic = sar[1];
            string mobileNo = sar[2];
            string theatre = sar[3];
            string ShowTime = sar[4];
            string ShowDate = sar[5];
            string movieName = sar[6];
            string TicketType = sar[7];
            string price = sar[8];
            string totalSeats = sar[9];
            string isMember = sar[10];
            string seatNumbers = sar[11];
            string TotalPayment = sar[12];
            string ReservationDate = sar[13];

            lblTotalPayment.Text = TotalPayment;
            lblName.Text = name;
            lblCNIC.Text = cnic;

            int[] seats = (int[])Session["tempbooking"];
            String seatbooked = "";
            int i = 0;
            for (i = 0; i < 49; i++)
            {
                if (seats[i] == 1)
                {
                    seatbooked = seatbooked + " " + (i + 1);
                }
            }
            Label2.Text = "You Have Booked Seat " + seatbooked;


        }

        private void Save(string name, string cnic, string mobileNo, string theatre, string ShowTime, string ShowDate, string movieName, string TicketType, string price, string totalSeats, string isMember, string seatNumbers, string TotalPayment, string ReservationDate)
        {

            string status = "paid";

            if (Session["tempbooking"] != null)
            {


                int[] seats = (int[])Session["tempbooking"];
                String seatbooked = "";
                int i = 0;
                for (i = 0; i < 49; i++)
                {
                    if (seats[i] == 1)
                    {
                        seatbooked = seatbooked + " " + (i + 1);
                    }
                }
                Label2.Text = "You Have Booked Seat " + seatbooked;
                seatNumbers = seatbooked;
            }

            DAL dal = new DAL();
            // 
            string[] arr = { name, cnic, mobileNo, theatre, ShowTime, ShowDate, movieName, TicketType, price, totalSeats, isMember, seatNumbers, TotalPayment, ReservationDate, status };
            Boolean result = dal.save("Ticket_Reservations", arr);
            if (result)
            {
                // Label1.Text = "You Have Booked Seat " + seatNumbers;
            }
            else
            {
                Label2.Text = "Something went wrong please try latter";
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
                Label2.Text = "Thank you for using this application. Now you can generate ticket. ";
            }
            else
            {
                Label2.Text = "Something went wrong please try latter";
            }


            string[] sar = (string[])Session["sar"];


            string mobileNo = sar[2];
            string theatre = sar[3];
            string ShowTime = sar[4];
            string ShowDate = sar[5];
            string movieName = sar[6];
            string TicketType = sar[7];
            string price = sar[8];
            string totalSeats = sar[9];
            string isMember = sar[10];
            string seatNumbers = sar[11];
            string TotalPayment = sar[12];
            string ReservationDate = sar[13];


            Save(name, cnic, mobileNo, theatre, ShowTime, ShowDate, movieName, TicketType, price, totalSeats, isMember, seatNumbers, TotalPayment, ReservationDate);

            hyperLinkTicket.Visible = true;
        }
    }
}