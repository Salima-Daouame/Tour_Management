using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView1();

        }

        protected void BindGridView1()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM OrderT", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView3.DataSource = dt;
                GridView3.DataBind();
            }
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int idT = Convert.ToInt32(GridView3.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM OrderT WHERE IdOrderT = @Id", con);
                cmd.Parameters.AddWithValue("@Id", idT);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            BindGridView1();
        }
    }
}