using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Web.Security;

using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls.WebParts;
public partial class print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }
        txtbookdate.Text = System.DateTime.Now.ToString("D");
        ticketnumber.Text=Session["pnr"].ToString();
        trainname.Text = Session["trainname"].ToString();
        txtname.Text=Session["name"].ToString();
        txtsource.Text=Session["source"].ToString();
        txtdestination.Text=Session["destination"].ToString();
        departuredate.Text=Session["journeydate"].ToString();
        txtdeparture.Text=Session["departuretime"].ToString();
        totalfare.Text=Session["fare"].ToString();
        totalseats.Text=Session["totalseat"].ToString();
        trainnum.Text=Session["trainnumber"].ToString();
        txtseatnumber.Text=Session["seatnumber"].ToString();
        seatnum.Text = Session["seatnumber"].ToString();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
    }
   
}