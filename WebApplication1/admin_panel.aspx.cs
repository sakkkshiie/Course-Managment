using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class admin_panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_courceManage_Click(object sender, EventArgs e)
        {
            Response.Redirect("cource_managment.aspx");
        }

        protected void btn_stdManage_Click(object sender, EventArgs e)
        {
            Response.Redirect("student_enrollment_admin.aspx");
        }
    }
}