using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Runtime.InteropServices.ComTypes;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class Tour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Tour", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }


        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            ClearForm();
            OpenPopup();
        }


        protected void BtnSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Tour (Title_tour, Description, StartDate, EndDate, Price, Days, Location, PicLocation) VALUES (@Title, @Description, @StartDate, @EndDate, @Price, @Days, @Location, @PicLocation)", con);
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@StartDate", DateTime.Parse(txtStartDate.Text));
                cmd.Parameters.AddWithValue("@EndDate", DateTime.Parse(txtEndDate.Text));
                cmd.Parameters.AddWithValue("@Price", float.Parse(txtPrice.Text));
                cmd.Parameters.AddWithValue("@Days", int.Parse(txtDays.Text));
                cmd.Parameters.AddWithValue("@Location", txtLocation.Text);
                cmd.Parameters.AddWithValue("@PicLocation", filePic.HasFile ? filePic.FileBytes : new byte[0]);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            BindGridView();
            ClosePopup();
            ClearForm();
        }

        protected void ClearForm()
        {
            txtTitle.Text = string.Empty;
            txtDescription.Text = string.Empty;
            txtStartDate.Text = string.Empty;
            txtEndDate.Text = string.Empty;
            txtPrice.Text = string.Empty;
            txtDays.Text = string.Empty;
            txtLocation.Text = string.Empty;
            filePic.Attributes.Clear();
        }

        protected void OpenPopup()
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "OpenPopup", "OpenPopup();", true);
        }

        protected void ClosePopup()
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ClosePopup", "ClosePopup();", true);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGridView();
        }


        // update row 
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Get the updated values using NewValues property
            string updatedTitle = e.NewValues["Title_tour"] as string;
            string updatedDescription = e.NewValues["Description"] as string;
            DateTime updatedStartDate = Convert.ToDateTime(e.NewValues["StartDate"]);
            DateTime updatedEndDate = Convert.ToDateTime(e.NewValues["EndDate"]);
            decimal updatedPrice = Convert.ToDecimal(e.NewValues["Price"]);
            int updatedDays = Convert.ToInt32(e.NewValues["Days"]);
            string updatedLocation = e.NewValues["Location"] as string;

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
            {
                
                string updateQuery = "UPDATE Tour SET Title_tour = @Title, Description = @Description, StartDate = @StartDate, EndDate = @EndDate, Price = @Price, Days = @Days, Location = @Location WHERE IdTour = @IdTour";
                SqlCommand cmd = new SqlCommand(updateQuery, connection);
                cmd.Parameters.AddWithValue("@Title", updatedTitle);
                cmd.Parameters.AddWithValue("@Description", updatedDescription);
                cmd.Parameters.AddWithValue("@StartDate", updatedStartDate);
                cmd.Parameters.AddWithValue("@EndDate", updatedEndDate);
                cmd.Parameters.AddWithValue("@Price", updatedPrice);
                cmd.Parameters.AddWithValue("@Days", updatedDays);
                cmd.Parameters.AddWithValue("@Location", updatedLocation);
                cmd.Parameters.AddWithValue("@IdTour", e.Keys["IdTour"]);

                connection.Open();
                cmd.ExecuteNonQuery();
                connection.Close();
            }



            // Exit edit mode
            GridView1.EditIndex = -1;

            // Rebind the GridView to reflect the changes
            BindGridView();
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Tour WHERE IdTour = @Id", con);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            BindGridView();
        }
    }
}
