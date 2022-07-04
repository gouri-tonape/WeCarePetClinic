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
    public partial class registration : System.Web.UI.Page
    {
         
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // sign up button click event 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkUserExist())
            {
                Response.Write("<script>alert('User already exist with this User ID. Please try with other User ID');</script>");
            }
            else
            {
                signUpNewUser();
            }
        }

        //user defined method

        bool checkUserExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM registration_tb WHERE user_id='" + TextBox4.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

           
        }

        void signUpNewUser()
        {
            // Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO registration_tb(email, full_name, contact_no, area, pincode, pet_species, breed, pet_name, user_id, password) values(@email, @full_name, @contact_no, @area, @pincode, @pet_species, @breed, @pet_name, @user_id, @password)", con);
                cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@area", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pet_species", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@breed", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@pet_name", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@user_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox8.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registration is successful. Go to User Login to Log In.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}