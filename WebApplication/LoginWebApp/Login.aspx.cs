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
    public partial class Login : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(@"Data Source=myfirstazurewebapp20181111110357dbserver.database.windows.net;Initial Catalog=CollectionWebApp_db;User ID=joyma0415;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from RegistrationTable where Email = '" + TextBoxEmail.Text + "' and Password = '" + TextBoxPassword.Text + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["Email"] = dr["Email"].ToString();
                Response.Redirect("LoginHome.aspx");
            }
            con.Close();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "現在時間是： " + DateTime.UtcNow.AddHours(08);
        }
    }
}