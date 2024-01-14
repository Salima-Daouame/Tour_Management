using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindGridView2();
            }
        }

        protected void BindGridView2()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM UserT", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView4.DataSource = dt;
                GridView4.DataBind();
            }
        }



    }
}