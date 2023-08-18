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
    public partial class staffForm : System.Web.UI.Page
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
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            insertDatas();
            refreshTBs();
        }

        //Save Data
        void insertDatas()
        {
            con.Open();
            string query = "insert into StaffTable values(@name, @age, @gender, @email, @phn, @graduation, @doj, @add)";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@name", tb_name.Text);
            cmd.Parameters.AddWithValue("@age", tb_age.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@email", tb_mail.Text);
            cmd.Parameters.AddWithValue("@phn", tb_phn.Text);
            cmd.Parameters.AddWithValue("@graduation", tb_graduation.Text);
            cmd.Parameters.AddWithValue("@doj", tb_dojoin.Text);
            cmd.Parameters.AddWithValue("@add", tb_address.Text);
            cmd.ExecuteNonQuery();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Detail's Are Submitted')</script>");
            Response.Write("<script>alert('Added Sucessfully')</script>");
            con.Close();
        }

        //Refresh Textbox
        void refreshTBs()
        {
            tb_id.Text = "";
            tb_name.Text = "";
            tb_age.Text = "";
            DropDownList1.ClearSelection();
            tb_phn.Text = "";
            tb_mail.Text = "";
            tb_graduation.Text = "";
            tb_dojoin.Text = "";
            tb_address.Text = "";
            GridView1.SelectedIndex = -1;

        }

        //Bind GridView
        void BindGridView()
        {
            string query = "select * from StaffTable";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //Reset Button
        protected void reset_btn_Click(object sender, EventArgs e)
        {
            refreshTBs();
        }

        //Update Button
        protected void update_btn_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update StaffTable set name=@nam, age=@ag, gender=@gen, email=@gemail, phn=@phns, graduation=@grad, dataofjoin=@doj, address=@add where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", tb_id.Text);
            cmd.Parameters.AddWithValue("@nam", tb_name.Text);
            cmd.Parameters.AddWithValue("@ag", tb_age.Text);
            cmd.Parameters.AddWithValue("@gen", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@gemail", tb_mail.Text);
            cmd.Parameters.AddWithValue("@phns", tb_phn.Text);
            cmd.Parameters.AddWithValue("@grad", tb_graduation.Text);
            cmd.Parameters.AddWithValue("@doj", tb_dojoin.Text);
            cmd.Parameters.AddWithValue("@add", tb_address.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Updated Sucessfully')</script>");
            BindGridView();
            refreshTBs();
            con.Close();
        }

        //Delete Button

        protected void delete_btn_Click(object sender, EventArgs e)
        {
            string query = "delete from StaffTable where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", tb_id.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Deleted Sucessfully')</script>");
            BindGridView();
            refreshTBs();
            con.Close();
        }

        //Paging

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGridView();
        }

        //Select Data Form GridView To Textbox

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            Label lblid = (Label)row.FindControl("LabelId");
            Label lblname = (Label)row.FindControl("Labelname");
            Label lblage = (Label)row.FindControl("Labelage");
            Label lblgen = (Label)row.FindControl("Labelgen");
            Label lblmail = (Label)row.FindControl("Labelmail");
            Label lblphn = (Label)row.FindControl("Labelphn");
            Label lblgrd = (Label)row.FindControl("Labelgrd");
            Label lbldoj = (Label)row.FindControl("Labeldoj");
            Label lbladd = (Label)row.FindControl("Labeldadd");



            tb_id.Text = lblid.Text;
            tb_name.Text = lblname.Text;
            tb_age.Text = lblage.Text;
            DropDownList1.Text = lblgen.Text;
            tb_mail.Text = lblmail.Text;
            tb_phn.Text = lblphn.Text;
            tb_graduation.Text = lblgrd.Text;
            tb_dojoin.Text = lbldoj.Text;
            tb_address.Text = lbladd.Text;
        }
    }
}