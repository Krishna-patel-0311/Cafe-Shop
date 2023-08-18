using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //user name
            if (Session["user"] != null && Session["id"] != null)
            {
                lb_name.Text = Session["user"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}