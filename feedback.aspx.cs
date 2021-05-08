using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            String query = "insert into feedback(username,email,comment)values('" + UserName.Text + "','" + email.Text + "','" + txtcomment.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteReader();
            Response.Write("<script>alert('Feedback sent successfully')</script>");
            lblerror.Text = "Thank You for your valuable Response!!";
            con.Close();
            
            UserName.Text = "";
            email.Text = "";
            txtcomment.Text = "";
        
    }
}