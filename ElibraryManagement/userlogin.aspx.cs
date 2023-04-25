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
    public partial class userlogin : System.Web.UI.Page
    {
        string strconn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strconn);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='" + TextBox1.Text.Trim() + "' AND password='"+ TextBox4.Text.Trim() + "';", conn);

                SqlDataReader dr = cmd.ExecuteReader();
                Console.WriteLine("Inside login function");
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Hello " + dr.GetValue(0) + "!');</script>");
                        Session["username"] = dr.GetValue(8).ToString();
                        Session["full_name"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["account_status"] = dr.GetValue(10).ToString();
                    }
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials...');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}