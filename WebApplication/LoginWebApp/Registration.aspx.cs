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
    public partial class Registration : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(@"Data Source=myfirstazurewebapp20181111110357dbserver.database.windows.net;Initial Catalog=CollectionWebApp_db;User ID=joyma0415;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        private string gender;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            if (RadioButtonMale.Checked == true)
            {
                gender = "Male";
            }
            else if (RadioButtonFeMale.Checked == true)
            {
                gender = "Female";
            }

            con.Open();
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into RegistrationTable values ('" + TextBoxUserName.Text + "' , '" + TextBoxEmail.Text + "' , '" + TextBoxPassword.Text + "' , '" + gender + "')";
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("LoginHome.aspx");
            }
        }
    }
}