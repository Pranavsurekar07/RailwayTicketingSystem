using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addvouchers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        valid.Enabled = false;
        if (Session["admin"] == null)
        {
            Response.Redirect("mainpage.aspx");
        }

        
    }
    protected void addvoucher_Click(object sender, EventArgs e)
    {
        
        SqlCommand cmd;
        SqlConnection con;
        string strsql;
        strsql = "insert into Voucher (Voucher_code,Amount) values('"+Convert.ToInt64(voucher.Text.ToString())+"','"+RadioButtonList1.SelectedItem.Value+"')";
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        cmd = new SqlCommand(strsql,con);
        con.Open();
        cmd.ExecuteReader();
        lblerror.Text = "Voucher added Successfully";
        con.Close();
        voucher.Text = "";
        
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        valid.Enabled = true;
        Random rnd = new Random();
        Random rnd1 = new Random();
        voucher.Text = rnd.Next(50000).ToString() + rnd1.Next(548775).ToString();
    }

    protected void voucher_TextChanged(object sender, EventArgs e)
    {

    }
}