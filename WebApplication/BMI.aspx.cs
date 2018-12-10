using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class BMI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void EnterBtn_Click(object sender, EventArgs e)
        {
            double Height;
            double Weight;
            double BMI;
            Height = Convert.ToDouble(HeightTextBox.Text);
            Weight = Convert.ToDouble(WeightTextBox.Text);
            BMI = Weight / (Height * Height);
            string Message = "";

            Message += !(BMI > 18.5) ? "體重過輕" : "";
            Message += (BMI >= 18.5 && BMI < 24) ? "體重正常" : "";
            Message += (BMI >= 24 && BMI < 35) ? "體重過重" : "";
            Message += (BMI >= 35) ? "嚴重肥胖" : "";

            OutputLabelBMI.Text = "BMI = " + BMI.ToString("#.##");
            OutputLabel評語.Text = "評語：" + Message;
            OutputLabelMessage.Text = "身高 = " + Height * 100 + "公分" + "," + "體重 = " + Weight + "公斤";
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label3.Text = "現在時間是： " + DateTime.UtcNow.AddHours(08);
        }
    }
}