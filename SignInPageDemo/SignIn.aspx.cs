using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignInPageDemo
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Replace with your authentication logic
            if (username == "admin" && password == "password")
            {
                // Redirect to another page or perform any action on successful login
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password";
            }
        }
    }
}