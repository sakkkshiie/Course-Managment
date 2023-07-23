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
    public partial class register1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=KUNAL;Initial Catalog=student;Integrated Security=True";
            con.Open();
           

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == txtcPassword.Text) {
                SqlCommand cmd = new SqlCommand("insert into login_std1 " + " (name, pass) values(@name, @pass)", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
                cmd.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Regiter Succesful";
                Response.Redirect("login.aspx");
            }
            else
            {

                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Regiter Unsuccesful";
            }

        }
    }
}