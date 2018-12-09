using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class DropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panelChoose.Visible = false;
            panelHTML.Visible = false;
            PanelCSS.Visible = false;
            PanelJavaScript.Visible = false;
            PanelAspnet.Visible = false;
            PanelPHP.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "請選擇")
            {
                panelChoose.Visible = true;
            }
            else if (DropDownList1.SelectedValue == "HTML")
            {
                panelChoose.Visible = false;
                panelHTML.Visible = true;
                PanelCSS.Visible = false;
                PanelJavaScript.Visible = false;
                PanelAspnet.Visible = false;
                PanelPHP.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "CSS")
            {
                panelHTML.Visible = false;
                PanelCSS.Visible = true;
                PanelJavaScript.Visible = false;
                PanelAspnet.Visible = false;
                PanelPHP.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "JavaScript")
            {
                panelHTML.Visible = false;
                PanelCSS.Visible = false;
                PanelJavaScript.Visible = true;
                PanelAspnet.Visible = false;
                PanelPHP.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "Aspnet")
            {
                panelHTML.Visible = false;
                PanelCSS.Visible = false;
                PanelJavaScript.Visible = false;
                PanelAspnet.Visible = true;
                PanelPHP.Visible = false;
            }
            else
            {
                panelHTML.Visible = false;
                PanelCSS.Visible = false;
                PanelJavaScript.Visible = false;
                PanelAspnet.Visible = false;
                PanelPHP.Visible = true;
            }
        }
    }
}