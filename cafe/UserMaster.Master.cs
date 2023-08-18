using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //UserSession

            if (Session["user"] != null)
            {
                labe11.Text = Session["user"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        //logout
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}