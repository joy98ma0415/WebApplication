using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication.LoginWebApp
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonChagePassword_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=myfirstazurewebapp20181111110357dbserver.database.windows.net;Initial Catalog=CollectionWebApp_db;User ID=joyma0415;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlDataAdapter sda = new SqlDataAdapter("select Password from RegistrationTable where Password = '" + TextBoxChangePassword.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count.ToString() == "1")
            {
                if (TextBoxChangePassword.Text == TextBoxConfirmPassword.Text)
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("update RegistrationTable set Password = '" + TextBoxConfirmPassword.Text + "' where Password = '" + TextBoxPassword.Text + "'", con);
                    cmd.ExecuteNonQuery();

                    con.Close();
                    LabelMsg.Text = "Successfully Updated.";

                    LabelMsg.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    LabelMsg.Text = "New Password and Confirm Password should be same.";
                }
            }
            else
            {
                LabelMsg.Text = "Please check your old password.";
            }
        }
    }
}