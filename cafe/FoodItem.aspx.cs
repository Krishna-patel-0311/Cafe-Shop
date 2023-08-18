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
    public partial class OderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Binding Repeater
            BindProductRepeater();
        }

        //Bind Repearter
        void BindProductRepeater()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
            con.Open();
            string query = "select * from FoodItems";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrProducts.DataSource = dt;
            rptrProducts.DataBind();
            con.Close();
        }

        //Select Category
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
            con.Open();
            string query1 = "select * from FoodItems where category='"+DropDownList1.SelectedItem.Value.ToString()+"'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            rptrProducts.DataSource = dt1;
            rptrProducts.DataBind();
            con.Close();
        }

        //Redirect Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRUD_FoodItem.aspx");
        }

        protected void rptrProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}