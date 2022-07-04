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
    public partial class org_manage2 : System.Web.UI.Page{
        static string global_filepath;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfClinicExists())
            {
                Response.Write("<script>alert('Clinic Already Exists, try some other Clinic ID');</script>");
            }
            else
            {
                addNewClinic();
            }
        }

        //update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateClinicByID();
        }

        //delete button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteClinicByID();
        }


        //go button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            getClinicById();
        }

        bool checkIfClinicExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from orgs_tb where org_id='" + TextBox1.Text.Trim() + "' OR org_name='" + TextBox2.Text.Trim() + "';", con);
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


        //add
        void addNewClinic()
        {
            try
            {

                string file_path = "img/clinic_imgs/3.png";
                string file_name = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("img/clinic_imgs/" + file_name));
                file_path = "~/img/clinic_imgs/" + file_name;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into orgs_tb values(@org_id,@org_name,@org_address,@org_img,@org_desc,@org_time)", con);

                cmd.Parameters.AddWithValue("@org_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@org_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@org_address", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@org_img", file_path);
                cmd.Parameters.AddWithValue("@org_time", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@org_desc", TextBox5.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Clinic added successfully.');</script>");
                  
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            clearAll();
        }

        //get
        void getClinicById() {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM orgs_tb WHERE org_id = '"+TextBox1.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["org_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["org_address"].ToString();
                    TextBox4.Text = dt.Rows[0]["org_time"].ToString();
                    TextBox5.Text = dt.Rows[0]["org_desc"].ToString();
                    global_filepath = dt.Rows[0]["org_img"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Clinic ID');</script>");
                }

            }catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //update
        void updateClinicByID()
        {
            if (checkIfClinicExists())
            {
                try
                {

                    string filepath = "~/img/clinic_imgs/3";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;


                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("img/clinic_imgs/" + filename));
                        filepath = "~/img/clinic_imgs/" + filename;
                    }

                    SqlConnection con = new SqlConnection(strcon);
                    if(con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE orgs_tb SET org_name = @org_name, org_address = @org_address, org_time = @org_time, org_desc = @org_desc, org_img = @org_img, WHERE org_id '"+ TextBox1.Text.Trim() +"' ",con);
                    cmd.Parameters.AddWithValue("@org_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@org_address", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@org_time", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@org_desc", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@org_img", filepath);


                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Clinic Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Clinic ID');</script>");
            }
        }


        //delete
        void deleteClinicByID()
        {
            try
            {
                if (checkIfClinicExists())
                {

                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM orgs_tb WHERE org_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Clinic Deleted Successfully');</script>");

                }
                else
                {
                    Response.Write("<script>alert('Invalid Clinic ID');</script>");
                }
            }catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        void clearAll()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        
    }


}