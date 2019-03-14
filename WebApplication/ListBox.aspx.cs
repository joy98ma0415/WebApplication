using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ListBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = 0;
            for (int i = 0; i < ListBox1.Items.Count; i++)
            {
                if (ListBox1.Items[i].Selected)
                {
                    ListBox2.Items.Add(ListBox1.Items[i].Text);
                    a = a + 1;

                    ListBox1.Items.Remove(ListBox1.Items[i].Text);
                    break;
                }
            }
            if (a == 0)
            {
                Label1.Text = "<font color=red>警告！您未點選任何一個子選項</font>";
            }
            else
            {
                Label1.Text = "<font color=green>右移移動成功</font>";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int b = 0;
            for (int j = 0; j < ListBox2.Items.Count; j++)
            {
                if (ListBox2.Items[j].Selected)
                {
                    ListBox1.Items.Add(ListBox2.Items[j].Text);
                    b = b + 1;

                    ListBox2.Items.Remove(ListBox2.Items[j].Text);
                    break;
                }
            }
            if (b == 0)
            {
                Label2.Text = "<font color=red>警告！您未點選任何一個子選項</font>";
            }
            else
            {
                Label2.Text = "<font color=green>左移移動成功</font>";
            }
        }
    }
}