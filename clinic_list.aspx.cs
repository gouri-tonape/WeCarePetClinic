using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace WeCarePetClinic
{
    public partial class WebForm7 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            display_Clinic();
        }
        void display_Clinic()
        {
            SqlConnection sqlcon = new SqlConnection(strcon);
            string sqlquery = "select * from [dbo].[orgs_tb]";
            SqlCommand cmd = new SqlCommand(sqlquery, sqlcon);
            if (sqlcon.State == ConnectionState.Closed)
            {
                sqlcon.Open();
            }
            SqlDataAdapter ad = new SqlDataAdapter();
            ad.SelectCommand = cmd;
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            sqlcon.Close();
        }
    }
}