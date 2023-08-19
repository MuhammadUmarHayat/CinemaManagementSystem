using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema_Management_System
{
    public partial class Admin_Book_Tickets : System.Web.UI.Page
    {
        static int[] bookedseat;
        static int[] tempbookseat;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }

            if (!IsPostBack)
            {

                bookedseat = new int[49];
                tempbookseat = new int[49];

                for (int i = 0; i < 49; i++)
                {
                    tempbookseat[i] = 0;
                }


                alreadybooked();
                bindTheatre();
            }



        }

        private void alreadybooked()
        {
            DAL dal = new DAL();
            DataTable dt = dal.show("Seatstatus");


            int rows = dt.Rows.Count;
            int i = 0;
            while (i < rows)
            {
                String status;
                status = dt.Rows[i]["status"].ToString();
                if (status == "B")
                {
                    bookedseat[i] = 1;
                    if (i == 0)
                    {
                        Button1.BackColor = System.Drawing.Color.OrangeRed;
                        Button1.Enabled = false;
                    }
                    if (i == 1)
                    {
                        Button2.BackColor = System.Drawing.Color.OrangeRed;
                        Button2.Enabled = false;
                    }
                    if (i == 2)
                    {
                        Button3.BackColor = System.Drawing.Color.OrangeRed;
                        Button3.Enabled = false;
                    }
                    if (i == 3)
                    {
                        Button4.BackColor = System.Drawing.Color.OrangeRed;
                        Button4.Enabled = false;
                    }
                    if (i == 4)
                    {
                        Button5.BackColor = System.Drawing.Color.OrangeRed;
                        Button5.Enabled = false;
                    }
                    if (i == 5)
                    {
                        Button6.BackColor = System.Drawing.Color.OrangeRed;
                        Button6.Enabled = false;
                    }
                    if (i == 6)
                    {
                        Button7.BackColor = System.Drawing.Color.OrangeRed;
                        Button7.Enabled = false;
                    }
                    if (i == 7)
                    {
                        Button8.BackColor = System.Drawing.Color.OrangeRed;
                        Button8.Enabled = false;
                    }
                    if (i == 8)
                    {
                        Button9.BackColor = System.Drawing.Color.OrangeRed;
                        Button9.Enabled = false;
                    }
                    if (i == 9)
                    {
                        Button10.BackColor = System.Drawing.Color.OrangeRed;
                        Button10.Enabled = false;
                    }
                    if (i == 10)
                    {
                        Button11.BackColor = System.Drawing.Color.OrangeRed;
                        Button11.Enabled = false;
                    }
                    if (i == 11)
                    {
                        Button12.BackColor = System.Drawing.Color.OrangeRed;
                        Button12.Enabled = false;
                    }
                    if (i == 12)
                    {
                        Button13.BackColor = System.Drawing.Color.OrangeRed;
                        Button13.Enabled = false;
                    }
                    if (i == 13)
                    {
                        Button14.BackColor = System.Drawing.Color.OrangeRed;
                        Button14.Enabled = false;

                    }
                    if (i == 14)
                    {
                        Button15.BackColor = System.Drawing.Color.OrangeRed;
                        Button15.Enabled = false;

                    }
                    if (i == 15)
                    {

                        Button16.BackColor = System.Drawing.Color.OrangeRed;
                        Button16.Enabled = false;
                    }

                    if (i == 16)
                    {
                        Button17.BackColor = System.Drawing.Color.OrangeRed;
                        Button17.Enabled = false;
                    }
                    if (i == 17)
                    {
                        Button18.BackColor = System.Drawing.Color.OrangeRed;
                        Button18.Enabled = false;
                    }
                    if (i == 18)
                    {
                        Button19.BackColor = System.Drawing.Color.OrangeRed;
                        Button19.Enabled = false;
                    }
                    if (i == 19)
                    {
                        Button20.BackColor = System.Drawing.Color.OrangeRed;
                        Button20.Enabled = false;
                    }
                    if (i == 20)
                    {
                        Button21.BackColor = System.Drawing.Color.OrangeRed;
                        Button21.Enabled = false;
                    }
                    if (i == 21)
                    {
                        Button22.BackColor = System.Drawing.Color.OrangeRed;
                        Button22.Enabled = false;
                    }
                    if (i == 22)
                    {
                        Button23.BackColor = System.Drawing.Color.OrangeRed;
                        Button23.Enabled = false;
                    }
                    if (i == 23)
                    {
                        Button24.BackColor = System.Drawing.Color.OrangeRed;
                        Button24.Enabled = false;

                    }
                    if (i == 24)
                    {
                        Button25.BackColor = System.Drawing.Color.OrangeRed;
                        Button25.Enabled = false;

                    }
                    if (i == 25)
                    {

                        Button26.BackColor = System.Drawing.Color.OrangeRed;
                        Button26.Enabled = false;
                    }

                    if (i == 26)
                    {
                        Button27.BackColor = System.Drawing.Color.OrangeRed;
                        Button27.Enabled = false;

                    }
                    if (i == 27)
                    {

                        Button28.BackColor = System.Drawing.Color.OrangeRed;
                        Button28.Enabled = false;
                    }
                    if (i == 28)
                    {

                        Button29.BackColor = System.Drawing.Color.OrangeRed;
                        Button29.Enabled = false;
                    }
                    if (i == 29)
                    {

                        Button30.BackColor = System.Drawing.Color.OrangeRed;
                        Button30.Enabled = false;
                    }
                    if (i == 30)
                    {

                        Button31.BackColor = System.Drawing.Color.OrangeRed;
                        Button31.Enabled = false;
                    }
                    if (i == 31)
                    {

                        Button32.BackColor = System.Drawing.Color.OrangeRed;
                        Button32.Enabled = false;
                    }
                    if (i == 32)
                    {

                        Button33.BackColor = System.Drawing.Color.OrangeRed;
                        Button33.Enabled = false;
                    }
                    if (i == 33)
                    {

                        Button34.BackColor = System.Drawing.Color.OrangeRed;
                        Button34.Enabled = false;
                    }
                    if (i == 34)
                    {

                        Button35.BackColor = System.Drawing.Color.OrangeRed;
                        Button35.Enabled = false;
                    }
                    if (i == 35)
                    {

                        Button36.BackColor = System.Drawing.Color.OrangeRed;
                        Button36.Enabled = false;
                    }
                    if (i == 36)
                    {

                        Button37.BackColor = System.Drawing.Color.OrangeRed;
                        Button37.Enabled = false;
                    }
                    if (i == 37)
                    {

                        Button38.BackColor = System.Drawing.Color.OrangeRed;
                        Button38.Enabled = false;
                    }
                    if (i == 38)
                    {

                        Button39.BackColor = System.Drawing.Color.OrangeRed;
                        Button39.Enabled = false;
                    }
                    if (i == 39)
                    {

                        Button40.BackColor = System.Drawing.Color.OrangeRed;
                        Button40.Enabled = false;
                    }
                    if (i == 40)
                    {

                        Button41.BackColor = System.Drawing.Color.OrangeRed;
                        Button41.Enabled = false;
                    }
                    if (i == 41)
                    {

                        Button42.BackColor = System.Drawing.Color.OrangeRed;
                        Button42.Enabled = false;
                    }
                    if (i == 42)
                    {

                        Button43.BackColor = System.Drawing.Color.OrangeRed;
                        Button43.Enabled = false;
                    }
                    if (i == 43)
                    {

                        Button44.BackColor = System.Drawing.Color.OrangeRed;
                        Button44.Enabled = false;
                    }
                    if (i == 44)
                    {

                        Button45.BackColor = System.Drawing.Color.OrangeRed;
                        Button45.Enabled = false;
                    }
                    if (i == 45)
                    {

                        Button46.BackColor = System.Drawing.Color.OrangeRed;
                        Button46.Enabled = false;
                    }
                    if (i == 46)
                    {

                        Button47.BackColor = System.Drawing.Color.OrangeRed;
                        Button47.Enabled = false;
                    }
                    if (i == 47)
                    {

                        Button48.BackColor = System.Drawing.Color.OrangeRed;
                        Button48.Enabled = false;
                    }
                    if (i == 48)
                    {

                        Button49.BackColor = System.Drawing.Color.OrangeRed;
                        Button49.Enabled = false;
                    }






                }
                if (status == "A")
                {
                    bookedseat[i] = 0;
                    if (i == 0)
                    {
                        Button1.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 1)
                    {
                        Button2.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 2)
                    {
                        Button3.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 3)
                    {
                        Button4.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 4)
                    {
                        Button5.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 5)
                    {
                        Button6.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 6)
                    {
                        Button7.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 7)
                    {
                        Button8.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 8)
                    {
                        Button9.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 9)
                    {
                        Button10.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 10)
                    {
                        Button11.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 11)
                    {
                        Button12.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 12)
                    {
                        Button13.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 13)
                    {
                        Button14.BackColor = System.Drawing.Color.LightGray;

                    }
                    if (i == 14)
                    {
                        Button15.BackColor = System.Drawing.Color.LightGray;

                    }
                    if (i == 15)
                    {

                        Button16.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 16)
                    {
                        Button17.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 17)
                    {
                        Button18.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 18)
                    {
                        Button19.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 19)
                    {
                        Button20.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 20)
                    {
                        Button21.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 21)
                    {
                        Button22.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 22)
                    {
                        Button23.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 23)
                    {
                        Button24.BackColor = System.Drawing.Color.LightGray;

                    }
                    if (i == 24)
                    {
                        Button25.BackColor = System.Drawing.Color.LightGray;

                    }
                    if (i == 25)
                    {

                        Button26.BackColor = System.Drawing.Color.LightGray;
                    }

                    if (i == 26)
                    {
                        Button27.BackColor = System.Drawing.Color.LightGray;

                    }
                    if (i == 27)
                    {

                        Button28.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 28)
                    {

                        Button29.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 29)
                    {

                        Button30.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 30)
                    {

                        Button31.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 31)
                    {

                        Button32.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 32)
                    {

                        Button33.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 33)
                    {

                        Button34.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 34)
                    {

                        Button35.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 35)
                    {

                        Button36.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 36)
                    {

                        Button37.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 37)
                    {

                        Button38.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 38)
                    {

                        Button39.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 39)
                    {

                        Button40.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 40)
                    {

                        Button41.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 41)
                    {

                        Button42.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 42)
                    {

                        Button43.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 43)
                    {

                        Button44.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 44)
                    {

                        Button45.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 45)
                    {

                        Button46.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 46)
                    {

                        Button47.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 47)
                    {

                        Button48.BackColor = System.Drawing.Color.LightGray;
                    }
                    if (i == 48)
                    {

                        Button49.BackColor = System.Drawing.Color.LightGray;
                    }
                }
                i++;
            }
        }

        private void bindTheatre()
        {
            DAL dal = new DAL();
            DataTable dt = dal.show("shows");
            if (dt.Rows.Count > 0)
            { // bind domain with the dropdownlist
                ddlTheatre.DataTextField = "theatre";
                ddlTheatre.DataValueField = "theatre";
                ddlTheatre.DataSource = dt;
                ddlTheatre.DataBind();
            }


        }







        protected void ddlMovieTypes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlTheatre_SelectedIndexChanged(object sender, EventArgs e)
        {



        }

        protected void btn1_Click(object sender, EventArgs e)
        { //bind available time with drop down 
            DAL dal = new DAL();
            string theatre = ddlTheatre.Text;
            DataTable dt = dal.show("shows", "theatre", theatre);
            if (dt.Rows.Count > 0)
            {
                string movie = dt.Rows[0]["movieTitle"].ToString();
                lblMovie.Text = movie;

                ddlTime.DataTextField = "availableTime";
                ddlTime.DataValueField = "availableTime";
                ddlTime.DataSource = dt;
                ddlTime.DataBind();
            }


        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            string ticketType = ddlticketTypes.SelectedValue.ToString();
            DAL dal = new DAL();
            string theatre = ddlTheatre.Text;
            DataTable dt = dal.show("tickets", "type", ticketType);
            if (dt.Rows.Count > 0)
            {
                string price = dt.Rows[0]["price"].ToString();
                lblTicketPrice.Text = price;
            }
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            string price = lblTicketPrice.Text;
            string seats = txtSeats.Text;
            int total = Convert.ToInt32(price) * Convert.ToInt32(seats);
            lblTotal.Text = total.ToString();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (tempbookseat[0] == 0)
            {
                Button1.BackColor = System.Drawing.Color.LightGreen;//book
                tempbookseat[0] = 1;//book

            }
            else
            {
                Button1.BackColor = System.Drawing.Color.LightGray;//unbook
                tempbookseat[0] = 0;//unbook
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (tempbookseat[1] == 0)
            {
                Button2.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[1] = 1;

            }
            else
            {
                Button2.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[1] = 0;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (tempbookseat[2] == 0)
            {
                Button3.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[2] = 1;

            }
            else
            {
                Button3.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[2] = 0;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (tempbookseat[3] == 0)
            {
                Button4.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[3] = 1;

            }
            else
            {
                Button4.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[3] = 0;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (tempbookseat[4] == 0)
            {
                Button5.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[4] = 1;

            }
            else
            {
                Button5.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[4] = 0;
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (tempbookseat[5] == 0)
            {
                Button6.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[5] = 1;

            }
            else
            {
                Button6.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[5] = 0;
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (tempbookseat[6] == 0)
            {
                Button7.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[6] = 1;

            }
            else
            {
                Button7.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[6] = 0;
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (tempbookseat[7] == 0)
            {
                Button8.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[7] = 1;

            }
            else
            {
                Button8.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[7] = 0;
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (tempbookseat[8] == 0)
            {
                Button9.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[8] = 1;

            }
            else
            {
                Button9.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[8] = 0;
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (tempbookseat[9] == 0)
            {
                Button10.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[9] = 1;

            }
            else
            {
                Button10.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[9] = 0;
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            if (tempbookseat[10] == 0)
            {
                Button11.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[10] = 1;

            }
            else
            {
                Button11.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[10] = 0;
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if (tempbookseat[11] == 0)
            {
                Button12.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[11] = 1;

            }
            else
            {
                Button12.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[11] = 0;
            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            if (tempbookseat[12] == 0)
            {
                Button13.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[12] = 1;

            }
            else
            {
                Button13.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[12] = 0;
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            if (tempbookseat[13] == 0)
            {
                Button14.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[13] = 1;

            }
            else
            {
                Button14.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[13] = 0;
            }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            if (tempbookseat[14] == 0)
            {
                Button15.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[14] = 1;

            }
            else
            {
                Button15.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[14] = 0;
            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            if (tempbookseat[15] == 0)
            {
                Button16.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[15] = 1;

            }
            else
            {
                Button16.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[15] = 0;
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            if (tempbookseat[16] == 0)
            {
                Button17.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[16] = 1;

            }
            else
            {
                Button17.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[16] = 0;
            }
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            if (tempbookseat[17] == 0)
            {
                Button18.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[17] = 1;

            }
            else
            {
                Button18.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[17] = 0;
            }
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            if (tempbookseat[18] == 0)
            {
                Button19.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[18] = 1;

            }
            else
            {
                Button19.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[18] = 0;
            }
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            if (tempbookseat[19] == 0)
            {
                Button20.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[19] = 1;

            }
            else
            {
                Button20.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[19] = 0;
            }
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            if (tempbookseat[20] == 0)
            {
                Button21.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[20] = 1;

            }
            else
            {
                Button21.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[20] = 0;
            }
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            if (tempbookseat[21] == 0)
            {
                Button22.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[21] = 1;

            }
            else
            {
                Button22.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[21] = 0;
            }
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            if (tempbookseat[22] == 0)
            {
                Button23.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[22] = 1;

            }
            else
            {
                Button23.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[22] = 0;
            }
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            if (tempbookseat[23] == 0)
            {
                Button24.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[23] = 1;

            }
            else
            {
                Button24.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[23] = 0;
            }
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            if (tempbookseat[24] == 0)
            {
                Button25.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[24] = 1;

            }
            else
            {
                Button25.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[24] = 0;
            }
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            if (tempbookseat[25] == 0)
            {
                Button26.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[25] = 1;

            }
            else
            {
                Button26.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[25] = 0;
            }
        }

        protected void Button27_Click(object sender, EventArgs e)
        {
            if (tempbookseat[26] == 0)
            {
                Button27.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[26] = 1;

            }
            else
            {
                Button27.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[26] = 0;
            }
        }

        protected void Button28_Click(object sender, EventArgs e)
        {
            if (tempbookseat[27] == 0)
            {
                Button28.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[27] = 1;

            }
            else
            {
                Button28.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[27] = 0;
            }
        }

        protected void Button29_Click(object sender, EventArgs e)
        {
            if (tempbookseat[28] == 0)
            {
                Button29.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[28] = 1;

            }
            else
            {
                Button29.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[28] = 0;
            }
        }

        protected void Button30_Click(object sender, EventArgs e)
        {
            if (tempbookseat[29] == 0)
            {
                Button30.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[29] = 1;

            }
            else
            {
                Button30.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[29] = 0;
            }
        }

        protected void Button31_Click(object sender, EventArgs e)
        {
            if (tempbookseat[30] == 0)
            {
                Button31.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[30] = 1;

            }
            else
            {
                Button31.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[30] = 0;
            }
        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            if (tempbookseat[31] == 0)
            {
                Button32.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[31] = 1;

            }
            else
            {
                Button32.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[31] = 0;
            }
        }

        protected void Button33_Click(object sender, EventArgs e)
        {
            if (tempbookseat[32] == 0)
            {
                Button33.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[32] = 1;

            }
            else
            {
                Button33.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[32] = 0;
            }
        }

        protected void Button34_Click(object sender, EventArgs e)
        {
            if (tempbookseat[33] == 0)
            {
                Button34.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[33] = 1;

            }
            else
            {
                Button34.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[33] = 0;
            }
        }

        protected void Button35_Click(object sender, EventArgs e)
        {
            if (tempbookseat[34] == 0)
            {
                Button35.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[34] = 1;

            }
            else
            {
                Button35.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[34] = 0;
            }
        }

        protected void Button36_Click(object sender, EventArgs e)
        {
            if (tempbookseat[35] == 0)
            {
                Button36.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[35] = 1;

            }
            else
            {
                Button36.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[35] = 0;
            }
        }

        protected void Button37_Click(object sender, EventArgs e)
        {
            if (tempbookseat[36] == 0)
            {
                Button37.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[36] = 1;

            }
            else
            {
                Button37.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[36] = 0;
            }
        }

        protected void Button38_Click(object sender, EventArgs e)
        {
            if (tempbookseat[37] == 0)
            {
                Button38.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[37] = 1;

            }
            else
            {
                Button38.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[37] = 0;
            }
        }

        protected void Button39_Click(object sender, EventArgs e)
        {
            if (tempbookseat[38] == 0)
            {
                Button39.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[38] = 1;

            }
            else
            {
                Button39.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[36] = 0;
            }
        }

        protected void Button40_Click(object sender, EventArgs e)
        {
            if (tempbookseat[39] == 0)
            {
                Button40.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[39] = 1;

            }
            else
            {
                Button40.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[39] = 0;
            }
        }

        protected void Button41_Click(object sender, EventArgs e)
        {
            if (tempbookseat[40] == 0)
            {
                Button41.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[40] = 1;

            }
            else
            {
                Button41.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[40] = 0;
            }
        }

        protected void Button42_Click(object sender, EventArgs e)
        {
            if (tempbookseat[41] == 0)
            {
                Button42.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[41] = 1;

            }
            else
            {
                Button42.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[41] = 0;
            }
        }

        protected void Button43_Click(object sender, EventArgs e)
        {
            if (tempbookseat[42] == 0)
            {
                Button43.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[42] = 1;

            }
            else
            {
                Button43.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[42] = 0;
            }
        }

        protected void Button44_Click(object sender, EventArgs e)
        {
            if (tempbookseat[43] == 0)
            {
                Button44.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[43] = 1;

            }
            else
            {
                Button44.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[43] = 0;
            }
        }

        protected void Button45_Click(object sender, EventArgs e)
        {
            if (tempbookseat[44] == 0)
            {
                Button45.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[44] = 1;

            }
            else
            {
                Button45.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[44] = 0;
            }
        }

        protected void Button46_Click(object sender, EventArgs e)
        {
            if (tempbookseat[45] == 0)
            {
                Button46.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[45] = 1;

            }
            else
            {
                Button46.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[45] = 0;
            }
        }

        protected void Button47_Click(object sender, EventArgs e)
        {
            if (tempbookseat[46] == 0)
            {
                Button47.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[46] = 1;

            }
            else
            {
                Button47.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[46] = 0;
            }
        }

        protected void Button48_Click(object sender, EventArgs e)
        {
            if (tempbookseat[47] == 0)
            {
                Button48.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[47] = 1;

            }
            else
            {
                Button48.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[47] = 0;
            }
        }

        protected void Button49_Click(object sender, EventArgs e)
        {
            if (tempbookseat[48] == 0)
            {
                Button49.BackColor = System.Drawing.Color.LightGreen;
                tempbookseat[48] = 1;

            }
            else
            {
                Button49.BackColor = System.Drawing.Color.LightGray;
                tempbookseat[48] = 0;
            }
        }

        protected void btnBookNow_Click(object sender, EventArgs e)
        {
            //book now
            Session["tempbooking"] = tempbookseat;
            //int NoOfSeats = tempbookseat.Length;
            int seats = Convert.ToInt32(txtSeats.Text);
            //if (NoOfSeats.Equals(seats))
            //{


            int i = 0;
            for (i = 0; i < 49; i++)
            {
                if (tempbookseat[i] == 1)
                {

                    String updatedata = "Update SeatStatus set status='B' where seatno=" + (i + 1);
                    SqlConnection con = new SqlConnection(DAL.connectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = updatedata;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

            }

            Session["tempbooking"] = tempbookseat;
            Save();

            //}
            //    else
            //    {

            //        Response.Write("Total seats dose not match with seats you have booked !");
            //    }
        }

        private void Save()
        {
            string name = txtName.Text;
            string cnic = txtCNIC.Text;
            string mobileNo = txtMob.Text;
            string theatre = ddlTheatre.Text;
            string ShowTime = ddlTime.Text;
            string ShowDate = lblShowDate.Text;
            string movieName = lblMovie.Text;
            string TicketType = ddlticketTypes.Text;
            string price = lblTicketPrice.Text;
            string totalSeats = txtSeats.Text;
            string isMember = "no";
            string seatNumbers = "";
            string TotalPayment = lblTotal.Text;
            string ReservationDate = DateTime.Now.ToString();

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
                Label1.Text = "You Have Booked Seat " + seatbooked;
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
                Label1.Text = "Something went wrong please try latter";
            }

        }





        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblShowDate.Text = Calendar1.SelectedDate.ToString();
        }
    }
}