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
    public partial class del_cource : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from cources", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dropDown_1.DataSource = dt;
            dropDown_1.DataTextField = "title";
            dropDown_1.DataValueField = "id";
            dropDown_1.DataBind();
        }

        protected void btn_get_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from cources where title = '" + txt_title.Text + "'", con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                txt_title.Text = rd[1].ToString();
                txt_desc.Text = rd[2].ToString();
                txt_instructor.Text = rd[3].ToString();
                txt_capacity.Text = rd[4].ToString();
            }
        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from cources where title = '" + txt_title.Text + "'", con);
            SqlDataReader rd = cmd.ExecuteReader();
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Deleted Succesful";
        }
    }
}