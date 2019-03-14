using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Calculate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonEnter_Click(object sender, EventArgs e)
        {
            var number1 = Convert.ToDecimal(TextBoxInNum1.Text);
            var number2 = Convert.ToDecimal(TextBoxInNum2.Text);
            var optr = this.DropDownList1.SelectedValue;
            var result = 0m;

            try
            {
                if (optr == "+")
                {
                    result = number1 + number2;
                }
                else if (optr == "-")
                {
                    result = number1 - number2;
                }
                else if (optr == "*")
                {
                    result = number1 * number2;
                }
                else if (optr == "/")
                {
                    result = number1 / number2;
                }
                else
                {
                    result = number1 % number2;
                }
                TextBoxResult.Text = result.ToString();
            }
            catch
            {
                Response.Write("Error！No number input, please check");
            }
        }
    }
}