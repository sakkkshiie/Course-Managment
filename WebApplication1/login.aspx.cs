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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=KUNAL;Initial Catalog=student;Integrated Security=True";
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from[login_std1]");
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if ((rd[0].ToString() == txtUsername.Text) && (rd[1].ToString() == txtPassword.Text))
{
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Login Succesful";
                    Response.Redirect("cource_enrollment.aspx");
                }
                else
                {

                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "User does not exists";
                }
            }
        }

        protected void btn_admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}
