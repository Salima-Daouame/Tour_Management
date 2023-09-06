using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string firstName = boxFN.Text;
            string lastName = boxLN.Text;
            string email = boxemail.Text;
            string password = boxpassword.Text;

            // Check if a file was uploaded
            if (fileUploadControl.HasFile)
            {
                try
                {
                    // Get the file data
                    byte[] fileData = fileUploadControl.FileBytes;

                    // Connection string to your SQL Server database
                    string connectionString = ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString;

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        // Insert user data into the Users table, including the image data
                        string insertQuery = "INSERT INTO UserT (FN_user, LN_user, Photo_User, Password, Email) " +
                                             "VALUES (@FN_user, @LN_user, @Photo_User, @Password, @Email)";

                        using (SqlCommand command = new SqlCommand(insertQuery, connection))
                        {
                            command.Parameters.AddWithValue("@FN_user", firstName);
                            command.Parameters.AddWithValue("@LN_user", lastName);
                            command.Parameters.Add("@Photo_User", System.Data.SqlDbType.VarBinary, -1).Value = fileData; // Insert image data
                            command.Parameters.AddWithValue("@Password", password);
                            command.Parameters.AddWithValue("@Email", email);

                            int rowsAffected = command.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {
                                // Provide feedback to the user
                                Response.Write("Registration successful. You can now login.");
                                // Redirect to the login page
                                Response.Redirect("Login.aspx");
                            }
                            else
                            {
                                // Provide feedback to the user
                                Response.Write("Registration failed. Please try again later.");
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Provide feedback to the user
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
            else
            {
                // Provide feedback to the user
                Response.Write("Please select an image to upload.");
            }
        }


    }
}
