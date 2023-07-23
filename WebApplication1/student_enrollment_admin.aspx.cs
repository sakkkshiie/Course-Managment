using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class student_enrollment_admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {


            con.ConnectionString = "Data Source=KUNAL;Initial Catalog=student;Integrated Security=True";
            con.Open();
            reload_data();

        }

        private void reload_data()
        {
            SqlCommand cmd = new SqlCommand("select * from enrolled_student", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dropDown_1.DataSource = dt;
            dropDown_1.DataTextField = "name";
            dropDown_1.DataValueField = "id";
            dropDown_1.DataBind();
        }

        protected void btn_get_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from enrolled_student where name = '" + txt_name.Text + "'", con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                txt_name.Text = rd[1].ToString();
                txt_title.Text = rd[2].ToString();
                
            }
        }

        protected void btn_enroll_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from enrolled_student where name = '" + txt_name.Text + "'", con);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("update cources set capacity=capacity-1 where title=@title", con);
            cmd1.Parameters.AddWithValue("@title", txt_title.Text);
            cmd1.ExecuteNonQuery();
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Disenrolled Succesfuly";
            
        }
    }
}