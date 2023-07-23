using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class cource_managment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_addCource_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_cource.aspx");
        }

        protected void btn_updtCource_Click(object sender, EventArgs e)
        {
            Response.Redirect("update_cource.aspx");
        }

        protected void btndelCource_Click(object sender, EventArgs e)
        {
            Response.Redirect("del_cource.aspx");
        }
    }
}