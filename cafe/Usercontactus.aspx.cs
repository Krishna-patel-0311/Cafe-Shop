using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe
{
    public partial class Usercontactus : System.Web.UI.Page
    {
        //Sql Connection
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Submit Button
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            insertData();
            refreshTB();
        }

        //Insert Data
        void insertData()
        {
            con.Open();
            string query = "insert into ContactUs values(@name, @gender, @email, @sub, @com)";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@name", tb_name.Text);
            cmd.Parameters.AddWithValue("@gender", tb_gen.Text);
            cmd.Parameters.AddWithValue("@email", tb_mail.Text);
            cmd.Parameters.AddWithValue("@sub", tb_sunject.Text);
            cmd.Parameters.AddWithValue("@com", tb_comments.Text);
            cmd.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Thank You For Feedbacks and Suggestion')</script>");
            con.Close();
        }

        //Refresh Textbox
        void refreshTB()
        {
            tb_name.Text = "";
            tb_gen.Text = "";
            tb_mail.Text = "";
            tb_sunject.Text = "";
            tb_comments.Text = "";

        }
    }
}