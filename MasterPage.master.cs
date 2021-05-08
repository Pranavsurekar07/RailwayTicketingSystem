using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlDataReader rea;
    protected void Page_Load(object sender, EventArgs e)
    {
        todaydate.Text="Date : "+ System.DateTime.Now.ToString("D");
        if (Session["username"] != null)
        {
            LabUsername.Text = "Hello, " + Session["username"].ToString()+"  Welcome Back";
            string strsql;
            strsql = "select User_Current_Balance from userreg where Username='" + Session["Username"]+ "'";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = strsql;
            rea = cmd.ExecuteReader();
            if (rea.HasRows == true)
            {
                while (rea.Read())
                {
                    lblbalance.Text ="Wallet Balance Rs."+ (rea["User_Current_Balance"].ToString());
                }
            }

            rea.Close();
            con.Close();
            
            btnlogin.Visible = false;
            btnlogout.Visible = true;
            chgpass.Visible = true;
        }
        else
        {
            LabUsername.Text = "Hello Visitor, Welcome!!!";
            btnlogin.Visible = true;
            btnlogout.Visible = false;
            chgpass.Visible = false;
        }
    }


    protected void btnlogout_Click(object sender, EventArgs e)
    {
        
        Session.Abandon();
        Session.Clear();
        Session["username"] = null;
        Session.RemoveAll();
        Response.Redirect("userlogin.aspx");
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("userlogin.aspx");
    }
    protected void btnchgpass_Click(object sender, EventArgs e)
    {
        Response.Redirect("changepassword.aspx");
    }
}
