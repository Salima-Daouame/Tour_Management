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
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IdUserT"] != null && Session["FN_user"] != null && Session["LN_user"] != null)
            {
                nomPrenom.Text = Session["LN_user"].ToString() + " " + Session["FN_user"].ToString();

                // new code 
                int idUser = Convert.ToInt32(Session["IdUserT"]);
                ViewState["IdUserT"] = idUser;
                byte[] imageData = null;
                string queryString = "SELECT Photo_User FROM UserT WHERE IdUserT = @IdUserT";

                string cs1 = ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(cs1))
                {
                    SqlCommand command = new SqlCommand(queryString, connection);
                    command.Parameters.AddWithValue("@IdUserT", idUser);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        if (reader["Photo_User"] != DBNull.Value)
                        {
                            imageData = (byte[])reader["Photo_User"];
                        }
                    }

                    reader.Close();
                }

                if (imageData != null && imageData.Length > 0)
                {
                    string base64Image = Convert.ToBase64String(imageData);
                    imgUser.ImageUrl = "data:image/jpeg;base64," + base64Image;
                }
            }
        }


        protected void MakeOrder_Click(object sender, EventArgs e)
        {

           ClearForm();
            OpenPopup();
        }

        protected void ClearForm()
        {
            txtLN.Text = string.Empty;
            txtFN.Text = string.Empty;
            TourList.Text = string.Empty;
            txtPhoneNumber.Text = string.Empty;
           
        }

        protected void OpenPopup()
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "OpenPopup", "OpenPopup();", true);
        }

        protected void ClosePopup()
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ClosePopup", "ClosePopup();", true);
        }

        protected void BtnSave1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO OrderT (FirstName, LastName, TourName, NumPhone) VALUES (@FirstName, @LastName, @TourName, @NumPhone)", con);
                cmd.Parameters.AddWithValue("@FirstName", txtLN.Text);
                cmd.Parameters.AddWithValue("@LastName", txtFN.Text);
                cmd.Parameters.AddWithValue("@TourName", TourList.Text);
                cmd.Parameters.AddWithValue("@NumPhone", txtPhoneNumber.Text);
               

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

          //  BindGridView();
            ClosePopup();
            ClearForm();
            
        }
    }
}