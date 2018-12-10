using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Application["content"] == null)
                {
                    Application["content"] = "";
                }
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //Timer,每秒更新一次聊天內容
            this.TextBox1.Text = Application["content"].ToString();
            Label1.Text = "" + DateTime.UtcNow.AddHours(08);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //清除所有聊天內容
            Application["content"] = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //判斷輸入內容是否為空白，是就不做事
            if (this.TextBox2.Text != "")
            {
                //判斷名字是否為空白，是就預設為Guest
                if (this.TextBox3.Text == "")
                {
                    Application["content"] = Application["content"] + "\n" + "Guest" + ":" + Label1.Text + "\n" + this.TextBox2.Text + "\n";
                }
                else
                {
                    Application["content"] = Application["content"] + "\n" + Label1.Text + "\n" + this.TextBox3.Text + ":" + this.TextBox2.Text + "\n";
                }

                //清除內容
                this.TextBox2.Text = "";
            }
        }
    }
}