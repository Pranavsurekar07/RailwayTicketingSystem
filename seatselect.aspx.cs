using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Configuration;

public partial class seatselect : System.Web.UI.Page
{
    
    int i1;
    SqlDataReader rea;
    SqlCommand cmd;
    SqlConnection con=new SqlConnection();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }
       
        TextBox1.Text = Request.QueryString["trainnumber"].ToString();
        TextBox2.Text = Request.QueryString["trainname"].ToString();
        TextBox3.Text = Session["selectedItem"].ToString();
        TextBox4.Text = Request.QueryString["source"].ToString();
        TextBox5.Text = Request.QueryString["destination"].ToString();
        TextBox6.Text = Request.QueryString["arrival"].ToString();
        TextBox7.Text = Request.QueryString["departure"].ToString();
        txtdate.Text = Request.QueryString["date"].ToString();
        seattable.Visible = true;
        ibnext.Visible = false;
        save.Visible = false;
        txtname.Focus();


        string strsq = "Select * from Coach where ((TrainNumber = '" + Request.QueryString["trainnumber"].ToString() + "') and (Dep_date ='" + Request.QueryString["date"].ToString() + "'))";
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsq;
        rea = cmd.ExecuteReader();
        while (rea.Read())
        {
            for (int j = 1; j <= 31; j++)
            {
                string s = "s" + j;
                if (rea[s.ToString()].ToString() == "b")
                {
                    ImageButton img = (ImageButton)pnl1.FindControl(s.ToString());
                    img.ImageUrl = "~/Images/booked_seat_img.gif";
                    img.Enabled = false;
                }

            }
        } con.Close();

        if (Session["selectedItem"].ToString() == "General Class")
        {
            s2.Enabled = false;
            s5.Enabled = false;
            s5.Enabled = false;
            s8.Enabled = false;
            s11.Enabled = false;
            s14.Enabled = false;
            s17.Enabled = false;
            s20.Enabled = false;
            s23.Enabled = false;
            s26.Enabled = false;
            s30.Enabled = false;
            s29.Enabled = false;
            s28.Enabled = false;
            s27.Enabled = false;
            s22.Enabled = false;
            s21.Enabled = false;
            s16.Enabled = false;
            s15.Enabled = false;
            s10.Enabled = false;
            s9.Enabled = false;
            s4.Enabled = false;
            s3.Enabled = false;

        }
        else if (Session["selectedItem"].ToString() == "AC First Class")
        {
            s1.Enabled = false;
            s6.Enabled = false;
            s7.Enabled = false;
            s12.Enabled = false;
            s13.Enabled = false;
            s18.Enabled = false;
            s19.Enabled = false;
            s24.Enabled = false;
            s25.Enabled = false;
            s31.Enabled = false;

            s29.Enabled = false;
            s28.Enabled = false;
            s27.Enabled = false;
            s22.Enabled = false;
            s21.Enabled = false;
            s16.Enabled = false;
            s15.Enabled = false;
            s10.Enabled = false;
            s9.Enabled = false;
            s4.Enabled = false;
            s3.Enabled = false;
        }
        else if(Session["selectedItem"].ToString()=="AC 2 tier")
        {
            s1.Enabled = false;
            s6.Enabled = false;
            s7.Enabled = false;
            s12.Enabled = false;
            s13.Enabled = false;
            s18.Enabled = false;
            s19.Enabled = false;
            s24.Enabled = false;
            s25.Enabled = false;
            s31.Enabled = false;
            s2.Enabled = false;
            s5.Enabled = false;
            s5.Enabled = false;
            s8.Enabled = false;
            s11.Enabled = false;
            s14.Enabled = false;
            s17.Enabled = false;
            s20.Enabled = false;
            s23.Enabled = false;
            s26.Enabled = false;
            s30.Enabled = false;
        }

    }
    
    protected void seatClick(ImageButton btn)
    {
        
        string strsql4;
        strsql4 = "select Fare from Class where ((TrainNumber='" + TextBox1.Text + "')and(Classtype='" + TextBox3.Text + "'))";
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql4;
        rea = cmd.ExecuteReader();
        if (rea.HasRows == true)
        {
            while (rea.Read())
            {
                TextBox8.Text = (rea["Fare"].ToString());
            }
        } con.Close();
        rea.Close();

        

        ibnext.Visible = true;
        if (btn.ImageUrl == "~/Images/selected_seat_img.gif")
        {
            seattable.Visible = true;
            btn.ImageUrl = "~/Images/available_seat_img.gif";
            if (txtseatnumber.Text.IndexOf(btn.ID.ToString() + ",") > -1)
            {
                
                txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString() + ",", "");
            }
            else
            {
                txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString(), "");
            }
        }
        else if (btn.ImageUrl == "~/Images/available_seat_img.gif")
        {
            
            seattable.Visible = true;
            btn.ImageUrl = "~/Images/selected_seat_img.gif";
            if (txtseatnumber.Text.Trim().Length == 0)
            {
                txtseatnumber.Text = btn.ID.ToString();
            }
            else if (txtseatnumber.Text.Trim().EndsWith(","))
            {
                txtseatnumber.Text = txtseatnumber.Text + btn.ID.ToString();
            }
            else
            {
                txtseatnumber.Text = txtseatnumber.Text + "," + btn.ID.ToString();
            }
        }

        
    }

    protected void s1click(object sender, ImageClickEventArgs e)
    {
        seatClick(s1);
    }
    protected void s2click(object sender, ImageClickEventArgs e)
    {
        seatClick(s2);
    }
    protected void s6click(object sender, ImageClickEventArgs e)
    {
        seatClick(s6);
    }
    protected void s7click(object sender, ImageClickEventArgs e)
    {
        seatClick(s7);
    }
    protected void s12click(object sender, ImageClickEventArgs e)
    {
        seatClick(s12);
    }
    protected void s13click(object sender, ImageClickEventArgs e)
    {
        seatClick(s13);
    }
    protected void s18click(object sender, ImageClickEventArgs e)
    {
        seatClick(s18);
    }
    protected void s19click(object sender, ImageClickEventArgs e)
    {
        seatClick(s19);
    }
    protected void s24click(object sender, ImageClickEventArgs e)
    {
        seatClick(s24);
    }
    protected void s25click(object sender, ImageClickEventArgs e)
    {
        seatClick(s25);
    }
    protected void s31click(object sender, ImageClickEventArgs e)
    {
        seatClick(s31);
    }
    protected void s3click(object sender, ImageClickEventArgs e)
    {
        seatClick(s3);
    }
    protected void s4click(object sender, ImageClickEventArgs e)
    {
        seatClick(s4);
    }
    protected void s5click(object sender, ImageClickEventArgs e)
    {
        seatClick(s5);
    }
    protected void s8click(object sender, ImageClickEventArgs e)
    {
        seatClick(s8);
    }
    protected void s9click(object sender, ImageClickEventArgs e)
    {
        seatClick(s9);
    }

    protected void s10click(object sender, ImageClickEventArgs e)
    {
        seatClick(s10);
    }
    protected void s11click(object sender, ImageClickEventArgs e)
    {
        seatClick(s11);
    }
    protected void s14click(object sender, ImageClickEventArgs e)
    {
        seatClick(s14);
    }
    protected void s15click(object sender, ImageClickEventArgs e)
    {
        seatClick(s15);
    }
    protected void s16click(object sender, ImageClickEventArgs e)
    {
        seatClick(s16);
    }
    protected void s17click(object sender, ImageClickEventArgs e)
    {
        seatClick(s17);
    }
    protected void s20click(object sender, ImageClickEventArgs e)
    {
        seatClick(s20);
    }
    protected void s21click(object sender, ImageClickEventArgs e)
    {
        seatClick(s21);
    }
    protected void s22click(object sender, ImageClickEventArgs e)
    {
        seatClick(s22);

    }

    protected void s23click(object sender, ImageClickEventArgs e)
    {
        seatClick(s23);
    }
    protected void s26click(object sender, ImageClickEventArgs e)
    {
        seatClick(s26);
    }
    protected void s27click(object sender, ImageClickEventArgs e)
    {
        seatClick(s27);

    }
    protected void s28click(object sender, ImageClickEventArgs e)
    {
        seatClick(s28);
    }
    protected void s29click(object sender, ImageClickEventArgs e)
    {
        seatClick(s29);
    }
    protected void s30click(object sender, ImageClickEventArgs e)
    {
        seatClick(s30);
    }



    protected void ibnext_Click(object sender, EventArgs e)
    {
        
       
        string[] str = txtseatnumber.Text.Split('s');
        int len = str.Length - 1;
        totalseat.Text = len.ToString();
        string strsql;
        strsql = "select Fare from Class where ((TrainNumber='" + TextBox1.Text + "')and(Classtype='" + TextBox3.Text + "'))";
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        rea = cmd.ExecuteReader();
        if (rea.HasRows == true)
        {
            while (rea.Read())
            {
                fareperseat.Text = (rea["Fare"].ToString());
            }
        }

        rea.Close();
        con.Close();
        
        int z = len * int.Parse(fareperseat.Text.ToString());
        totalfare.Text = z.ToString();


        Random rnd = new Random();
        Random rnd1 = new Random();

        ticketnumber.Text = rnd.Next(50000).ToString() + rnd1.Next(548775).ToString();
        if (len == 0)
        {

            //  Label1.Text = "if";
            pnl1.Visible = true;
            pnl2.Visible = false;
            save.Visible = false;
            Response.Redirect("seatselect.aspx");

        }
        else
        {
            save.Visible = true;
            pnl1.Visible = false;
            pnl2.Visible = true;
            ibnext.Visible = false;
            // Label1.Text = "else";
        }

    }

    protected void save_Click(object sender, EventArgs e)
    {
        int status;

        SqlDataReader reabal;
        string strsqlbal = "select * from userreg where (Username='" + Session["username"] + "')";
        SqlConnection conbal = new SqlConnection();
        conbal.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlCommand cmdbal = new SqlCommand();
        cmdbal.Connection = conbal;
        cmdbal.CommandText = strsqlbal;
        conbal.Open();
        reabal = cmdbal.ExecuteReader();
        if (reabal.Read())
        {
            string b;
            b = reabal["User_Current_Balance"].ToString();
            if (int.Parse(b) >= int.Parse(totalfare.Text.ToString()))
            {
                conbal.Close();
                int cbal;
                int abal;
                abal = int.Parse(b);
                cbal = int.Parse(totalfare.Text.ToString());

                int rbal = abal - cbal;
                SqlConnection conba;
                SqlCommand cmdba;
                string strupdatebal = "Update userreg set User_Current_Balance = " + rbal.ToString() + "  where (Username ='" + Session["username"] + "')";
                conba = new SqlConnection();
                conba.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                cmdba = new SqlCommand(strupdatebal,conba);
                conba.Open();
                i1 = cmdba.ExecuteNonQuery();
                conba.Close();
            }
            else
            {
                lblerror.Text = "Insufficient Balance to book ticket.";
                Response.Write("<script language='javascript'>window.alert('Insufficient Balance, Please add balance to wallet');window.location='addbalance.aspx';</script>");
                
            }

                if (i1>0)
                {
                    
                    string[] forsave = txtseatnumber.Text.Split(',');
                    SqlDataReader reab;
                    SqlConnection conb;
                    SqlCommand cmdb;
                    string strsql = "select * from Coach where((TrainNumber='" + TextBox1.Text + "') and (Dep_date= '" + txtdate.Text + "'))";
                    conb = new SqlConnection();
                    conb.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                    cmdb = new SqlCommand(strsql,conb);
                    conb.Open();
                    reab = cmdb.ExecuteReader();

                    if (reab.Read())
                    {
                        conb.Close();
                        status = 1;
                    }
                    else
                    {
                        status = 0;
                    }
                    if (status == 0)
                    {
                        for (int j = 0; j <= forsave.Length - 1; j++)
                        {
                            if (forsave[j].ToString().Trim().Length > 0)
                            {

                                SqlConnection sq = new SqlConnection();
                                sq.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                                string sqladd = "INSERT into Coach ([TrainNumber],[Dep_date]) values('" + TextBox1.Text + "','" + txtdate.Text + "')";
                                
                                SqlCommand ss1 = new SqlCommand(sqladd,sq);
                                sq.Open();
                                ss1.ExecuteReader();
                               
                                
                                
                                sq.Close();
                                for (int u = 0; u <= forsave.Length - 1; u++)
                                {
                                    if (forsave[u].ToString().Trim().Length > 0)
                                    {
                                        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                                        string strsql1 = "Update Coach set " + forsave[u].ToString() + " = 'b'  where ((TrainNumber='" + TextBox1.Text.ToString() + "')and(Dep_date='" + txtdate.Text.ToString() + "'))";
                                        con.Open();
                                        SqlCommand ss2 = new SqlCommand(strsql1,con);

                                
                                        ss2.ExecuteNonQuery();
                                        con.Close();
                                    }
                                }
                            }
                                
                         }
                     }
                     if(status==1)
                     {
                        for (int j = 0; j <= forsave.Length - 1; j++)
                            {
                                if (forsave[j].ToString().Trim().Length > 0)
                                    {
                                        SqlConnection connection1 = new SqlConnection();
                                        connection1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                                        string strsql1 = "Update Coach set " + forsave[j].ToString() + " = 'b'  where ((TrainNumber='" + TextBox1.Text.ToString() + "')and(Dep_date='" + txtdate.Text.ToString() + "'))";
                                
                                        SqlCommand ss2 = new SqlCommand(strsql1,connection1);
                                        connection1.Open();
                                
                                        ss2.ExecuteNonQuery();
                                        connection1.Close();
                                    }
                             }
                    }
                    SqlConnection conw = new SqlConnection();
                    conw.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                    string strsql2 = "insert into Ticket values('" + Convert.ToInt64(ticketnumber.Text) + "','" + Convert.ToInt64(TextBox1.Text) + "','" + TextBox2.Text + "','" + txtname.Text + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + Convert.ToInt32(totalseat.Text) + "','" + txtseatnumber.Text.ToString() + "','" + TextBox7.Text.ToString() + "','" + txtdate.Text.ToString() + "','" + TextBox3.Text + "','" + Convert.ToInt32(totalfare.Text) + "','booked')";
                    SqlCommand ss3 = new SqlCommand();
                    
                    ss3.Connection = conw;
                    ss3.CommandText = strsql2;
                    conw.Open();
                    SqlDataReader reabf = ss3.ExecuteReader();
                    conw.Close();
                    Session["source"] = TextBox4.Text.ToString();
                    Session["destination"] = TextBox5.Text.ToString();
                    Session["pnr"] = ticketnumber.Text.ToString();
                    Session["name"] = txtname.Text.ToString();
                    Session["trainname"] = TextBox2.Text.ToString();
                    Session["journeydate"] = txtdate.Text.ToString();
                    Session["departuretime"] = TextBox7.Text.ToString();
                    Session["seatnumber"] = txtseatnumber.Text.ToString();
                    Session["totalseat"] = totalseat.Text.ToString();
                    Session["fare"] = totalfare.Text.ToString();
                    Session["trainnumber"] = TextBox1.Text.ToString();
                    Session["seatnumber"] = txtseatnumber.Text.ToString();
                    Response.Write("<script language='javascript'>window.alert('Ticket Booked Successfully');window.location='print.aspx';</script>");
                    conw.Close();
                    
                    
                    }
               }
          }
}
    
    
    
