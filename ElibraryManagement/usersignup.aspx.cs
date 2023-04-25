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
    public partial class usersignup : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckUserIdIfExists())
            {
                Response.Write("<script>alert('User ID Already exists!! try using different ID.');</script>");
            }
            else
            {
                CreateUser();
            }
        }

        private bool CheckUserIdIfExists()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='"+ TextBox8.Text.Trim() + "';", conn);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable table = new DataTable();

                da.Fill(table);

                conn.Close();

                if (table.Rows.Count >= 1)
                {
                    return true;
                }

                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            return false;
        }

        private void CreateUser()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl " +
                    "(full_name, dob, contact, email, state, city, pincode, address, member_id, password, account_status)" +
                    "VALUES(@full_name, @dob, @contact, @email, @state, @city, @pincode, @address, @member_id, @password," +
                    "@account_status)", conn);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "Pending");

                int rows = cmd.ExecuteNonQuery();
                if (rows == 1)
                {
                    Response.Write("<script>alert('Account created successfully');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Account NOT created. Try Again later');</script>");
                }

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}