using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; //Login 
                    LinkButton2.Visible = true; //Sign Up

                    LinkButton3.Visible = false; //Logout 
                    LinkButton5.Visible = false; //Hello User

                    LinkButton6.Visible = true; //Admin Login
                    LinkButton11.Visible = false; //Author Mngmt
                    LinkButton12.Visible = false; //Publisher mngmt
                    LinkButton8.Visible = false; //Book Inventory
                    LinkButton9.Visible = false; //Book Issuing
                    LinkButton10.Visible = false; //Member Mngmt

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //Login 
                    LinkButton2.Visible = false; //Sign Up

                    LinkButton3.Visible = true; //Logout 
                    LinkButton5.Visible = true; //Hello User
                    LinkButton5.Text = "Hello " + Session["full_name"];

                    LinkButton6.Visible = false; //Admin Login
                    LinkButton11.Visible = false; //Author Mngmt
                    LinkButton12.Visible = false; //Publisher mngmt
                    LinkButton8.Visible = false; //Book Inventory
                    LinkButton9.Visible = false; //Book Issuing
                    LinkButton10.Visible = false; //Member Mngmt


                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //Login 
                    LinkButton2.Visible = false; //Sign Up

                    LinkButton3.Visible = true; //Logout 
                    LinkButton5.Visible = true; //Hello User
                    LinkButton5.Text = "Hello Admin";

                    LinkButton6.Visible = false; //Admin Login
                    LinkButton11.Visible = true; //Author Mngmt
                    LinkButton12.Visible = true; //Publisher mngmt
                    LinkButton8.Visible = true; //Book Inventory
                    LinkButton9.Visible = true; //Book Issuing
                    LinkButton10.Visible = true; //Member Mngmt

                }
                
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Redirecting to Admin Login Page");
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Redirecting to Author Management Page");
            Response.Redirect("authermanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Redirecting to Publisher Management Page");
            Response.Redirect("publishermanagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Redirecting to Book Issuing Page");
            Response.Redirect("bookissueing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Redirecting to Member Management Page");
            Response.Redirect("membermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Redirecting to Book Inventory Page");
            Response.Redirect("bookinventory.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Redirecting to User Login Page");
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Redirecting to View Books Page");
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Redirecting to Sign Up Page");
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["full_name"] = null;
            Session["role"] = null;
            Session["account_status"] = null;

            Response.Redirect("home.aspx");
        }
    }
}