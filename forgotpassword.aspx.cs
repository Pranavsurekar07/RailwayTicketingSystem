using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class forgotpassword : System.Web.UI.Page
{
    string i;
    SqlDataReader rea;
    SqlConnection con = new SqlConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        panel1.Visible = true;
        panel2.Visible = false;
        panel3.Visible = false;
    }
    protected void btPassRec_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        string sql;
        sql="select * from userreg where Username='"+TextBox1.Text+"'";
        SqlCommand cmdbal = new SqlCommand();
        cmdbal.Connection = con;
        cmdbal.CommandText = sql;
        con.Open();
        rea = cmdbal.ExecuteReader();
        
        if (rea.Read())
        {
            con.Close();
            string sql1;
            sql1="select Email from userreg where Username='"+TextBox1.Text+"'";
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlCommand cmdba = new SqlCommand();
            cmdba.Connection = con;
            cmdba.CommandText = sql1;
            con.Open();
            rea = cmdba.ExecuteReader();
            if (rea.HasRows == true)
            {
                while (rea.Read())
                {
                    
                    i = (rea["Email"].ToString());
                }
                con.Close();
                if (i == tbEmailId.Text)
                {
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
                        msgobj.To.Add(tbEmailId.Text);

                        msgobj.From = new MailAddress("pranavsurekar00@gmail.com");
                        msgobj.Subject = "Forgot Password !!!";
                        msgobj.Body = "Hello " + TextBox1.Text + " ,Your OTP is : " + otp;
                        client.Send(msgobj);

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('OTP has been send successfully');", true);
                        Session["OTP"] = otp.ToString();

                        panel1.Visible = false;
                        panel2.Visible = true;
                    }
                    catch (Exception ex)
                    {
                        lblPassRec.Text = ex.Message.ToString();
                    }
                }
                else
                { lblPassRec.Text="Enter email is not registered with Us !!";}
            }
        }
        else
        {
            lblPassRec.Text = "Kindly Check your username/email !!";
            
        }
    }

    protected void btverify_Click(object sender, EventArgs e)
    {
        
        if (Session["OTP"].ToString()== otptextbox.Text)
        {
            panel1.Visible = false;
            panel2.Visible = true;
            img.Visible = true;
            btnext.Visible = true;
            Imag.Visible = false;
            verify.Visible = false;
            lblerror.Text = "OTP is correct";
            
        }
        else
        {
            panel1.Visible = false;
            panel2.Visible = true;
            lblerror.Text = "You have entered wrong OTP !!";
            Imag.Visible = true;
            verify.Visible = true;
            img.Visible = false;
            btnext.Visible = false;
        }
    }
    protected void btnext_Click(object sender, EventArgs e)
    {

        panel3.Visible = true;
        panel1.Visible = false;
    }
    protected void btresetpass_Click(object sender, EventArgs e)
    {
        
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlDataAdapter sda = new SqlDataAdapter("select Password from userreg where Username='" + TextBox1.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update userreg set Password='" + tbcpass.Text + "' where Username='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();

            con.Close();
            Label5.Text = "Successfully Updated ";
            Label5.ForeColor = System.Drawing.Color.Green;
            Response.Write("<script language='javascript'>window.alert('Password Updated Successfully, Please Login!');window.location='userlogin.aspx';</script>");
        }
        else
        {
            Label5.Text = "New password and confirm password should be same!!";
        }
    }
}