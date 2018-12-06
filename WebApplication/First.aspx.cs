using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class First : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Timer1.Interval = 1000;
        }

        protected void EnterBtn_Click(object sender, EventArgs e)
        {
            DateTime JoinDay = DateTime.Now.Date;
            String JoinDayString = JoinDay.ToString("yyyy-MM-dd");

            LblMsg0.Text = "姓名：" + NameTxt.Text + "<br />" + "<br />";
            LblMsg1.Text = "年齡：" + AgeTxt.Text + "<br />" + "<br />";
            LblMsg2.Text = "性別：" + SexTxt.Text + "<br />" + "<br />";
            LblMsg3.Text = "婚姻狀態：" + MarriageTxt.Text + "<br />" + "<br />";
            LblMsg.Text = "登入時間：" + JoinDayString + "<br />" + "<br />";
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            String dtString = dt.ToString("yyyy-MM-dd HH:mm:ss");
            LblMsg4.Text = "現在時間： " + dtString;
        }
    }
}