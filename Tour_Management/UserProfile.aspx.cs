using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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


               
            if (!IsPostBack)
            {

                

                LoadTourTitles();
               LoadUserOrders(idUser);

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
          //TourList.Text = string.Empty;
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
            if (Session["IdUserT"] != null)
            {
                int userId = Convert.ToInt32(Session["IdUserT"]);

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO OrderT  (FirstName, LastName, TourName, NumPhone,IdUserT) VALUES (@FirstName, @LastName, @TourName, @NumPhone,@UserId)", con);
                    
                    cmd.Parameters.AddWithValue("@FirstName", txtLN.Text);
                    cmd.Parameters.AddWithValue("@LastName", txtFN.Text);
                    cmd.Parameters.AddWithValue("@TourName", TourList.SelectedValue); // Utilisez SelectedValue pour obtenir la valeur sélectionnée dans la liste déroulante.
                    cmd.Parameters.AddWithValue("@NumPhone", txtPhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@UserId", userId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                // Afficher un message de succès
                string script = "alert('Commande effectuée avec succès !');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessScript", script, true);

                ClosePopup();
                ClearForm();
            }
            else
            {
                // Gérer le cas où l'ID de l'utilisateur n'est pas défini dans la session
                string script = "alert('Erreur : ID utilisateur non trouvé dans la session.');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorScript", script, true);
            }
        }


        protected void LoadTourTitles()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Title_tour FROM Tour";
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    ListItem item = new ListItem(reader["Title_tour"].ToString());
                    TourList.Items.Add(item);
                }

                reader.Close();
            }
        }


        protected void LoadUserOrders(int idUser)
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["tourmanagement"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionstring))
            {
                string query = "SELECT  O.IdOrderT,  O.FirstName, O.LastName,O.TourName,  O.NumPhone FROM" +
                    "   OrderT O JOIN  UserT U ON O.IdUserT = U.IdUserT WHERE U.IdUserT = @UserId;";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@UserId", idUser);
                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                GridView2.DataSource = dt;
                GridView2.DataBind();
            
             }
        }


        protected void btnConfirmCancel_Click(object sender, EventArgs e)
        {
            if (Session["IdUserT"] != null)
            {
                int userId = Convert.ToInt32(Session["IdUserT"]);
                string firstName = hdnFirstName.Value;
                string lastName = hdnLastName.Value;
                DateTime timen = DateTime.Now;
                string cancellationCause = txtCancelCause.Text;

               

                string connectionString = ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string insertQuery = "INSERT INTO Message (Cause, NomUser, PrenomUser,IdUserT,TimeN) VALUES (@Cause, @NomUser, @PrenomUser,@IdUserT,@TimeN)";
                    using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                    {
                        cmd.Parameters.AddWithValue("@Cause", cancellationCause);
                        cmd.Parameters.AddWithValue("@NomUser", lastName);
                        cmd.Parameters.AddWithValue("@PrenomUser", firstName);
                        cmd.Parameters.AddWithValue("@TimeN", timen);
                        cmd.Parameters.AddWithValue("@IdUserT", userId);
                        cmd.ExecuteNonQuery();
                    }
                }

                // Example: Send an alert message
                string script = "alert('Order cancellation cause: " + cancellationCause + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessScript", script, true);

                CloseCancellationPopup();
            }
            else
            {
                Console.Write("errreur;");
            }
        }


        protected void CloseCancellationPopup()
        {
            ClientScript.RegisterStartupScript(this.GetType(), "CloseCancellationPopup", "CloseCancellationPopup();", true);
        }


    }
}