using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace cafe
{
    public partial class addfooditems : System.Web.UI.Page
    {
        //Sql Connection
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Binding GridView
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        //Reset All Textbox
        void ResetItems()
        {
            tb_fid.Text = "";
            tb_fname.Text = "";
            tb_fprice.Text = "";
            Label1.Visible = false;
            GetImage.Visible = false;
            GridView1.SelectedIndex = -1;
            DropDownList1.ClearSelection();

        }

        //Save Button
        protected void btn_save_Click(object sender, EventArgs e)
        {
            //con.Open();
            String path = Server.MapPath("images/");
            string filename = Path.GetFileName(FileUpload1.FileName);
            string extention = Path.GetExtension(filename);
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            int size = postedFile.ContentLength;

            if (FileUpload1.HasFile == true)
            {
                if (extention.ToLower() == ".jpg" || extention.ToLower() == ".png" || extention.ToLower() == ".jpeg")
                {
                    if (size <= 1000000)
                    {
                        string query2 = " select * from FoodItems where id=@id";
                        SqlCommand cmd2 = new SqlCommand(query2, con);
                        cmd2.Parameters.AddWithValue("@id", tb_fid.Text);
                        con.Open();
                        SqlDataReader dr = cmd2.ExecuteReader();
                        if (dr.HasRows == true)
                        {
                            Response.Write("<script>alert('Food ID Already Exists')</script>");
                            con.Close();
                        }
                        else
                        {
                            con.Close();
                            FileUpload1.SaveAs(path + filename);
                            string path2 = "images/" + filename;
                            string query = "insert into FoodItems values(@id, @name, @price, @img, @cat)";
                            SqlCommand cmd = new SqlCommand(query, con);
                            cmd.Parameters.AddWithValue("@id", tb_fid.Text);
                            cmd.Parameters.AddWithValue("@name", tb_fname.Text);
                            cmd.Parameters.AddWithValue("@price", tb_fprice.Text);
                            cmd.Parameters.AddWithValue("@img", path2);
                            cmd.Parameters.AddWithValue("@cat", DropDownList1.SelectedItem.Value);
                            con.Open();
                            int a = cmd.ExecuteNonQuery();

                            if (a > 0)
                            {
                                Response.Write("<script>alert('Food Item Added Sucessfully')</script>");
                                BindGrid();
                                ResetItems();
                                Label1.Visible = false;
                            }
                            else
                            {
                                Response.Write("<script>alert('Item Are Not Added !')</script>");
                            }
                            con.Close();
                        }
                    }
                    else
                    {
                        Label1.Text = "Image Size Should Not be Greater Then 1MB !!";
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Visible = true;
                    }
                }
                else
                {
                    Label1.Text = "Image Formate is Not Supported !!";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "Please Upload an Image";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }

        //Clear Button
        protected void btn_clear_Click(object sender, EventArgs e)
        {
            ResetItems();
        }

        //Change Page In Gridview
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        //Bind Gridview
        void BindGrid()
        {
            //con.Open();
            string query3 = "select * from FoodItems";
            SqlDataAdapter sda = new SqlDataAdapter(query3, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            //con.Close();
        }

        //To Select the Particular Row Dwtails in Gridview 
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            Label lblID = (Label)row.FindControl("Labelid");
            Label lblname = (Label)row.FindControl("Labelname");
            Label lblprice = (Label)row.FindControl("Labelprice");
            Image imgGet = (Image)row.FindControl("Image1");
            //Label lblcat = (Label)row.FindControl("Labelcat");

            tb_fid.Text = lblID.Text;
            tb_fname.Text = lblname.Text;
            tb_fprice.Text = lblprice.Text;
            GetImage.ImageUrl = imgGet.ImageUrl;
            //DropDownList1.Text = lblcat.Text;
            GetImage.Visible = true;
        }

        //Update Button
        protected void btn_update_Click(object sender, EventArgs e)
        {
            //con.Open();
            String path = Server.MapPath("images/");
            string filename = Path.GetFileName(FileUpload1.FileName);
            string extention = Path.GetExtension(filename);
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            int size = postedFile.ContentLength;

            string UpdatePaths = "images/";

            if (FileUpload1.HasFile == true)
            {
                if (extention.ToLower() == ".jpg" || extention.ToLower() == ".png" || extention.ToLower() == ".jpeg")
                {
                    if (size <= 1000000)
                    {
                        UpdatePaths = UpdatePaths + filename;
                        FileUpload1.SaveAs(Server.MapPath(UpdatePaths));

                        string query4 = "update FoodItems set name=@nam, price=@pri, img=@imgs where id=@id";
                        SqlCommand cmd3 = new SqlCommand(query4, con);
                        cmd3.Parameters.AddWithValue("@id", tb_fid.Text);
                        cmd3.Parameters.AddWithValue("@nam", tb_fname.Text);
                        cmd3.Parameters.AddWithValue("@pri", tb_fprice.Text);
                        cmd3.Parameters.AddWithValue("@imgs", UpdatePaths);
                        con.Open();
                         
                        int a1 = cmd3.ExecuteNonQuery();

                        if (a1 > 0)
                        {
                            Response.Write("<script>alert('Food Item Updated Sucessfully')</script>");
                            BindGrid();
                            ResetItems();
                            Label1.Visible = false;
                            GetImage.Visible = false;
                        }
                        else
                        {
                            Response.Write("<script>alert('Food Item Not Updated')</script>");
                        }
                        con.Close();
                    }
                    else
                    {
                        Label1.Text = "Image Size Should Not be Greater Then 1MB !!";
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Visible = true;
                    }
                }
                else
                {
                    Label1.Text = "Image Formate is Not Supported !!";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
            }
            else
            {
                
                UpdatePaths = GetImage.ImageUrl.ToString();
                string query4 = "update FoodItems set name=@nam, price=@pri, img=@imgs where id=@id";
                SqlCommand cmd4 = new SqlCommand(query4, con);
                cmd4.Parameters.AddWithValue("@id", tb_fid.Text);
                cmd4.Parameters.AddWithValue("@nam", tb_fname.Text);
                cmd4.Parameters.AddWithValue("@pri", tb_fprice.Text);
                cmd4.Parameters.AddWithValue("@imgs", UpdatePaths);
                con.Open();

                int a = cmd4.ExecuteNonQuery();

                if (a > 0)
                {
                    Response.Write("<script>alert('Food Item Updated Sucessfully')</script>");
                    BindGrid();
                    ResetItems();
                    Label1.Visible = false;
                    GetImage.Visible = false;
                    string DeletePath = Server.MapPath(GetImage.ImageUrl.ToString());
                    if (File.Exists(DeletePath) == true)
                    {
                        File.Delete(DeletePath);
                    }
                }
                else
                {
                    Response.Write("<script>alert('Food Item Not Updated')</script>");
                }
                con.Close();
            }
        }

        //Delete Button
        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string query5 = "delete from FoodItems where id=@id";
            SqlCommand cmds = new SqlCommand(query5, con);
            cmds.Parameters.AddWithValue("@id", tb_fid.Text);
            con.Open();
            int a3 = cmds.ExecuteNonQuery();
            if(a3 > 0)
            {
                Response.Write("<script>alert('Food Item Deleted Sucessfully')</script>");
                BindGrid();
                ResetItems();
                Label1.Visible = false;
                GetImage.Visible = false;

                string DeletePath = Server.MapPath(GetImage.ImageUrl.ToString());
                if (File.Exists(DeletePath) == true)
                {
                    File.Delete(DeletePath);
                }
            }
            else
            {
                Response.Write("<script>alert('Food Item Not Deleted')</script>");
            }
            con.Close();
        }
    }
}