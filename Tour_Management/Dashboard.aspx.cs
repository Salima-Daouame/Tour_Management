using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CalcNumberTour();
        }


        protected void CalcNumberTour()
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("Select count(*) From Tour", con1);
            var count1 = cmd1.ExecuteScalar();
            Label1.Text = count1.ToString();
            con1.Close();

        }


    }
}