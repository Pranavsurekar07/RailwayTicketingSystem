<%@ Page Title="Cancel Ticket page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cancelticket.aspx.cs" Inherits="cancelticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .form-horizontal {
            height: 199px;
            width: 1175px;
        }
        .auto-style7 {
            height: 42px;
        }
        .auto-style8 {
            height: 38px;
        }
        .auto-style9 {
            height: 38px;
            width: 218px;
        }
        .auto-style10 {
            height: 38px;
            width: 301px;
        }
        .auto-style11 {
            height: 37px;
        }
        .auto-style12 {
            height: 37px;
            width: 218px;
        }
        .auto-style13 {
            height: 37px;
            width: 301px;
        }
        .auto-style15 {
            height: 44px;
            width: 218px;
        }
        .auto-style17 {
            height: 44px;
        }
        .auto-style18 {
            height: 41px;
        }
        .auto-style19 {
            height: 41px;
            width: 218px;
        }
        .auto-style20 {
            height: 41px;
            width: 301px;
        }
        .auto-style25 {
            width: 100px;
            height: 44px;
        }
        .auto-style26 {
            height: 44px;
            width: 301px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="container">
            <div class="form-horizontal">
               <br /> <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/remove-ticket-1-icon.png" /><h2>Ticket Cancellation</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Enter Ticket Number" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="ticketnumber" CssClass="form-control" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="ticketnumber" runat="server" ErrorMessage="Please enter (number-only)" ValidationExpression="^[0-9]+$" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <asp:Button ID="btncancel" runat="server" CssClass="btn btn-success" Text="Display" OnClick="btndisplay_Click" Font-Bold="True" Font-Size="Medium" />
                    <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
                </div>
                </div>
        </div>
    <br />
    <br />
   

    &nbsp;&nbsp;<asp:Panel  ID="pnl2" runat="server" Visible="False" style="margin-top: 15px">
                                            <div id="Div1">
                                                                             
                                                <div>
                                                     &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                                    <table border="0" style="border:2px solid gray;padding:15px; height: 358px;">
                                                        <tbody  class="left"  >
                                                            <tr >
                                                                <td class="auto-style17" >
                                                                    <strong>PNR Number </strong> 
                                                                </td>
                                                                <td class="auto-style17">
                                                                    :
                                                                </td>
                                                                <td class="auto-style15">
                                                                    <asp:Literal ID="litpnr" runat="server" />
                                                                </td>
                                                                <td style="margin-left:15px;" class="auto-style25">
                                                                    <strong>Train Number</strong></td>
                                                                <td class="auto-style17">:</td>
                                                                <td class="auto-style26"><asp:Literal ID ="littrainnumber" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style11" >
                                                                    <strong>Name</strong>
                                                                </td>
                                                                <td class="auto-style11">
                                                                    :
                                                                </td>
                                                                <td class="auto-style12">
                                                                    <asp:Literal ID="litname" runat="server" />
                                                                </td>
                                                                  <td class="auto-style11" >
                                                                    <strong>Train Name</strong>
                                                                </td>
                                                                <td class="auto-style11">
                                                                    :
                                                                </td>
                                                                <td class="auto-style12">
                                                                    <asp:Literal ID="trainname" runat="server" />
                                                                </td>
                                                                
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style18">
                                                                    <strong>Source </strong>
                                                                </td>
                                                                <td class="auto-style18">
                                                                    :
                                                                </td>
                                                                <td class="auto-style19">
                                                                 <asp:Literal ID="litsource" runat="server" />   
                                                                </td>
                                                                <td class="auto-style18">
                                                                    <strong> Destination </strong> </td>
                                                                <td class="auto-style18">:</td>
                                                                <td class="auto-style20"><asp:Literal ID="litdestination" runat="server" /></td>
                                                                </tr> 
                                                                <tr>
                                                                    <td  class="auto-style17">
                                                                        <strong>Departure Date </strong>
                                                                    </td>
                                                                    <td  class="auto-style17">
                                                                        :
                                                                    </td>
                                                                    <td  class="auto-style15">
                                                                        <asp:Literal ID="litdeparturedate" runat="server"></asp:Literal>
                                                                    </td>
                                                                    <td class="auto-style17">
                                                                        <strong>Departure Time</strong></td>
                                                                    <td class="auto-style17">:</td>
                                                                    <td class="auto-style26"><asp:Literal ID="litdeparturetime" runat="server" /></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="auto-style11">
                                                                        <strong> Seat Number </strong>
                                                                    </td>
                                                                    <td  class="auto-style11">
                                                                        :
                                                                    </td>
                                                                    <td  class="auto-style12">
                                                                        <asp:Literal ID="litseat" runat="server"></asp:Literal>
                                                                    </td>
                                                                    <td class="auto-style11">
                                                                        <strong>Total Seat</strong> </td>
                                                                    <td class="auto-style11">:</td>
                                                                    <td class="auto-style13"><asp:Literal ID="littotalseat" runat="server" />    </td>
                                                                </tr>
                                                               
                                                                <tr>
                                                                    <td class="auto-style8">
                                                                        <strong>Status</strong></td>
                                                                    <td class="auto-style8">
                                                                        :</td>
                                                                    <td  class="auto-style9">
                                                                        <asp:Literal ID="litStatus" runat="server"></asp:Literal></td>
                                                                    <td class="auto-style8">
                                                                        </td>
                                                                    <td class="auto-style8">
                                                                        </td>
                                                                    <td class="auto-style10">
                                                                        </td>
                                                            </tr>
                                                                <tr>
                                                                    <td class="auto-style7" >
                                                                        <strong>Total Fare</strong>
                                                                    </td>
                                                                    <td class="auto-style7">
                                                                        :
                                                                    </td >
                                                                    <td colspan="4" class="auto-style7">
                                                                        <strong>Rs.
                                                                        <asp:Literal ID="littotalfare" runat="server" />
                                                                    </strong></td>
                                                                </tr>
                                                                 <tr><td colspan="6" class="center" >
                                                                <asp:Button ID="btndel" runat="server" class="center" Text =" Delete " CssClass="btn-danger" onclick="btndel_Click" Font-Bold="True" Font-Size="Small" />
                                                                </td></tr>
                                                                
                                                        </tbody>
                        </table>
                        </div></div> </asp:Panel>
    <br />

    <br />
    <br />
   

</asp:Content>

