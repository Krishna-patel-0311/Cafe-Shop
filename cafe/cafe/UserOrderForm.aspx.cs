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
    public partial class UserOrderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["addproduct"] == null)
            {
                Response.Write("<script>alert('Cart is Empty !')</script>");
            }
            else
            {
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

                            GridView1.FooterRow.Cells[6].Text = "Total Amount";
                            GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                            Response.Redirect("UserOrderForm.aspx");
                        }
                        else
                        {
                            dt = (DataTable)Session["buyitems"];
                            int sr;
                            sr = dt.Rows.Count;
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

                            GridView1.FooterRow.Cells[6].Text = "Total Amount";
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
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    }
                }
            }
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if(sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for(int i = 1; i<= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("UserOrderForm.aspx");
        }

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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("UserOderEdit.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);
        }

        protected void checkout_Click(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count == 0)
            {
                Response.Write("<script>alert('Cart is Empty !')</script>");
            }
            else
            {

                Response.Redirect("UserPlaceOrder.aspx");

            }
        }
    }
}