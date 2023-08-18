using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe
{
    public partial class UserProfile : System.Web.UI.Page
    {
        //SqlConnection
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Read();               
            }        
            
            //Read Data from User Table

            void Read()
            {
                con.Open();
                string query = "select * from Users where id=@id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    lb_uid.Text = reader["Id"].ToString();
                    lb_uname.Text = reader["name"].ToString();
                    lb_uusername.Text = reader["username"].ToString();
                    lb_upass.Text = reader["password"].ToString();
                    lb_umail.Text = reader["email"].ToString();
                    lb_uphn.Text = reader["phone"].ToString();
                    lb_ugender.Text = reader["gender"].ToString();
                    lb_uage.Text = reader["age"].ToString();
                    lb_uadd.Text = reader["address"].ToString();
                }
                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Store values in Session

            Session["id"] = lb_uid.Text;
            Session["uname"] = lb_uname.Text;
            Session["username"] = lb_uusername.Text;
            Session["email"] = lb_umail.Text;
            Session["password"] = lb_upass.Text;
            Session["phone"] = lb_uphn.Text;
            Session["gender"] = lb_ugender.Text;
            Session["age"] = lb_uage.Text;
            Session["address"] = lb_uadd.Text;
            Response.Redirect("UserUpadateProfile.aspx");
            
        }
    }
}