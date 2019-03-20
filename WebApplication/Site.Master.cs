using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class SiteMaster : MasterPage
    {
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "現在時間是： " + DateTime.UtcNow.AddHours(08).ToString("yyyy-MM-dd HH:mm:ss");
            Label1.ForeColor = System.Drawing.Color.CadetBlue;
        }
    }
}