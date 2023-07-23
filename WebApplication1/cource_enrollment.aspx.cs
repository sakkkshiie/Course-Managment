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
    public partial class cource_enrollment : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from cources where capacity<30", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dropDown_1.DataSource = dt;
            dropDown_1.DataTextField = "title";
            dropDown_1.DataValueField = "id";
            dropDown_1.DataBind();
        }

        protected void btn_enroll_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into enrolled_student " + " (name, title) values(@name, @title)", con);
            cmd.Parameters.AddWithValue("@name", txt_name.Text);
            cmd.Parameters.AddWithValue("@title", txt_title.Text);
            cmd.ExecuteNonQuery();

            SqlCommand cmd1 = new SqlCommand("update cources set capacity=capacity+1 where title=@title", con);
            cmd1.Parameters.AddWithValue("@title", txt_title.Text);
            cmd1.ExecuteNonQuery();
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Enrolled Succesfuly";
        }
    }
}