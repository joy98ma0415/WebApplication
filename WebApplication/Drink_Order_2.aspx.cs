using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace WebApplication
{
    public partial class Drink_Order_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Order_Click(object sender, EventArgs e)
        {
            SqlDataSource_Order_M.Insert();
            Button1_Order.Visible = false;

            //------ 取得訂單編號 -------------------------------------------
            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["CollectionWebApp_dbConnectionString"].ConnectionString);
            Conn.Open();   //---- 連結DB

            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("select top 1 id from drink_order_m order by id DESC", Conn);

            dr = cmd.ExecuteReader();   //---- 執行SQL指令，取出資料
            dr.Read();
            Session["order_m_id"] = dr["id"];   //重點在此！！紀錄下這筆訂單的id編號！
            cmd.Cancel();
            dr.Close();
            Conn.Close();
            Conn.Dispose();

            Label1_order_id.Text = "訂單編號：" + Session["order_m_id"] + "----[本訂單，客戶資料輸入成功]";
        }

        protected void Button2_Drink_Click(object sender, EventArgs e)
        {
            if (Session["order_m_id"] == null)
            {
                Response.Write("Error!!  必須先完成最上方「客戶資料」輸入，以取得訂單編號！");
                Response.End();
            }

            if (Label2_drink_name.Text == "")
            {
                Response.Write("Error!!  忘記選飲料名稱！");
                Response.End();
            }

            if (TextBox4_no.Text == "")
            {
                Response.Write("Error!!  請輸入訂購幾杯？");
                Response.End();
            }

            SqlDataSource_Order_D.Insert();
            //完成新增一筆資料，寫入 drink_order_d資料表。
            //新增完成後，底下的 GridView立刻重新資料繫結！！展現出最新的飲料狀態
            //-----------------------------------------------
            //跟上一隻程式（Drink_order.aspx）的差異所在!!!!!
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DropDownList挑選飲料後，畫面上的Label控制項 (Label2_drink_name)會出現飲料的名稱
            Label2_drink_name.Text = DropDownList1.SelectedItem.Text;
        }

        protected void SqlDataSource_Order_D_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            //新增完成後，底下的 GridView立刻重新資料繫結！！展現出最新的飲料狀態
            //-----------------------------------------------
            //跟上一隻程式（Drink_order.aspx）的差異所在!!!!!
            GridView1.DataSourceID = "SqlDataSource_Order_D";
        }
    }
}