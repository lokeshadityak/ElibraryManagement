using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class authermanagement : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            
        }

        //Check button
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strconn);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "';", conn);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    //Response.Write("<script>alert('Hello " + dr.GetValue(0) + "!');</script>");
                    TextBox4.Text = (string)dr.GetValue(1);

                }
            }
            else
            {
                Response.Write("<script>alert('No Author with that ID exists');</script>");
                clearForm();
            }

            conn.Close();

        }
        //Add button
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('welcome to Author Mngmnt');</script>");
            if (CheckAuthorIdIfExists())
            {
                Response.Write("<script>alert('Author ID Already exists!! try using different ID.');</script>");
            }
            else
            {
                CreateAuthor();
                GridView1.DataBind();
            }
            clearForm();
        }

        private void CreateAuthor()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl " +
                    "(author_id, author_name )" +
                    "VALUES(@author_id, @author_name)", conn);

                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox4.Text.Trim());
                
                int rows = cmd.ExecuteNonQuery();
                if (rows == 1)
                {
                    Response.Write("<script>alert('Author created successfully');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Author NOT created. Try Again later');</script>");
                }

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        private bool CheckAuthorIdIfExists()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "';", conn);
                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable table = new DataTable();

                da.Fill(table);

                conn.Close();

                if (table.Rows.Count >= 1)
                {
                    //Response.Write("<script>alert('Author Already exists!!');</script>");
                    return true;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            //Response.Write("<script>alert('Author can be inserted');</script>");
            return false;
        }

        //Update Button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckAuthorIdIfExists())
            {
                try
                {
                    SqlConnection conn = new SqlConnection(strconn);
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name='" + TextBox4.Text.Trim() + "' where author_id='" + TextBox1.Text.Trim() + "';", conn);

                    int rows = cmd.ExecuteNonQuery();
                    if (rows == 1)
                    {
                        Response.Write("<script>alert('Author Modified successfully');</script>");
                        System.Console.WriteLine("Successfully Modified");
                    }
                    else
                    {
                        Response.Write("<script>alert('Author Could't be modified. Try Again later');</script>");
                    }
                    GridView1.DataBind();
                    conn.Close();
                    clearForm();
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('An Exception occured. Try Again later');</script>");
                    System.Console.WriteLine(ex.Message);
                }
            }
            else
            {
                Response.Write("<script>alert('Author Doesn't Exists in the DB');</script>");
            }

        }
        //Delete Button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckAuthorIdIfExists())
            {
                try
                {
                    SqlConnection conn = new SqlConnection(strconn);
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "';", conn);

                    int rows = cmd.ExecuteNonQuery();
                    if (rows == 1)
                    {
                        Response.Write("<script>alert('Author Deleted successfully');</script>");
                        System.Console.WriteLine("Author Successfully Deleted");
                    }
                    else
                    {
                        Response.Write("<script>alert('Author Couldn't be Deleted. Try Again later');</script>");
                        System.Console.WriteLine("Author Couldn't Deleted");
                    }
                    GridView1.DataBind();
                    conn.Close();
                    clearForm();
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('An Exception occured. Try Again later');</script>");
                    System.Console.WriteLine(ex.Message);
                }
            }
            else
            {
                Response.Write("<script>alert('Author Doesn't Exists in the DB');</script>");
            }
            
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox4.Text = "";
        }
    }
}