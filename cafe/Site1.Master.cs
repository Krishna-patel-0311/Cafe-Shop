using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"].ToString() != "Admin")
            {
                Response.Write("<script>alert('You Are Not Admin')</script>");
                Response.Redirect("login.aspx");
            }
            else
            {

            }
        }

        //Logout
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}