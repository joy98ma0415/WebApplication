using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication
{
    public partial class PhoneBook : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollectionWebApp_dbConnectionString"].ConnectionString);
        private SqlCommand cmd;
        private SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null && Request.QueryString["action"] != null)
                {
                    string id = Request.QueryString["id"];
                    string action = Request.QueryString["action"];
                    string name = null;
                    string contact = null;
                    string location = null;
                    con.Open();
                    cmd = new SqlCommand("Select * from PhoneBook where Id='" + id + "'", con);
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        name = dr["Name"].ToString();
                        contact = dr["Contact"].ToString();
                        location = dr["Location"].ToString();
                    }
                    con.Close();
                    if (action == "1")
                    {
                        con.Open();
                        cmd = new SqlCommand("Delect from PhoneBook where id='" + id + "'", con);
                        int checkD = cmd.ExecuteNonQuery();
                        if (checkD == 1)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "deleted", "<script>alert('Contact Deleted...！'); location='PhoneBook.aspx';</script>");
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "fail", "<script>alert('Failed...！');</script>");
                        }
                        con.Close();
                    }
                    else if (action == "2")
                    {
                        ButtonAdd.Enabled = false;
                        ButtonUpdate.Enabled = true;
                        Session["id"] = id;
                        TextBoxName.Text = name;
                        TextBoxContact.Text = contact;
                        TextBoxLocation.Text = location;
                    }
                }
                con.Open();
                cmd = new SqlCommand("select * from PhoneBook", con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    GridViewPhoneBook.DataSource = dr;
                    GridViewPhoneBook.DataBind();
                }
                con.Close();
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into PhoneBook values(@Name,@Contact,@Location)", con);
            cmd.Parameters.Add("@Name", TextBoxName.Text);
            cmd.Parameters.Add("@Contact", TextBoxContact.Text);
            cmd.Parameters.Add("@Location", TextBoxLocation.Text);
            int count = cmd.ExecuteNonQuery();
            if (count == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "added", "<script>alert('Contact Added..！');location='PhoneBook.aspx';</script>");
                TextBoxContact.Text = "";
                TextBoxName.Text = "";
                TextBoxLocation.Text = "";
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "failed", "<script>alert('Failed, please try again..！');</script>");
            }
            con.Close();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("update PhoneBook set Name=@Name, Contact=@Contact, Loaction=@Location where id='" + Session["id"] + "'", con);
            cmd.Parameters.Add("@Name", TextBoxName.Text);
            cmd.Parameters.Add("@Contact", TextBoxContact.Text);
            cmd.Parameters.Add("@Location", TextBoxLocation.Text);
            int checkD = cmd.ExecuteNonQuery();
            if (checkD == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "updated", "<script>alert('Contact Updated..！');location='PhoneBook.aspx';</script>");
                TextBoxName.Text = "";
                TextBoxContact.Text = "";
                TextBoxLocation.Text = "";
                ButtonAdd.Enabled = true;
                ButtonUpdate.Enabled = false;
                Session.Abandon();
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Updatefail", "<script>alert('Failed..！');</script>");
            }
            con.Close();
        }
    }
}