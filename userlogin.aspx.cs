using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();  
            string username = UserName.Text;  
            string password = Password.Text;  
            SqlCommand cmd = new SqlCommand("select Username,Password from userreg where Username='" + UserName.Text.Trim() + "'and Password='" + Password.Text.Trim() + "'", con);  
            SqlDataAdapter da = new SqlDataAdapter(cmd);  
            DataTable dt = new DataTable();  
            da.Fill(dt);  
            if (dt.Rows.Count > 0)  
            {
                Session["username"] = username;
                Response.Write("<script language='javascript'>window.alert('**Login Successful** ');window.location='home.aspx';</script>");
                
                
            }  
            else  
            {
                Response.Write("<script>alert('Invalid Login please check username and password')</script>");
                Session["forusername"] = username;
            }  
            con.Close();  
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/register.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgotpassword.aspx");
    }
}