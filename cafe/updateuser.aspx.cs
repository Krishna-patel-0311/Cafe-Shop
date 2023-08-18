using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe
{
    public partial class updateadmin : System.Web.UI.Page
    {
        //Sql Connection
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Binding GridView
            if (!IsPostBack)
            {
                BindGridView();
            }

        }

        //Bind GridView
        void BindGridView()
        {
            string query = "select * from Users";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //Refresh All Textboxs
        private void refreshTB()
        {
            tb_id.Text = "";
            tb_name.Text = "";
            tb_username.Text = "";
            tb_password.Text = "";
            tb_mail.Text = "";
            tb_address.Text = "";
            tb_gender.Text = "";
            tb_phn.Text = "";
            tb_age.Text = "";
            GridView1.SelectedIndex = -1;
        }

        //Clear Button
        protected void btn_clear_Click(object sender, EventArgs e)
        {
            refreshTB();
        }

        //Delete Button
        protected void btn_delete_Click1(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Users where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", tb_id.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Deleted Sucessfully')</script>");
            BindGridView();
            refreshTB();
            con.Close();
        }

        //Update Button
        protected void btn_update_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Users set name=@name, username=@user, password=@pass, email=@email, phone=@phn, gender=@gender, age=@age, address=@address where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", tb_id.Text);
            cmd.Parameters.AddWithValue("@name", tb_name.Text);
            cmd.Parameters.AddWithValue("@user", tb_username.Text);
            cmd.Parameters.AddWithValue("@pass", tb_password.Text);
            cmd.Parameters.AddWithValue("@email", tb_mail.Text);
            cmd.Parameters.AddWithValue("@phn", tb_phn.Text);
            cmd.Parameters.AddWithValue("@gender", tb_gender.Text);
            cmd.Parameters.AddWithValue("@age", tb_age.Text);
            cmd.Parameters.AddWithValue("@address", tb_address.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Updated Sucessfully')</script>");
            refreshTB();
            BindGridView();
            con.Close();
        }

        //Select Button
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            Label lblid = (Label)row.FindControl("LabelId");
            Label lblname = (Label)row.FindControl("LabelName");
            Label lbluname = (Label)row.FindControl("LabelUname");
            Label lblpass = (Label)row.FindControl("Labelpass");
            Label lblmail = (Label)row.FindControl("Labelmail");
            Label lblphn = (Label)row.FindControl("Labelphn");
            Label lblgen = (Label)row.FindControl("Labelgen");
            Label lblage = (Label)row.FindControl("Labelage");
            Label lbladd = (Label)row.FindControl("Labeladd");



            tb_id.Text = lblid.Text;
            tb_name.Text = lblname.Text;
            tb_username.Text = lbluname.Text;
            tb_password.Text = lblpass.Text;
            tb_mail.Text = lblmail.Text;
            tb_phn.Text = lblphn.Text;
            tb_gender.Text = lblgen.Text;
            tb_age.Text = lblage.Text;
            tb_address.Text = lbladd.Text;
        }
    }
}