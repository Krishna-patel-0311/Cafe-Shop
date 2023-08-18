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
    public partial class salary : System.Web.UI.Page
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

        //Save Button
        protected void save_btn_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "insert into StaffSalary values(@name, @date, @salary, @statues)";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@name", dl_sn.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@date", tb_sdate.Text);
            cmd.Parameters.AddWithValue("@salary", tb_ssalary.Text);
            cmd.Parameters.AddWithValue("@statues", tb_sstatues.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Staff Salary Added')</script>");
            ClearTb();
        }

        //Clear All Textbox
        void ClearTb()
        {
            tb_sid.Text = "";
            tb_sdate.Text = "";
            tb_ssalary.Text = "";
            tb_sstatues.Text = "";
            GridView1.SelectedIndex = -1;
        }

        //Bind Gridview
        void BindGridView()
        {
            string query = "select * from StaffSalary";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //Clear Button
        protected void clear_btn_Click(object sender, EventArgs e)
        {
            ClearTb();
        }

        //Update Button
        protected void btn_update_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update StaffSalary set name=@name, givendate=@date, salary=@salary, statues=@statues where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", tb_sid.Text);
            cmd.Parameters.AddWithValue("@name", dl_sn.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@date", tb_sdate.Text);
            cmd.Parameters.AddWithValue("@salary", tb_ssalary.Text);
            cmd.Parameters.AddWithValue("@statues", tb_sstatues.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Staff Salary Updated')</script>");
            ClearTb();
            BindGridView();
        }

        //Delete Button
        protected void delete_btn_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from StaffSalary where id@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", tb_sid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Staff Salary deleted')</script>");
            ClearTb();
            BindGridView();
        }

        //To Fetch Data from Gridview to Textbox
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            Label lblid = (Label)row.FindControl("LabelId");
            Label lblname = (Label)row.FindControl("Labelname");
            Label lbldate = (Label)row.FindControl("Labeldate");
            Label lblpaid = (Label)row.FindControl("Labelsalary");
            Label lblstatues = (Label)row.FindControl("Labelstatues");

            tb_sid.Text = lblid.Text;
            dl_sn.Text = lblname.Text;
            tb_sdate.Text = lbldate.Text;
            tb_ssalary.Text = lblpaid.Text;
            tb_sstatues.Text = lblstatues.Text;
        }
    }
}