using System;
using System.Data.SqlClient;

namespace UYA_BLOOMS_FLOWER_SHOP
{
    public partial class SIGNUP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Code to execute when the page loads
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Check if any of the text fields are empty
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text) || string.IsNullOrWhiteSpace(TextBox3.Text) || string.IsNullOrWhiteSpace(TextBox4.Text))
            {
                // Display a message indicating that all fields are required
                Response.Write("<script>alert('Please fill in all fields.')</script>");
                return; // Exit the event handler
            }

            string connectionString = "Data Source=GINO;Initial Catalog=asplogin;Integrated Security=True;TrustServerCertificate = True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Insert into signup table
                string insertSignupQuery = "INSERT INTO signup (FirstName, LastName, Email, Password) VALUES (@FirstName, @LastName, @Email, @Password)";
                SqlCommand signupCmd = new SqlCommand(insertSignupQuery, con);
                signupCmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                signupCmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
                signupCmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                signupCmd.Parameters.AddWithValue("@Password", TextBox4.Text);

                int signupRowsAffected = signupCmd.ExecuteNonQuery();

                // Insert into Login table
                string insertLoginQuery = "INSERT INTO login (Email, Password) VALUES (@Email, @Password)";
                SqlCommand loginCmd = new SqlCommand(insertLoginQuery, con);
                loginCmd.Parameters.AddWithValue("@Email", TextBox3.Text); // Use the same email from sign-up
                loginCmd.Parameters.AddWithValue("@Password", TextBox4.Text); // Use the same password from sign-up

                int loginRowsAffected = loginCmd.ExecuteNonQuery();

                if (signupRowsAffected > 0 && loginRowsAffected > 0)
                {
                    Response.Write("<script>alert('Sign up successful')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Sign up unsuccessful')</script>");
                }
            }
        }
    }
}