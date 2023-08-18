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
    public partial class UserPlaceOrder : System.Web.UI.Page
    {
        //SqlConnection
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Read();
            if (Session["addproduct"].ToString() == "true")
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("id");
                dt.Columns.Add("category");
                dt.Columns.Add("name");
                dt.Columns.Add("img");
                dt.Columns.Add("price");
                dt.Columns.Add("quantity");
                dt.Columns.Add("totalprice");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
                        string query = "select * from FoodItems where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = query;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["category"] = ds.Tables[0].Rows[0]["category"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["img"] = ds.Tables[0].Rows[0]["img"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["quantity"] = quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;

                        GridView1.FooterRow.Cells[6].Text = "Total Amount :";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("UserOrderForm.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\6th SEM\ASP.NET\pro\cafe\cafe\App_Data\Database1.mdf;Integrated Security=True");
                        string query = "select * from FoodItems where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = query;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["category"] = ds.Tables[0].Rows[0]["category"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["img"] = ds.Tables[0].Rows[0]["img"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["quantity"] = quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;

                        GridView1.FooterRow.Cells[6].Text = "Total Amount :";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("UserOrderForm.aspx");
                    }
                }
            }
            else
            {
                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[6].Text = "Total Amount :";
                    GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                }
            }
            lb_odate.Text = DateTime.Now.ToShortDateString();
            findorderid();
        }

        //Read Phone and Address
        void Read()
        {
            con.Open();
            string query = "select * from Users where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                tb_phnno.Text = reader["phone"].ToString();
                tb_address.Text = reader["address"].ToString();
            }
            con.Close();
        }

        //Grand Total
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;

            }
            return gtotal;
        }

        //Find OrderID Auto
        public void findorderid()
        {
            string pass = "abcdefghijklmnopqrstuvwxyz0123456789";
            Random r = new Random();
            char[] mypass = new char[6];
            for(int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(20 * r.NextDouble())];
            }

            string orderid = DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);
            lb_oid.Text = orderid;
        }

        //Save Address
        public void saveaddress()
        {
            con.Open();
            string updatepass = "insert into OrderAddress(orderId,address,mobilenumber) values('" + lb_oid.Text +"','"+ tb_address.Text +"', '"+ tb_phnno.Text +"')";
            SqlCommand cmd = new SqlCommand(updatepass,con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        //Order Button
        protected void place_order_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];

            for(int i = 0; i <= dt.Rows.Count -1; i++)
            {
                con.Open();
                string updatequery = "insert into OrderDetail (orderId,dateoforder,sno,productid,productname,price,quantity,address) " +
                    "values('"+ lb_oid.Text + "', '" + lb_odate.Text + "', '" + dt.Rows[i]["sno"] +"', '"+ dt.Rows[i]["id"] +"', '"+ dt.Rows[i]["name"] +"', '"+ dt.Rows[i]["price"] +"', '"+ dt.Rows[i]["quantity"] +"','"+ tb_address.Text +"')";
                SqlCommand cmd = new SqlCommand(updatequery, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            saveaddress();
            Response.Redirect("UserThankYou.aspx");
        }
    }
}