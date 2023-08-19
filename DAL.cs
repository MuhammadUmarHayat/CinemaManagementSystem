using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Cinema_Management_System
{
    public class DAL
    {
        public static string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=SeemabFDB;Integrated Security=True";
        public Boolean save(string tableName, string[] values)
        {
            SqlConnection con = new SqlConnection(DAL.connectionString);
            string query = "";
            switch (tableName)
            {
                case "users":
                    query = "insert into users(email,name,password,mobile,cnic,address,gender,status)  values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "','" + values[6] + "','" + values[7] + "')";
                    break;
                case "movies":
                    query = "insert into movies(title,category,description,cast,releasingDate,status,link,rank) values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "','" + values[6] + "','" + values[7] + "')";
                    break;
                case "categories":
                    query = "insert into categories(category,description,link) values('" + values[0] + "','" + values[1] + "','" + values[2] + "')";
                    break;
                case "shows":
                    query = "insert into shows(movieTitle,theatre,availebleDate,availableTime,seats,status) values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "')";
                    break;
                case "tickets":
                    query = "insert into tickets(type,price,status) values('" + values[0] + "','" + values[1] + "','" + values[2] + "')";
                    break;
                case "Ticket_Reservations":
                    query = "insert into Ticket_Reservations(name,cnic,mobileNo,theatre,ShowTime,ShowDate,movieName,TicketType,price,totalSeats,isMember,seatNumbers,TotalPayment,ReservationDate,status,isTicketGenerated) values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "','" + values[6] + "','" + values[7] + "','" + values[8] + "','" + values[9] + "','" + values[10] + "','" + values[11] + "','" + values[12] + "','" + values[13] + "','" + values[14] + "','no')";
                    break;
                case "customerPayments":
                    query = "insert into customerPayments(name,cnic,totalPayment,method,bankName,accountNo,csv,date,paymentType)  values('" + values[0] + "','" + values[1] + "','" + values[2] + "','" + values[3] + "','" + values[4] + "','" + values[5] + "','" + values[6] + "','" + values[7] + "','ticket')";
                    break;
                default:
                    return false;

            }
            SqlCommand sqlCmd = new SqlCommand(query, con);
            con.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            con.Close();
            return true;
        }

        public DataTable show(string tableName)
        {
            SqlConnection con = new SqlConnection(DAL.connectionString);
            string query = "";
            query = "select * from " + tableName + "";
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            return dt;


        }
        public DataTable show(string tableName, string field1, string field2)
        {
            SqlConnection con = new SqlConnection(DAL.connectionString);
            string query = "";//select * from users where userid='ali'
            query = "select * from " + tableName + " where " + field1 + " = '" + field2 + "' ";
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            return dt;


        }

        public Boolean delete(string tableName, string tblID, string id)
        {
            SqlConnection con = new SqlConnection(DAL.connectionString);
            string query = "";
            /// delete from users where userid='ali1'
            query = "delete from " + tableName + " where " + tblID + "=" + id + "";
            SqlCommand sqlCmd = new SqlCommand(query, con);
            con.Open();
            sqlCmd.ExecuteNonQuery();// delete into db
            con.Close();
            return true;
        }

        public string TotalMembers()
        {
            string totalMembers = "";
            string query = "select count(*) from users";
            SqlConnection con = new SqlConnection(DAL.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value

            return totalMembers;



        }
        public string TotalShows()
        {
            string totalMembers = "";
            string query = "select count(*) from Shows";
            SqlConnection con = new SqlConnection(DAL.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value

            return totalMembers;



        }
        public string TotalSoldTickets()
        {
            string totalMembers = "";
            string query = "select count(*) from Ticket_Reservations";
            SqlConnection con = new SqlConnection(DAL.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value

            return totalMembers;



        }
        public string TotalIncome()
        {
            string totalMembers = "";
            string query = "select sum(price) from Ticket_Reservations";
            SqlConnection con = new SqlConnection(DAL.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            totalMembers = cmd.ExecuteScalar().ToString();//return a single value

            return totalMembers;



        }

        public Boolean login(string email, string password)
        {
            SqlConnection con = new SqlConnection(DAL.connectionString);
            string query = "";
            query = "select * from users where email='" + email + "' and password='" + password + "'";
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            return false;
        }



    }
}