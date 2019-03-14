using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebApplication.Vote
{
    public partial class Easy_Vote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonVote_Click(object sender, EventArgs e)
        {
            for (int i = 0; i <= (RadioButtonList1.Items.Count); i++)
            {
                if (RadioButtonList1.Items[i].Selected == false)
                {
                    continue;    //--直接跳到的 For迴圈的下一輪，繼續執行。
                }

                //************************************************
                SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["CollectionWebApp_dbConnectionString"].ConnectionString);
                Conn.Open();   //---- 連結DB

                //-- 1). 第一種寫法。使用兩次SQL指令來完成之
                //**********************************************
                //** 但這樣的寫法，可以防範第一次（忘了手動在 Vote_1 Table裡面加一筆記錄的窘境）
                //**********************************************(start)
                //SqlDataReader dr = null;
                //SqlCommand cmd = new SqlCommand("select top 1 * from Vote_1 order by id DESC", Conn);
                //dr = cmd.ExecuteReader();   //---- 執行SQL指令，取出每一位候選人的得票數

                // if(dr.HasRows())  //-- 資料表裡面有紀錄才會運作，不然就報錯。
                // {
                //      dr.Read();
                //      int vote_no = dr[i + 1];

                //---- 把得票數加一，然後寫回去！
                //--  SQL範例-- update 資料表 set 欄位A = (欄位A + 1)
                //      String Update_SQLstr = "Update Vote_1 set vote_" + (i + 1) + " = " + (vote_no++) + " where id = " + dr["id"];
                //      if (dr != null)
                //      {
                //          cmd.Cancel();
                //          dr.Close();
                //      }
                //      SqlCommand cmd_vote = new SqlCommand(Update_SQLstr, Conn);
                //      cmd_vote.ExecuteNonQuery();
                // }
                //************************************************(end)

                //-- 2). 第二種寫法，一行就改進了！
                //           SQL範例-- update 資料表 set 欄位A = 欄位A + 1
                //**********************************************
                //** 但這樣的寫法，請您必須手動在 Vote_1 Table裡面加一筆記錄，才不會出錯！
                //**********************************************
                int j = (i + 1);
                String Update_SQLstr = "Update Vote_1 set vote_" + j.ToString() + " = vote_" + j.ToString() + " + 1 where id = (select top 1 id from vote_1 order by id DESC)";

                SqlCommand cmd_vote = new SqlCommand(Update_SQLstr, Conn);
                cmd_vote.ExecuteNonQuery();

                //---- Close the connection when done with it.
                if (Conn.State == ConnectionState.Open)
                {
                    Conn.Close();
                    Conn.Dispose();
                }

                break;  //--完成後，脫離 For迴圈
                        //************************************************
            }

            //--投票完成, 直接到下一個網站看結果!
            Response.Redirect("EasyVote_End.aspx");
        }
    }
}