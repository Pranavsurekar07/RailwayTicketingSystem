using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class cancelticket : System.Web.UI.Page
{
    SqlConnection con= new SqlConnection();
    SqlCommand cmd;
    SqlDataReader rea;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }
        ticketnumber.Focus();
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["q"] != null)
            {
                lblerror.Text = "The Ticked is deleted successfully.";
            }

        }
        else
        {
            lblerror.Text = "";
        }
    }
    protected void btndisplay_Click(object sender, EventArgs e)
    {
        string strsql = "Select * from Ticket where PNR = '" + ticketnumber.Text.Trim() + "'";
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        rea = cmd.ExecuteReader();
        if (rea.Read())
        {
            pnl2.Visible = true;
            lblerror.Text = "";
            litpnr.Text = rea["PNR"].ToString();
            litname.Text = rea["Name"].ToString();
            littrainnumber.Text = rea["TrainNumber"].ToString();
            trainname.Text = rea["TrainName"].ToString();
            litdestination.Text = rea["Destination"].ToString();
            litsource.Text = rea["Source"].ToString();
            litdeparturedate.Text = rea["Date"].ToString();
            litdeparturetime.Text = rea["Departure"].ToString();
            littotalseat.Text = rea["TotalSeat"].ToString();
            litseat.Text = rea["SeatNumbers"].ToString();
            littotalfare.Text = rea["Fare"].ToString();
            
            litStatus.Text = rea["Status"].ToString();
        }
        else
        {
            lblerror.Text = "Plz Enter the Correct PNR Number";
            
            pnl2.Visible = false;

        }
        con.Close();

    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        if (litStatus.Text == "Cancel")
        {
            lblerror.Text = "This Ticket is already deleted.";

            pnl2.Visible = false;

        }
        else
        {
            DateTime tickettime = System.DateTime.Parse(litdeparturetime.Text);
            int diffofdate = System.DateTime.Today.Date.CompareTo(System.DateTime.Parse(litdeparturedate.Text.ToString()));
            if (diffofdate >= 1)
            {
                lblerror.Text = "::You cannot Cancel the Back Date Ticket:: Thanks";
            }

            else if ((diffofdate == 0 && tickettime > System.DateTime.Now.AddHours(2.00)) || (diffofdate < 0))
            {


                string[] strseat = litseat.Text.Split(',');
                for (int j = 0; j < strseat.Length; j++)
                {
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                    con.Open();
                    string strsql = "UPDATE Coach set " + strseat[j].ToString() + " = ''  where ((Dep_date =  '" + litdeparturedate.Text+ "')and (TrainNumber='" + littrainnumber.Text+ "'))";
                    SqlCommand ss2 = new SqlCommand();
                    ss2.Connection = con;
                    ss2.CommandText = strsql;
                    rea = ss2.ExecuteReader();
                    con.Close();

                }
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                con.Open();
                string strsql1 = "Update Ticket set Status = 'Cancel' where PNR ='" + litpnr.Text + "' ";
                SqlCommand ss3 = new SqlCommand(strsql1, con);
                ss3.ExecuteNonQuery();
                con.Close();


                SqlConnection conbal;
                SqlCommand cmdbal;
                SqlDataReader reabal;
                string strsqlbal = "select * from userreg where (Username='" + Session["username"]+ "')";
                conbal = new SqlConnection();
                conbal.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                cmdbal = new SqlCommand();
                cmdbal.Connection = conbal;
                cmdbal.CommandText = strsqlbal;
                conbal.Open();
                reabal = cmdbal.ExecuteReader();
                if (reabal.Read())
                {
                    
                    string b;
                    b = reabal["User_Current_Balance"].ToString();
                    conbal.Close();
                    int cbal;
                    int abal;
                    abal = int.Parse(b);
                    cbal = int.Parse(littotalfare.Text.ToString());

                    int rbal = abal + cbal;

                    string strupdatebal = "Update userreg set User_Current_Balance = " + rbal.ToString() + "  where (Username ='" + Session["username"] + "')";
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                    cmd = new SqlCommand(strupdatebal, con);
                    con.Open();
                    int i1 = cmd.ExecuteNonQuery();
                    con.Close();
                }
                
                Session["delpnr"] = litpnr.Text.ToString();
                Response.Redirect("Cancelticket.aspx?q=1");

            }
        }


    }
}