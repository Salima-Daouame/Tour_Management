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
    public partial class TourHistory : System.Web.UI.Page
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
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM TourHistory", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView4.DataSource = dt;
                GridView4.DataBind();
            }
        }
        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            //ClearForm1();
            OpenPopup1();
        }

        //protected void BtnSave_Click(object sender, EventArgs e)
        //{
        //    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TourManagement"].ConnectionString))
        //    {
        //        SqlCommand cmd = new SqlCommand("INSERT INTO TourHistory  (NameTh,PicTh) VALUES (@NameTh,@PicTh)", con);
        //        cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
        //        cmd.Parameters.AddWithValue("@PicLocation", filePic.HasFile ? filePic.FileBytes : new byte[0]);

        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //    }

        //    BindGridView2();
        //    ClosePopup1();
        //    ClearForm1();
        //}

        //protected void ClearForm1()
        //{
        //    txtTitle.Text = string.Empty;
        //    filePic.Attributes.Clear();
        //}

        protected void OpenPopup1()
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "OpenPopup", "OpenPopup();", true);
        }

        protected void ClosePopup1()
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ClosePopup", "ClosePopup();", true);
        }
    }
}