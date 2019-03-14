using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication.Vote
{
    public partial class EasyVote_End : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["CollectionWebApp_dbConnectionString"].ConnectionString);
            Conn.Open();   //---- 連結DB

            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("select top 1 * from Vote_1 order by id DESC", Conn);
            dr = cmd.ExecuteReader();   //---- 執行SQL指令，取出每一位候選人的得票數
            dr.Read();

            int vote_no = 0;    //--給一個初始值，VS 比較不會出現警告訊息
            String end_str = null;  //--給一個初始值，VS 比較不會出現警告訊息

            //-- 列出每一筆資料，有幾個欄位（候選人）。
            for (int i = 1; i < (dr.FieldCount); i++)
            {
                vote_no = (int)dr[i];
                end_str = end_str + "<p>" + i + "號候選人的得票數：";
                end_str = end_str + "<img src='images/sum" + i + ".gif' height=10 width=" + (vote_no * 10) + ">";
                //—控制圖片寬度，以長條圖來展示得票數。
                end_str = end_str + vote_no + "</p>";
            }

            Label1.Text = end_str;

            if (dr != null)
            {
                cmd.Cancel();
                dr.Close();
            }

            //---- Close the connection when done with it.
            if (Conn.State == ConnectionState.Open)
            {
                Conn.Close();
                Conn.Dispose();  //---- 一開始宣告有用到 New的,最後必須以 .Dispose()結束
            }
        }
    }
}