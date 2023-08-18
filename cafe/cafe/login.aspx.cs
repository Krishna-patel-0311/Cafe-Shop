using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe
{
    public partial class login : System.Web.UI.Page
    {
        //SQL Connection

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"] != null)
            {
                Response.Redirect("UserHome.aspx");
            }
        }

        //login_button
        protected void btn_login_Click(object sender, EventArgs e)
        {
            //If Admin

            if (tb_username.Text == "Admin" && tb_password.Text == "pass")
            {
                Session["user"] = tb_username.Text;
                Response.Redirect("home.aspx");

            }

            //User

            else
            {
                con.Open();
                string query = "select * from Users where username=@user and password=@pass";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@user", tb_username.Text);
                cmd.Parameters.AddWithValue("@pass", tb_password.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["user"] = tb_username.Text;
                    Session["id"] = dr["Id"];
                    con.Close(); Response.Redirect("UserHome.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Invalid Candidate')</script>");
                }
            }
        }
    }
}