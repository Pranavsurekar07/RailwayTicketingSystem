using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class traintimetable : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();
            SqlCommand cmd=new SqlCommand();
            cmd.CommandText="select * from [Train]";
            cmd.Connection = con;
            SqlDataReader rd=cmd.ExecuteReader();
            table.Append("<table border='1'>");
            table.Append("<tr><th>ID</th><th>Train Number</th><th>Train Name</th><th>Source Station</th><th>Destination Station</th><th>Departure Date</th><th>Arrival Time</th><th>Departure Time</th>");
            table.Append("</tr>");
            if(rd.HasRows)
            {
                while(rd.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>"+rd[0]+"</td>");
                    table.Append("<td>"+rd[1]+"</td>");
                    table.Append("<td>"+rd[2]+"</td>");
                    table.Append("<td>"+rd[3]+"</td>");
                    table.Append("<td>"+rd[4]+"</td>");
                    table.Append("<td>"+rd[5]+"</td>");
                    table.Append("<td>"+rd[6]+"</td>");
                    table.Append("<td>"+rd[7]+"</td>");
                    table.Append("</tr>");
                }
            }
            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text=table.ToString() });
            rd.Close();
        }
    }
}