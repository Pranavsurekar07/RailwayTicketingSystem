using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class bookticket : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }

    }
    protected void btn_Check(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        con.Open();

        using (SqlCommand cmd = con.CreateCommand())
        {
            if (DropDownList1.SelectedItem.Value != "" & DropDownList2.SelectedItem.Value != "" && TextBox1.Text != "" && DropDownList3.SelectedItem.Value != "0")
            {

                SqlCommand com = new SqlCommand("Select * from Train where (Source='" + DropDownList1.SelectedItem.Value + "')and(Date='" + TextBox1.Text.ToString() + "')", con);
                SqlDataAdapter sda = new SqlDataAdapter(com);

                DataSet ds = new DataSet();
                sda.Fill(ds);
                if (!object.Equals(ds, null))
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridTrain.DataSource = ds;
                        GridTrain.DataBind();
                        Label5.Text = "";

                    }
                    else
                    {
                        Label5.Text = "Train not available!";
                    }
                }
            }
            else
            {
                Label5.Text="Select Source, Destination and Class!!";
            }

        }
        con.Close();


    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {


        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridTrain.SelectedRow;
        Response.Redirect("seatselect.aspx?trainnumber=" + gr.Cells[0].Text + "&trainname=" + gr.Cells[1].Text + "&source=" + gr.Cells[2].Text + "&destination=" + gr.Cells[3].Text + "&date=" + gr.Cells[4].Text + "&departure=" + gr.Cells[5].Text + "&arrival=" + gr.Cells[6].Text);

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string item = DropDownList3.SelectedItem.Value;
        Session["selectedItem"] = item;



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