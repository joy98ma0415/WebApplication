using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication.ImageCRUD
{
    public partial class ImageCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            show_data();
        }

        private void show_data()
        {
            DirectoryInfo directory = new DirectoryInfo(MapPath("~/data/"));
            FileInfo[] files = directory.GetFiles();
            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("path");
            for (int i = 0; i < files.Length; i++)
            {
                DataRow dataRow = dataTable.NewRow();
                dataRow["path"] = "~/data/" + files[i].Name;
                dataTable.Rows.Add(dataRow);
            }
            DataList1.DataSource = dataTable;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string path = "~/data/" + Guid.NewGuid().ToString() + "" + Path.GetExtension(FileUpload1.FileName);
                FileUpload1.SaveAs(MapPath(path));
                Label1.Text = "Save Successfully.";
                Label1.ForeColor = System.Drawing.Color.Green;
                show_data();
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            File.Delete(MapPath(e.CommandArgument.ToString()));
            Label1.Text = "File Delete Successfully.";
            Label1.ForeColor = System.Drawing.Color.Red;
            show_data();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label2.Text = "現在時間是： " + DateTime.UtcNow.AddHours(08);
        }
    }
}