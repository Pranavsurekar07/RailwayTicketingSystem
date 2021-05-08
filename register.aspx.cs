using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;
using System.Data;
using System.Net;
using System.Net.Mail;

public partial class register : System.Web.UI.Page
{
    String Gender;
    protected void Page_Load(object sender, EventArgs e)
    {
        panel1.Visible = false;
    }
    
    private Boolean checkusername()
    {
        Boolean usernameavailable = false;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        String myquery = "select * from userreg where Username='" + tbUname.Text + "'";
        SqlCommand sc = new SqlCommand();
        sc.CommandText = myquery;
        sc.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = sc;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            usernameavailable = true;
        }
        con.Close();
        return usernameavailable;
    }
    protected void btn_register(object sender, EventArgs e)
    {
        Gender = string.Empty;
        if (RadioMale.Checked)
        {
            Gender = "Male";
        }
        else
        {
            Gender = "Female";
        }
        if (fullname.Text != "" & tbUname.Text != "" && tbPass.Text != "" && tbCPass.Text != "" && tbEmail.Text != "" && tbmobile.Text != "" && tbaddress.Text != "")
        {
            if (checkusername() == true)
            {
                lblMsg.Text = "Your Username is already Registered with Us ";
            }

                else
                {
                   

                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                    String query = "insert into userreg(FullName,Username,Password,Confirmpassword,Email,Gender,Phone,Address,User_Current_Balance) values('" + fullname.Text + "','" + tbUname.Text + "','" + tbPass.Text + "','" + tbCPass.Text + "','" + tbEmail.Text + "','" + Gender + "','" + Convert.ToInt64(tbmobile.Text) + "','" + tbaddress.Text + "','0')";
                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();
                    cmd.ExecuteReader();
                    Response.Write("<script language='javascript'>window.alert('Registered Successfully, Login ');window.location='userlogin.aspx';</script>");
                    
                    con.Close();
                    fullname.Text = "";
                    tbUname.Text = "";
                    tbPass.Text = "";
                    tbCPass.Text = "";
                    tbEmail.Text = "";
                    tbmobile.Text = "";
                    tbaddress.Text = "";

                }
            
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All Fields Are Mandatory";

        }
     
        
    }

   
    
    protected void btverify_Click(object sender, EventArgs e)
    {
        panel1.Visible = true;
        if (Session["OTP"].ToString() == otptextbox.Text)
        {
            img.Visible = true;
            lblerror.Visible = false;
            Session["OTP"]=null;
            
        }
        else
        {
            Imag.Visible = true;
            lblerror.Text = "Check OTP !";
        }
    }
    protected void btsend_Click(object sender, EventArgs e)
    {
        panel1.Visible = true;

        try
        {
            Random r = new Random();
            string otp = r.Next(1000, 9999).ToString();

            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("pranavsurekar@gmail.com", "ronal");
            MailMessage msgobj = new MailMessage();
            msgobj.To.Add(tbEmail.Text);

            msgobj.From = new MailAddress("pranavsurekar00@gmail.com");
            msgobj.Subject = "Email Verification Code !";
            msgobj.Body = "Hello " + fullname.Text + " ,Your verification code is : " + otp;
            client.Send(msgobj);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Message has been send successfully');", true);
            Session["OTP"] = otp.ToString();
            
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message.ToString();
        }
    }
    
}