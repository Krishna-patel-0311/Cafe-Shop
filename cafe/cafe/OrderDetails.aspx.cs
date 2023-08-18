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
    public partial class OrderDetails : System.Web.UI.Page
    {
        //Sql Connection
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\6th SEM\ASP.NET\pro\cafe\cafe\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Binding GridView
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

       
        //Bind GridView
        public void BindGridView()
        {
            string query = "select * from OrderDetail";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //Change Page
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGridView();
        }
    }
}