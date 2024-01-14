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
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch data from the database (replace with your actual connection and query)
                DataTable tourData = GetDataFromDatabase();

                // Bind the data to the Repeater control
                TourRepeater.DataSource = tourData;
                TourRepeater.DataBind();
            }

        }

        private DataTable GetDataFromDatabase()
        {
            // Write your database retrieval logic here (SqlConnection, SqlCommand, etc.)
            // Return a DataTable containing the data you want to display in the Repeater
            DataTable dataTable = new DataTable();

            // Replace the following lines with your actual database query
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Tour", connection))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(dataTable);
                    }
                }
            }

            return dataTable;
        }

        protected string GetImageFromBytes(object bytes)
        {
            if (bytes != null && bytes != DBNull.Value)
            {
                byte[] imageBytes = (byte[])bytes;
                string base64String = Convert.ToBase64String(imageBytes);
                return "data:image/jpeg;base64," + base64String;
            }
            return string.Empty;
        }

    }
}