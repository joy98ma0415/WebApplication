using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication.LoginWebApp
{
    public partial class LoginHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");
            LabelUserName.Text = "Welcome, " + Session["username"];
        }

        protected void Button1SignOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "現在時間是： " + DateTime.UtcNow.AddHours(08);
        }
    }
}