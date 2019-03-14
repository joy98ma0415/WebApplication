using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebApplication.App_Code
{
    public class DA
    {
        public static DataTable CreateDataTableData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Name", typeof(string)));
            dt.Columns.Add(new DataColumn("Age", typeof(int)));
            dt.Columns.Add(new DataColumn("Job Title", typeof(string)));
            dt.Columns.Add(new DataColumn("Image", typeof(string)));

            DataRow row1 = dt.NewRow();
            row1["Name"] = "Steve Jobs";
            row1["Age"] = 56;
            row1["Job Title"] = "Apple CEO";
            row1["Image"] = "~/images/stevejobs.jpg";
            dt.Rows.Add(row1);

            DataRow row2 = dt.NewRow();
            row2["Name"] = "Bill Gates";
            row2["Age"] = 64;
            row2["Job Title"] = "Microsoft Chairman";
            row2["Image"] = "~/images/billgates.jpg";
            dt.Rows.Add(row2);

            DataRow row3 = dt.NewRow();
            row3["Name"] = "Jeff Bezos";
            row3["Age"] = 29;
            row3["Job Title"] = "Amazon promoter";
            row3["Image"] = "~/images/t019442ca33d17cbd8b.png";
            dt.Rows.Add(row3);

            return dt;
        }
    }
}