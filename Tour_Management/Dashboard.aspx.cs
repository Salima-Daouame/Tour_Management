using System;
using System.Configuration;
using System.Data.SqlClient;


namespace Tour_Management
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            CalcNumbers();
        }


        protected void CalcNumbers()
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString);
            con1.Open();

            // Count tours
            SqlCommand cmdTour = new SqlCommand("Select count(*) From Tour", con1);
            int tourCount = (int)cmdTour.ExecuteScalar();
            Label1.Text = tourCount.ToString();

            // Count users
            SqlCommand cmdUser = new SqlCommand("Select count(*) From UserT", con1);
            int userCount = (int)cmdUser.ExecuteScalar();
            Label2.Text = userCount.ToString();

            // Count orders
            SqlCommand cmdOrder = new SqlCommand("Select count(*) From OrderT", con1);
            int orderCount = (int)cmdOrder.ExecuteScalar();
            Label3.Text = orderCount.ToString();

            con1.Close();
        }

    }
}