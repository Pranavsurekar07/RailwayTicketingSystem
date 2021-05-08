using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class pnrstatus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    SqlDataReader rea;
    protected void Page_Load(object sender, EventArgs e)
    {

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
}