using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Tour_Management
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        //new code

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string email = txtemail.Text.Trim();
            string password = txtpassword.Text.Trim();

            // Check if the user is an admin (you need to implement this logic)
            if (email == "admin@gmail.com" && password == "admin")
            {
                Response.Redirect("Dashboard.aspx");
            }

            //
            string connectionString = ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString;
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                string query = "SELECT * FROM UserT WHERE Email = @email AND Password = @passWord";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@passWord", txtpassword.Text.Trim());

                SqlDataReader reader = sqlcmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    Session["IdUserT"] = reader["IdUserT"].ToString();
                    Session["FN_user"] = reader["FN_user"].ToString();
                    Session["LN_user"] = reader["LN_user"].ToString();
                    reader.Close();
                    Response.Redirect("UserProfile.aspx");
                    Response.End();
                }
            }

        }

       

        //new code

    }
}