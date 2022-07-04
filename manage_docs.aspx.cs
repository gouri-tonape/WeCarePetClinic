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
    public partial class docs_org1 : System.Web.UI.Page
    {
        static string global_filepath;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add_new_doc
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkIfDoctorExists())
            {
                Response.Write("<script>alert('Doctor Already Exists, try some other Doctor ID');</script>");
            }
            else
            {
                addNewDoctor();
            }

        }

        //delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteDoctorByID();
        }

        //go button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getDoctorByID();
        }

        void getDoctorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM docs_tb WHERE doctor_id = '" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["doctor_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["doctor_qualification"].ToString();
                    TextBox4.Text = dt.Rows[0]["doctor_specialization"].ToString();
                    global_filepath = dt.Rows[0]["doctor_img"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Doctor ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfDoctorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from docs_tb where doctor_id='" + TextBox1.Text.Trim() + "' OR doctor_name='" + TextBox2.Text.Trim() + "';", con);
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

        void addNewDoctor()
        {
            try
            {

                string file_path = "img/doc_imgs/doc_logo.jpg";
                string file_name = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("img/doc_imgs/" + file_name));
                file_path = "~/img/doc_imgs/" + file_name;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO docs_tb values(@doctor_id,@doctor_name,@doctor_qualification,@doctor_specialization,@doctor_img)", con);

                cmd.Parameters.AddWithValue("@doctor_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_qualification", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_specialization", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_img", file_path);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Doctor added successfully.');</script>");

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            clearAll();
        }

        void updateDoctorByID()
        {
            if (checkIfDoctorExists())
            {
                try
                {

                    string filepath = "~/img/doc_imgs/3";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("img/doc_imgs/" + filename));
                        filepath = "~/img/doc_imgs/" + filename;
                    }
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE docs_tb SET doctor_name = @doctor_name, doctor_qualification = @doctor_qualification, doctor_specialization = @doctor_specialization, doctor_img = @doctor_img, WHERE doctor_id '" + TextBox1.Text.Trim() + "' ", con);
                    cmd.Parameters.AddWithValue("@doctor_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@doctor_qualification ", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@doctor_specialization", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@doctor_img", filepath);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Doctor Details Updated Successfully');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Doctor ID');</script>");
            }
        }

        void deleteDoctorByID()
        {
            if (checkIfDoctorExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE FROM docs_tb WHERE doctor_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Doctor Details Deleted Successfully');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Doctor ID');</script>");
            }
        }

        void clearAll()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        
    }
}