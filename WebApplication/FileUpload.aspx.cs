using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            bool fileValld = false;
            if (this.FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
                string[] restrictExtension = { ".gif", ".jpg", ".bmp", ".png" };
                for (int i = 0; i < restrictExtension.Length; i++)
                {
                    if (fileExtension == restrictExtension[i])
                    {
                        fileValld = true;
                    }
                }
                if (fileValld == true)
                {
                    try
                    {
                        this.Image1.ImageUrl = "~/images/" + FileUpload1.FileName;
                        this.FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName);
                        this.LabelMsg.Text = "文件上傳成功";
                        this.LabelMsg.Text += "<br />";
                        this.LabelMsg.Text += "<li>" + "原文件路徑：" + this.FileUpload1.PostedFile.FileName;
                        this.LabelMsg.Text += "<br />";
                        this.LabelMsg.Text += "<li>" + "文件大小： " + this.FileUpload1.PostedFile.ContentLength + "字元";
                        this.LabelMsg.Text += "<br />";
                        this.LabelMsg.Text += "<li>" + "文件類型： " + this.FileUpload1.PostedFile.ContentType;
                    }
                    catch
                    {
                        this.LabelMsg.Text = "文件上傳未成功";
                    }
                    finally
                    {
                    }
                }
                else
                {
                    this.LabelMsg.Text = "只能夠上傳.gif , .jpg , .bmp , .png的文件";
                }
            }
        }
    }
}