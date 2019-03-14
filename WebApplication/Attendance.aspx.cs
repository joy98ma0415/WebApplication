using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication
{
    public partial class Attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Mark Attendance for " + DateTime.Now.ToShortDateString();
        }

        protected void ButtonAttendance_Click(object sender, EventArgs e)
        {
        }

        private void saveattendance(int rollno1, string studentname1, string dateofclass1, string status1, string sclass1)
        {
            string query = "insert into StudentAttendance(rollno,studentname,dateofclass,attendancestatus,class) values ('" + rollno1 + "' , '" + studentname1 + "' , '" + dateofclass1 + "' , '" + status1 + "' , '" + sclass1 + "')";
            string mycon = "Data Source=myfirstazurewebapp20181111110357dbserver.database.windows.net;Initial Catalog=CollectionWebApp_db;User ID=joyma0415;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection conn = new SqlConnection(mycon);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                int rollno1 = Convert.ToInt32(row.Cells[0].Text);
                string studentname1 = row.Cells[1].Text;
                RadioButton radio1 = (row.Cells[2].FindControl("RadioButton1") as RadioButton);
                RadioButton radio2 = (row.Cells[2].FindControl("RadioButton2") as RadioButton);
                string status1;
                if (radio1.Checked)
                {
                    status1 = "Present";
                }
                else
                {
                    status1 = "Absent";
                }
                string dateofclass1 = DateTime.Now.ToShortDateString();
                string sclass1 = DropDownList1.SelectedItem.Text;
                saveattendance(rollno1, studentname1, dateofclass1, status1, sclass1);
            }
            Label2.Text = "Attendance Has Been Saved Successfully.";
        }
    }
}