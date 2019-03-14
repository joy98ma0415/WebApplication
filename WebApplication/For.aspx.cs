using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class For : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int num;
            int sum = 0;
            num = Convert.ToInt16(TextBox1.Text);
            for (int i = 1; i <= num; i += 2)
            {
                sum += i;
            }
            LblMsg.Text = ("小於等於 " + num + "的奇數為 " + sum);
        }
    }
}