using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class add_cource : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=KUNAL;Initial Catalog=student;Integrated Security=True";
            con.Open();


        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("insert into cources " + " (title, description, instructor, capacity) values(@title, @description, @instructor, @capacity)", con);
                cmd.Parameters.AddWithValue("@title", txt_title.Text);
                cmd.Parameters.AddWithValue("@description", txt_descp.Text);
                cmd.Parameters.AddWithValue("@instructor", txt_instructor.Text);
                cmd.Parameters.AddWithValue("@capacity", txt_capacity.Text);
                cmd.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Regiter Succesful";
            }
            catch
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Regiter Unsuccesful";
            }
        }
    }
}