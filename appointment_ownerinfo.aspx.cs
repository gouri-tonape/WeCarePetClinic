using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WeCarePetClinic
{
    public partial class book_appointment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //submit button
        protected void Button1_Click(object sender, EventArgs e)
        {
            submitOwnerInfo();
        }

        //go button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }


        void submitOwnerInfo()
        {
            

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO owner_info_tb(user_id, full_name, contact_no, email, area, pincode, time, date) values(@user_id, @full_name, @contact_no, @email, @area, @pincode, @time, @date)", con);
                cmd.Parameters.AddWithValue("@user_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@full_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@area", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@time", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox6.Text.Trim());
               

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Owner details is submitted successfully. Click next to fill pet details.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }
}