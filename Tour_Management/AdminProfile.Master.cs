using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class AdminProfile : System.Web.UI.MasterPage
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            
            CalcNumberNotification();
            BindNotifications();
        }

        protected void CalcNumberNotification()
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("Select count(*) From Message", con1);
            var count1 = cmd1.ExecuteScalar();
            LabelC.Text = count1.ToString();
            con1.Close();

        }
      
       

        protected string CalculateTimeSent(object timeN)
        {
            // Calculate the time of sending the notification
            DateTime sentTime = Convert.ToDateTime(timeN);
            DateTime currentTime = DateTime.Now;

            TimeSpan timeDifference = currentTime - sentTime;

            if (timeDifference.TotalMinutes < 1)
            {
                return "Just now";
            }
            else if (timeDifference.TotalMinutes < 60)
            {
                return $"{(int)timeDifference.TotalMinutes} minutes ago";
            }
            else if (timeDifference.TotalHours < 24)
            {
                return $"{(int)timeDifference.TotalHours} hours ago";
            }
            else
            {
                return sentTime.ToString("MMM dd, yyyy h:mm tt");
            }
        }

        private void BindNotifications()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT M.Cause, U.FN_user, U.LN_user, U.Photo_User, M.TimeN " +
                               "FROM Message M " +
                               "INNER JOIN UserT U ON M.IdUserT = U.IdUserT";

                SqlCommand command = new SqlCommand(query, connection);
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    NotificationRepeater.DataSource = reader;
                    NotificationRepeater.DataBind();
                }
            }
        }

        protected string GetFullUserName(string firstName, string lastName)
        {
            
            return $"{firstName} {lastName}";
        }


        protected void Logout_Click(object sender, EventArgs e)
        {
            // Rediriger vers la page de connexion (Login.aspx)
            Response.Redirect("Login.aspx");
        }

    }
}