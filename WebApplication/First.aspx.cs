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
        private string gender;
        private string Marriage;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void EnterBtn_Click(object sender, EventArgs e)
        {
            if (RadioButtonMale.Checked == true)
            {
                gender = "Male";
            }
            else if (RadioButtonFemale.Checked == true)
            {
                gender = "Female";
            }
            else
            {
                gender = "請重新選擇";
            }

            if (CheckBoxSingle.Checked == true)
            {
                Marriage = "Single";
            }
            else if (CheckBoxMarried.Checked == true)
            {
                Marriage = "Married";
            }
            else
            {
                Marriage = "請重新選擇";
            }

            DateTime JoinDay = DateTime.Now.Date;
            String JoinDayString = JoinDay.ToString("yyyy-MM-dd");

            LblMsg0.Text = "姓名：" + NameTxt.Text + "<br />" + "<br />";
            LblMsg1.Text = "年齡：" + AgeTxt.Text + "<br />" + "<br />";
            LblMsg2.Text = "性別：" + gender + "<br />" + "<br />";
            LblMsg3.Text = "婚姻狀態：" + Marriage + "<br />" + "<br />";
            LblMsg.Text = "登入時間：" + JoinDayString + "<br />" + "<br />";
        }
    }
}