using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignInPageDemo
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (password != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match.";
                return;
            }

            // Placeholder for storing the user information
            // You would typically save this information to a database
            bool isSignUpSuccessful = StoreUserInfo(username, password);

            if (isSignUpSuccessful)
            {
                // Redirect to the sign-in page after successful sign-up
                Response.Redirect("SignIn.aspx");
            }
            else
            {
                lblMessage.Text = "Sign up failed. Please try again.";
            }
        }

        // This is a placeholder method. Replace with actual data storage logic.
        private bool StoreUserInfo(string username, string password)
        {
            // Implement your data storage logic here
            // For example, save the user info to a database
            // Returning true for demonstration purposes
            return true;
        }
    }
}