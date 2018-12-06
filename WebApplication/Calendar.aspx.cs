using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace WebApplication
{
    public partial class Calendar : System.Web.UI.Page
    {
        private string[][] holidays = new String[13][];

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < 13; i++)
            {
                holidays[i] = new String[32];
            }

            holidays[1][1] = "元旦";
            holidays[2][14] = "情人節";
            holidays[2][28] = "和平紀念日";
            holidays[3][8] = "婦女節";
            holidays[3][29] = "青年節";
            holidays[4][1] = "愚人節";
            holidays[4][4] = "兒童節";
            holidays[4][5] = "清明節";
            holidays[5][1] = "勞動節";
            holidays[5][31] = "Joy生日";
            holidays[8][8] = "父親節";
            holidays[9][28] = "教師節";
            holidays[10][10] = "國慶日";
            holidays[10][31] = "萬聖節";
            holidays[12][24] = "平安夜";
            holidays[12][25] = "聖誕節";
            holidays[12][31] = "跨年夜";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //--參考網頁  http://msdn.microsoft.com/zh-tw/library/e057ff0d(VS.80).aspx
            //--呼叫日曆控制項中 SelectedDates 集合的 .Add()方法。
            //--您可以依任何順序加入日期，這是因為集合會為您排序所加入的日期。
            //--由於集合也強制唯一性，因此如果您加入的日期已存在，集合會予以忽略。
            int myYear = Convert.ToInt32(DropDownList1.SelectedValue);
            int myMonth = Convert.ToInt32(DropDownList2.SelectedValue);

            Calendar1.TodaysDate = new DateTime(myYear, myMonth, 1);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            LblMsg.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            // 建立農曆類別實體
            TaiwanLunisolarCalendar myTaiwan = new TaiwanLunisolarCalendar();
            // 取得對應到的農曆月&日
            int myMonth = myTaiwan.GetMonth(e.Day.Date);
            int myDay = myTaiwan.GetDayOfMonth(e.Day.Date);

            string myLunisolarDate = string.Format("{0}/{1}", myMonth, myDay);
            string myLunisolarDateToolTip = string.Format("農曆 {0}月{1}日", myMonth, myDay);

            Label myLabel = new Label();
            myLabel.Text = myLunisolarDate;
            myLabel.ForeColor = System.Drawing.Color.Blue;
            myLabel.Font.Size = FontUnit.XSmall;
            myLabel.ToolTip = myLunisolarDateToolTip;

            e.Cell.Controls.Add(myLabel);

            CalendarDay day = ((DayRenderEventArgs)e).Day;
            TableCell cell = ((DayRenderEventArgs)e).Cell;
            if (e.Day.IsOtherMonth)
            {
                e.Cell.Controls.Clear();
            }
            else
            {
                try
                {
                    string hol = holidays[e.Day.Date.Month][e.Day.Date.Day];
                    if (hol != string.Empty)
                    {
                        e.Cell.Controls.Add(new LiteralControl("<br><font color=blue size=2>" + hol + "</font>"));
                    }
                }
                catch (Exception exc)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('" + exc.ToString() + "')</script>");
                }
            }
        }
    }
}