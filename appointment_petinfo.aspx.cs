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
    public partial class book_appointment_petinfo : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            fillPetInfo();
        }

        void fillPetInfo()
        {
            // Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO pet_info_tb(petId, pet_name, pet_species, pet_breed, pet_weight, pet_age, pet_gender, visit_purpose, message) values(@petId, @pet_name, @pet_species, @pet_breed, @pet_weight, @pet_age, @pet_gender, @visit_purpose, @message)", con);
                cmd.Parameters.AddWithValue("@petId", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@pet_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@pet_species", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pet_breed", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@pet_weight", TextBox4.Text.Trim());
          
                cmd.Parameters.AddWithValue("@pet_age", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@pet_gender", RadioButtonList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@visit_purpose", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@message", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Pet Information is filled successfully. Appointment is confirmed.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

       
    }
}