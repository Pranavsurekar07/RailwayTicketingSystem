<%@ Page Title="Check PNR status page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pnrstatus.aspx.cs" Inherits="pnrstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 218px;
        }
        .auto-style2 {
            width: 120px;
        }
        .auto-style3 {
            width: 205px;
        }
        .auto-style4 {
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br /><br />
    <h2>PNR Status</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Enter Ticket Number" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="ticketnumber" CssClass="form-control" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="ticketnumber" runat="server" ErrorMessage="Please enter (number-only)" ValidationExpression="^[0-9]+$" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <asp:Button ID="btncancel" runat="server" CssClass="btn btn-success" Text="Check" OnClick="btndisplay_Click" Font-Bold="True" Font-Size="Medium" />
                    <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label>
                </div>
           </div>
    <asp:Panel  ID="pnl2" runat="server" Visible="False" style="margin-top: 15px">
                                            <div id="Div1">
                                                                             
                                                <div>
                                                     &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                                    <table border="0" style="border:2px solid gray;padding:15px; height: 264px; position: relative; top: 0px; left: 0px; width: 759px;">
                                                        <tbody  class="left"  >
                                                            <tr >
                                                                <td class="auto-style4" >
                                                                    <strong>PNR Number </strong> 
                                                                </td>
                                                                <td class="auto-style17">
                                                                    :
                                                                </td>
                                                                <td class="auto-style3">
                                                                    <asp:Literal ID="litpnr" runat="server" />
                                                                </td>
                                                                <td style="margin-left:15px;" class="auto-style2">
                                                                    <strong>Train Number</strong></td>
                                                                <td class="auto-style17">:</td>
                                                                <td class="auto-style1"><asp:Literal ID ="littrainnumber" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style4" >
                                                                    <strong>Name</strong>
                                                                </td>
                                                                <td class="auto-style11">
                                                                    :
                                                                </td>
                                                                <td class="auto-style3">
                                                                    <asp:Literal ID="litname" runat="server" />
                                                                </td>
                                                                  <td class="auto-style2" >
                                                                    <strong>Train Name</strong>
                                                                </td>
                                                                <td class="auto-style11">
                                                                    :
                                                                </td>
                                                                <td class="auto-style1">
                                                                    <asp:Literal ID="trainname" runat="server" />
                                                                </td>
                                                                
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style4">
                                                                    <strong>Source </strong>
                                                                </td>
                                                                <td class="auto-style18">
                                                                    :
                                                                </td>
                                                                <td class="auto-style3">
                                                                 <asp:Literal ID="litsource" runat="server" />   
                                                                </td>
                                                                <td class="auto-style2">
                                                                    <strong> Destination </strong> </td>
                                                                <td class="auto-style18">:</td>
                                                                <td class="auto-style1"><asp:Literal ID="litdestination" runat="server" /></td>
                                                                </tr> 
                                                                <tr>
                                                                    <td  class="auto-style4">
                                                                        <strong>Departure Date </strong>
                                                                    </td>
                                                                    <td  class="auto-style17">
                                                                        :
                                                                    </td>
                                                                    <td  class="auto-style3">
                                                                        <asp:Literal ID="litdeparturedate" runat="server"></asp:Literal>
                                                                    </td>
                                                                    <td class="auto-style2">
                                                                        <strong>Departure Time</strong></td>
                                                                    <td class="auto-style17">:</td>
                                                                    <td class="auto-style1"><asp:Literal ID="litdeparturetime" runat="server" /></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="auto-style4">
                                                                        <strong> Seat Number </strong>
                                                                    </td>
                                                                    <td  class="auto-style11">
                                                                        :
                                                                    </td>
                                                                    <td  class="auto-style3">
                                                                        <asp:Literal ID="litseat" runat="server"></asp:Literal>
                                                                    </td>
                                                                    <td class="auto-style2">
                                                                        <strong>Total Seat</strong> </td>
                                                                    <td class="auto-style11">:</td>
                                                                    <td class="auto-style1"><asp:Literal ID="littotalseat" runat="server" />    </td>
                                                                </tr>
                                                               
                                                                <tr>
                                                                    <td class="auto-style4">
                                                                        <strong>Status</strong></td>
                                                                    <td class="auto-style8">
                                                                        :</td>
                                                                    <td  class="auto-style3">
                                                                        <asp:Literal ID="litStatus" runat="server"></asp:Literal></td>
                                                                    <td class="auto-style2">
                                                                        </td>
                                                                    <td class="auto-style8">
                                                                        </td>
                                                                    <td class="auto-style1">
                                                                        </td>
                                                            </tr>
                                                                <tr>
                                                                    <td class="auto-style4" >
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
                                                                 
                                                                
                                                        </tbody>
                        </table>
                        </div></div> </asp:Panel>
    <br />

    <br />
   
 
</asp:Content>

