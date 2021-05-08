using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mainpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            if (Session["admin"] == null)
            { Response.Write("<script> alert('Your sesssion has been expired....'); window.location.href='mainpage.aspx'</script>");}
        }
    }
    protected void Login_Click(object sender, EventArgs e)
    {
        string u = UserName.Text;
        string p = Password.Text;
        if (u == "admin" & p == "admin123")
        {
            Session["admin"] = UserName.Text;
            Response.Redirect("addtrain.aspx"); 
        }
        else
        {
            Response.Write("<script>alert('Invalid Login please check username and password')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/userlogin.aspx");
    }
}