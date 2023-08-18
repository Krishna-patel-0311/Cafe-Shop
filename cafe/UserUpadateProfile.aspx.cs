using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe
{
    public partial class UserUpadateProfile : System.Web.UI.Page
    {
        //Sql Connection
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    tb_id.Text = Session["id"].ToString();
                    tb_name.Text = Session["uname"].ToString();
                    tb_username.Text = Session["username"].ToString();
                    tb_mail.Text = Session["email"].ToString();
                    tb_password.Text = Session["password"].ToString();
                    tb_phn.Text = Session["phone"].ToString();
                    tb_gender.Text = Session["gender"].ToString();
                    tb_age.Text = Session["age"].ToString();
                    tb_address.Text = Session["address"].ToString();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateData();
        }

        //Update
        public void UpdateData()
        {
            con.Open();
            
            string query = "update Users set name=@name, username=@user, password=@pass, email=@email, phone=@phn, gender=@gender, age=@age, address=@address where Id=@Id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Id", tb_id.Text.ToString());
            cmd.Parameters.AddWithValue("@name", tb_name.Text.ToString());
            cmd.Parameters.AddWithValue("@user", tb_username.Text.ToString());
            cmd.Parameters.AddWithValue("@pass", tb_password.Text.ToString());
            cmd.Parameters.AddWithValue("@email", tb_mail.Text.ToString());
            cmd.Parameters.AddWithValue("@phn", tb_phn.Text.ToString());
            cmd.Parameters.AddWithValue("@gender", tb_gender.Text);
            cmd.Parameters.AddWithValue("@age", tb_age.Text);
            cmd.Parameters.AddWithValue("@address", tb_address.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Updated Sucessfully')</script>");
        }
    }
}