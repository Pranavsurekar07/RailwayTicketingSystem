using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Configuration;

public partial class addtrain : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("mainpage.aspx");
        }

    }
    protected void btn_submit(object sender, EventArgs e)
    {
        if (trainnumber.Text != "" & trainname.Text != "" & DropDownList1.Text != "" & DropDownList2.Text != "" & arrival.Text != "" & departure.Text != "")
        {

            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            String query = "insert into Train(TrainNumber,TrainName,Source,Destination,Date,Arrival,Departure) values('" + Convert.ToInt64(trainnumber.Text) + "','" + trainname.Text + "','" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "','" + date.Text + "','" + arrival.Text + "','" + departure.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            cmd.ExecuteReader();
            Response.Write("<script language='javascript'>window.alert('Train added successfully, Now Add fare!!');window.location='updatefare.aspx';</script>");
            con.Close();
            trainnumber.Text = "";
            trainname.Text = "";
            DropDownList1.Text = "--select--";
            DropDownList2.Text = "--select--";
            date.Text = "";
            arrival.Text = "";
            departure.Text = "";


        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All Fields Are Mandatory";
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        date.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.AddDays(7))
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.Pink;
            e.Cell.Enabled = false;
        }
    }
    
}