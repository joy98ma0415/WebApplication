using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication.DataList
{
    public partial class DataList : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            DataList1.HeaderStyle.HorizontalAlign = HorizontalAlign.Center;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.DataSource = DA.CreateDataTableData();
            DataList1.DataBind();
        }

        protected void DataList1_ItemCreated(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                Label headerLabel = new Label();
                headerLabel.Text = "標題";
                e.Item.Controls.Add(headerLabel);
            }
        }
    }
}