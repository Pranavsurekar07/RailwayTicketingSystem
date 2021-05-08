<%@ Page Title="Seat Select" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="seatselect.aspx.cs" Inherits="seatselect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style8 {
        width: 278px;
        height: 25px;
    }
        .auto-style12 {
            height: 25px;
            width: 50px;
        }
        .auto-style22 {
            width: 394px;
            height: 25px;
        }
        .auto-style23 {
            width: 386px;
            height: 48px;
        }
        .auto-style24 {
            width: 399px;
            height: 57px;
        }
        .auto-style25 {
            height: 57px;
        }
        .auto-style26 {
            width: 386px;
            height: 57px;
        }
        .auto-style29 {
            width: 399px;
            height: 51px;
        }
        .auto-style30 {
            height: 51px;
        }
        .auto-style31 {
            width: 386px;
            height: 51px;
        }
        .auto-style32 {
            width: 386px;
            height: 56px;
        }
        .auto-style33 {
            width: 399px;
            height: 56px;
        }
        .auto-style34 {
            height: 56px;
        }
        .auto-style36 {
            width: 394px
        }
        .auto-style37 {
            width: 278px;
        }
        .auto-style38 {
            width: 50px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
            <div class="form-horizontal"><br /><br />
                <h1>Seat Booking</h1>
                <hr />
         <table style="border: medium groove #C0C0C0; width: 79%;  "5">
             <tr>
                 <td class="auto-style23" style="background-color: #33CCFF">
                     <asp:Label ID="Label6" runat="server" Text="Train Details:" Font-Bold="True" Font-Size="Large"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style26" style="background-color: #66FFFF">
                     <asp:Label ID="Label1" runat="server" Text="Train Number:" Font-Size="Medium"></asp:Label>
&nbsp;
                     <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" Width="204px" Height="32px"></asp:TextBox>
                 </td>
                 <td class="auto-style24" style="background-color: #66FFFF">
                     <asp:Label ID="Label2" runat="server" Text="Train Name:" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox2" ReadOnly="true" runat="server" Width="202px" Height="32px"></asp:TextBox>
                 </td>
                 <td class="auto-style25" style="background-color: #66FFFF">
                     <asp:Label ID="Label3" runat="server" Text="Class:" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="204px" Height="32px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style32" style="background-color: #66FFFF">
                     <asp:Label ID="Label4" runat="server" Text="Source:" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" ReadOnly="true" runat="server" Width="204px" Height="32px"></asp:TextBox>
                 </td>
                 <td class="auto-style33" style="background-color: #66FFFF">
                     <asp:Label ID="Label5" runat="server" Text="Destination:" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox5" ReadOnly="true" runat="server" Width="204px" Height="32px"></asp:TextBox>
                 </td>
                 <td class="auto-style34" style="background-color: #66FFFF">
                     
                     <asp:Label ID="Label8" runat="server" Text="Departure Time:" Font-Size="Medium"></asp:Label>
                     
&nbsp;<asp:TextBox ID="TextBox7" ReadOnly="true" runat="server" Width="205px" Height="32px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style31" style="background-color: #66FFFF">
                     <asp:Label ID="Label7" runat="server" Text="Arrival Time:" Font-Size="Medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox6" ReadOnly="true" runat="server" Width="204px" Height="32px"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     
                 </td>
                 
                 <td class="auto-style29" style="background-color: #66FFFF">

                     <asp:Label runat="server" Text="Journey Date:" Font-Size="Medium"></asp:Label>
&nbsp;
                     <asp:TextBox ID="txtdate" runat="server" Width="204px" ReadOnly="True" Height="32px"></asp:TextBox>

                 </td>
                 <td class="auto-style30" style="background-color: #66FFFF">
                     <asp:Label ID="Label9" runat="server" Text="Fare per Seat:" Font-Size="Medium"></asp:Label>

&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" ReadOnly="true" runat="server" Width="205px" Height="32px" Font-Size="Medium" ForeColor="#0066FF"></asp:TextBox>
                     </td>
             </tr>
             
         </table>
                <br />
                </div>
         </div>
    
    
   <td>
       <div class="container">
     <asp:Panel ID="pnl1" runat="server" Height="359px">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label13" runat="server" Text="Select Seats :" CssClass="center" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" BackColor="#00CCFF"></asp:Label>
         <asp:Table border="4" CssClass="center" ID="seattable" runat="server" Height="257px" Width="820px" HorizontalAlign="Justify" BorderStyle="Solid">
                                                <asp:TableRow BorderStyle="Double" Font-Bold="True" Font-Size="Small">
                                                    <asp:TableHeaderCell Font-Size="Medium" Font-Bold="True">General Class Seats</asp:TableHeaderCell>
                                                    <asp:TableCell ID="TableCell1" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s1" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            OnClick="s1click" runat="server" />
1</asp:TableCell>
                                                    <asp:TableCell ID="TableCell2" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s6" OnClick="s6click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
6</asp:TableCell>
                                                    <asp:TableCell ID="TableCell3" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s7" OnClick="s7click" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
7</asp:TableCell>
                                                    <asp:TableCell ID="TableCell4" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s12" OnClick="s12click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
12</asp:TableCell>
                                                    <asp:TableCell ID="TableCell5" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s13" OnClick="s13click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
13</asp:TableCell>
                                                    <asp:TableCell ID="TableCell6" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s18" OnClick="s18click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
18</asp:TableCell>
                                                    <asp:TableCell ID="TableCell7" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s19" OnClick="s19click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
19</asp:TableCell>
                                                    <asp:TableCell ID="TableCell8" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s24" OnClick="s24click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
24</asp:TableCell>
                                                    <asp:TableCell ID="TableCell9" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s25" OnClick="s25click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
25</asp:TableCell>
                                                    <asp:TableCell ID="TableCell10" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s31" OnClick="s31click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
31</asp:TableCell></asp:TableRow>
                                                <asp:TableRow Font-Bold="True" Font-Size="Small">
                                                    <asp:TableHeaderCell Font-Bold="True" Font-Size="Medium">AC First Class Seats</asp:TableHeaderCell>
                                                    <asp:TableCell ID="TableCell11" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s2" ImageUrl="~/Images/available_seat_img.gif" OnClick="s2click"
                                                            runat="server" />
2</asp:TableCell>
                                                    <asp:TableCell ID="TableCell12" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s5" OnClick="s5click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
5</asp:TableCell>
                                                    <asp:TableCell ID="TableCell13" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s8" OnClick="s8click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
8</asp:TableCell>
                                                    <asp:TableCell ID="TableCell14" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s11" OnClick="s11click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
11</asp:TableCell>
                                                    <asp:TableCell ID="TableCell15" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s14" OnClick="s14click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
14</asp:TableCell>
                                                    <asp:TableCell ID="TableCell16" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s17" OnClick="s17click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
17</asp:TableCell>
                                                    <asp:TableCell ID="TableCell17" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s20" OnClick="s20click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
20</asp:TableCell>
                                                    <asp:TableCell ID="TableCell18" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s23" OnClick="s23click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
23</asp:TableCell>
                                                    <asp:TableCell ID="TableCell19" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s26" OnClick="s26click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
26</asp:TableCell>
                                                    <asp:TableCell ID="TableCell20" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s30" OnClick="s30click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
30</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow Font-Bold="True" Font-Size="Small">
                                                    <asp:TableCell ID="TableCell21" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell22" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell23" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell24" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell25" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell26" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell27" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell28" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell29" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell30" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s29" OnClick="s29click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
29</asp:TableCell>
                                                    <asp:TableCell ID="TableCell41" runat="server">&nbsp; </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow Font-Bold="True" Font-Size="Small">
                                                    <asp:TableHeaderCell Font-Bold="True" Font-Size="Medium">AC 2 tier Seats</asp:TableHeaderCell>
                                                    <asp:TableCell ID="TableCell31" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s3" OnClick="s3click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
3</asp:TableCell>
                                                    <asp:TableCell ID="TableCell32" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s4" OnClick="s4click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
4</asp:TableCell>
                                                    <asp:TableCell ID="TableCell33" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s9" OnClick="s9click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
9</asp:TableCell>
                                                    <asp:TableCell ID="TableCell34" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s10" OnClick="s10click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
10</asp:TableCell>
                                                    <asp:TableCell ID="TableCell35" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s15" OnClick="s15click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
15</asp:TableCell>
                                                    <asp:TableCell ID="TableCell36" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s16" OnClick="s16click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
16</asp:TableCell>
                                                    <asp:TableCell ID="TableCell37" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s21" OnClick="s21click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
21</asp:TableCell>
                                                    <asp:TableCell ID="TableCell38" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s22" OnClick="s22click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
22</asp:TableCell>
                                                    <asp:TableCell ID="TableCell39" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s27" OnClick="s27click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
27</asp:TableCell>
                                                    <asp:TableCell ID="TableCell40" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s28" OnClick="s28click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
28</asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table><br />
         <asp:Table runat="server" Width="818px">
              <asp:TableRow Font-Bold="True" Font-Size="Small">
                                                    <asp:TableHeaderCell Font-Bold="True" Font-Size="Medium">Available Seats :<asp:ImageButton ID="ImageButton1" OnClick="s3click" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" /></asp:TableHeaderCell>
      
                  <asp:TableHeaderCell Font-Bold="True" Font-Size="Medium">Selected Seat : <asp:ImageButton ID="ImageButton2" OnClick="s3click" ImageUrl="~/Images/selected_seat_img.gif"
                                                            runat="server" /></asp:TableHeaderCell>
                                                    
                  <asp:TableHeaderCell Font-Bold="True" Font-Size="Medium">Booked Seats :<asp:ImageButton ID="ImageButton3" OnClick="s3click" ImageUrl="~/Images/booked_seat_img.gif"
                                                            runat="server" /></asp:TableHeaderCell>
                                                   
                  </asp:TableRow>
         </asp:Table>
                                        <br />
         <br />
         
                                        </asp:Panel></div>
       <div class="container">
       <asp:Panel ID="pnl2" runat="server" Visible="False">
                                            <div id="blueBox">
                                                <div id="blueBoxtitle">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label14" runat="server" Text="User Information :" Font-Bold="True" Font-Size="X-Large" BackColor="#00CCFF" CssClass="center"></asp:Label>
                                                </div>
                                                <div class="center" >
                                                    <table border="1" style="border: thick solid #C0C0C0">
                                                        <tbody>
                                                            <tr>
                                                                <td class="auto-style37">
                                                                    <h3>Ticket Number</h3>
                                                                </td>
                                                                <td class="auto-style38">
                                                                    :
                                                                </td>
                                                                <td class="auto-style36">
                                                                    <asp:Label ID="ticketnumber" runat="server" Text="Label" Font-Bold="True" Font-Size="Small"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style8">
                                                                   <h3> Name</h3>
                                                                </td>
                                                                <td class="auto-style12">
                                                                    :
                                                                </td>
                                                                <td class="auto-style22">
                                                                    <asp:TextBox ID="txtname" runat="server" Width="354px" BackColor="#CCFFFF" Height="42px" />
                                                                    <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="*" ControlToValidate="txtname" Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                                                                    <%--<asp:RangeValidator ID="range" Text ="Invalid Name" Type="String"   ControlToValidate="txtname" runat="server" /> --%>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                    <td class="auto-style37">
                                                                       <h3> Seat Number</h3>
                                                                    </td>
                                                                    <td class="auto-style38" >
                                                                        :
                                                                    </td>
                                                                    <td class="auto-style36">
                                                                        <asp:Label ID="txtseatnumber" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                           <tr>
                                                                    <td class="auto-style37">
                                                                        <h3>Fare Per Seat</h3>
                                                                    </td>
                                                                    <td class="auto-style38" >
                                                                        :
                                                                    </td>
                                                                    <td class="auto-style36">
                                                                        <asp:Label ID="fareperseat" runat="server" Text="Label" Font-Bold="True" Font-Size="Small"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="auto-style37">
                                                                        <h3>Total Seat</h3>
                                                                    </td>
                                                                    <td class="auto-style38" >
                                                                        :
                                                                    </td>
                                                                    <td class="auto-style36">
                                                                        <asp:Label ID="totalseat" runat="server" Text="Label" Font-Bold="True" Font-Size="Small"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                
                                                                
                                                                <tr>
                                                                    <td class="auto-style37">
                                                                       <h3> Total Fare</h3>
                                                                    </td>
                                                                    <td class="auto-style38">
                                                                        :
                                                                    </td>
                                                                    <td class="auto-style36">
                                                                        <asp:Label ID="Label15" runat="server" Text="Rs." Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>
                                                                        <asp:Label ID="totalfare" runat="server" Text="Label" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                        </tbody>
                                                    </table>
                                                    
                                                    </div>
                                                </div>
                                        </asp:Panel></div>
        &nbsp;<asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" CssClass="center" /><br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                                   <asp:Button ID="save" runat="server" CssClass="btn btn-success" Text="Save" OnClick="save_Click" Font-Bold="True" Font-Size="Medium" />
       &nbsp;&nbsp;
       <asp:Button ID="ibnext" CssClass="btn btn-success" runat="server" Text="Next" OnClick="ibnext_Click" Font-Bold="True" Font-Size="Medium" />
    </td>
    
     <br />
 
    </asp:Content>

