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
public partial class updatefare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("mainpage.aspx");
        }

    }
    protected void btn_add(object sender, EventArgs e)
    {
        if (trainnumber.Text != "" & selectclass.SelectedItem.Value != "" & fare.Text != "")
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            String query = "insert into Class(TrainNumber,Classtype,Fare) values('" + Convert.ToInt64(trainnumber.Text) + "','" + selectclass.SelectedItem.Value + "','" + fare.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            cmd.ExecuteReader();
            Response.Write("<script>alert('Fare added successfully!!')</script>");
            con.Close();
            trainnumber.Text = "";
            selectclass.Text = "--select--";
            fare.Text = "";
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All Fields Are Mandatory";
        }
    }
}