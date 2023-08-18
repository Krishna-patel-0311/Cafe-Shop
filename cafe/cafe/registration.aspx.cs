using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe
{
    public partial class registration : System.Web.UI.Page
    {
        //Sql Connection

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Refresh All Textboxs
        void refreshTB()
        {
            tb_name.Text = "";
            tb_user.Text = "";
            tb_pass.Text = "";
            tb_cpass.Text = "";
            tb_address.Text = "";
            tb_age.Text = "";
            tb_phn.Text = "";
            tb_age.Text = "";

        }

        //Insert Data
        void insertData()
        {
            con.Open();
            string query = "insert into Users values(@name, @user, @pass, @email, @phn, @gender, @age, @address)";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@name", tb_name.Text);
            cmd.Parameters.AddWithValue("@user", tb_user.Text);
            cmd.Parameters.AddWithValue("@pass", tb_cpass.Text);
            cmd.Parameters.AddWithValue("@email", tb_mail.Text);
            cmd.Parameters.AddWithValue("@phn", tb_phn.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@age", tb_age.Text);
            cmd.Parameters.AddWithValue("@address", tb_address.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("login.aspx");
            refreshTB();
            con.Close();

        }

        //View 1 Next Button
        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 1;
        }

        //View 2 Previous Button
        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex -= 1;
        }

        //View 2 Next Button
        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 1;
        }

        //View 3 Previous Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex -= 1;
        }

        //View 3 Submit Button
        protected void Button5_Click(object sender, EventArgs e)
        {
            insertData();
        }
    }
}