using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addbalance : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }
    }
    string vou;
    protected void valid_Click(object sender, EventArgs e)
    {
        SqlDataReader rea;
        SqlCommand cmd;
        SqlConnection con;
        string strsql;
        strsql = "select * from Voucher where ((Voucher_code='" +voucher .Text.ToString() + "')and(Amount='" + RadioButtonList1.SelectedItem.Value.ToString() + "'))";
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        rea = cmd.ExecuteReader();
        if (rea.Read())
        {
            add.Enabled=true;
            lblerror.Text = "";
            img.Visible = true;
            Imag.Visible = false;
            
        }
        else
        {
            add.Enabled = false;
            lblerror.Text="Voucher code is not Valid!!";
            Imag.Visible = true;
            img.Visible = false;
        }
        
        
        rea.Close();
        con.Close();
        vou = voucher.Text;
        Session["vouchercode"] = vou;
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        lblerror.Text = Session["vouchercode"].ToString();
        SqlDataReader re;
        SqlCommand cm;
        SqlConnection co;
        string strsql1;
        strsql1 = "Select User_Current_Balance from userreg where Username='" + Session["username"] + "'";
        co = new SqlConnection();
        co.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        cm = new SqlCommand();
        co.Open();
        cm.Connection = co;
        cm.CommandText = strsql1;
        re = cm.ExecuteReader();
        if (re.Read())
        {
            string b = re["User_Current_Balance"].ToString();
            int abal = int.Parse(b);
            if (Session["username"] != null)
            {
                int rbal = abal + int.Parse(RadioButtonList1.SelectedItem.Value);
               
                SqlCommand c;
                SqlConnection conn;
                string strsql2;
                strsql2 = "Update userreg set User_Current_Balance = " + rbal.ToString() + "  where (Username ='" + Session["username"] + "')";
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                c = new SqlCommand(strsql2,conn);
                conn.Open();
                int i=c.ExecuteNonQuery();
                conn.Close();
                
                if (i>0)
                {
                    lblerror.Text = "Balance Added";
                    add.Enabled = false;
                        SqlDataReader datareader;
                        SqlCommand command;
                        SqlConnection connection;
                        string strsql3;
                        strsql3 = "Delete from Voucher where Voucher_code='" + Convert.ToInt64(Session["vouchercode"]) + "'";
                        connection = new SqlConnection();
                        connection.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                        command = new SqlCommand();
                        connection.Open();
                        command.Connection = connection;
                        command.CommandText = strsql3;
                        datareader = command.ExecuteReader();
                        if (datareader.Read())
                        {

                        } datareader.Close();
                        connection.Close();


                    } 

            }



            }



        } 
        
    


    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

}
