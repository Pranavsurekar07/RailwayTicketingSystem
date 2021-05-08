using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }
    }
    protected void update_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlDataAdapter sda = new SqlDataAdapter("select Password from userreg where Username='" + Session["username"]+ "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count>0)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update userreg set Password='" + confirmpassword.Text + "' where Password='" + oldpassword.Text + "'",con);
            cmd.ExecuteNonQuery();

            con.Close();
            errormsg.Text = "Successfully Updated ";
            errormsg.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            errormsg.Text = "New password and confirm password should be same!!";
        }
    }
}