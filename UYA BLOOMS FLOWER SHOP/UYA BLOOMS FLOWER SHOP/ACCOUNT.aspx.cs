using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace UYA_BLOOMS_FLOWER_SHOP
{
    public partial class ACCOUNT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Code to execute when the page loads
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Check if any of the text fields are empty
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                // Display a message indicating that all fields are required
                Response.Write("<script>alert('Please fill in all fields.')</script>");
                return; // Exit the event handler
            }


            string connectionString = "Data Source=GINO;Initial Catalog=asplogin;Integrated Security=True;TrustServerCertificate = True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                string loginQuery = "SELECT COUNT(*) FROM login WHERE Email=@Email AND Password=@Password";
                SqlCommand cmd = new SqlCommand(loginQuery, con);
                cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text);

                int? count = (int?)cmd.ExecuteScalar();

                if (count.HasValue && count.Value > 0)
                {
                    Response.Write("<script>alert('Login Successful')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Login Unsuccessful')</script>");
                }
            }
        }
    }
}