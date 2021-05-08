<%@ Page Title="Ticket print page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">

        var gAutoPrint = true;

        function processPrint() {

            if (document.getElementById != null) {

                var html = '<html>\n<head>\n';

                if (document.getElementsByTagName != null) {

                    var headTags = document.getElementsByTagName("head");

                    if (headTags.length > 0) html += headTags[0].innerHTML;

                }

                html += '\n</head>\n<body>\n';

                var printReadyElem = document.getElementById("PrintArea");

                if (printReadyElem != null) html += printReadyElem.innerHTML;

                else {

                    alert("Error, no contents.");

                    return;

                }

                html += '\n</body>\n</html>';

                var printWin = window.open("", "processPrint");

                printWin.document.open();

                printWin.document.write(html);

                printWin.document.close();

                if (gAutoPrint) printWin.print();

            } else alert("Browser not supported.");

        }


</script> 
<style type="text/css" media="print" >
body
{
font-size:12px;
}
#btnPrint
{
	display:none;
	}
</style>  
    <style type="text/css">
        .auto-style1 {
            width: 315px;
        }
        .auto-style2 {
            width: 708px;
        }
        .auto-style3 {
            width: 171px;
        }
        .auto-style4 {
            width: 218px;
        }
        .auto-style5 {
            text-align: center;
            height: 222px;
        }
        .auto-style6 {
            height: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="container">
        
   
    
        <table class="center">
            <tr>
                    <td>
                        <strong class="center"> 
                <br />
                <br />
                <br />
                <asp:Label ID="lblheat" runat="server" Text="HAPPY JOURNEY" Font-Size= "XX-Large"  
                    ForeColor="#F7990D" BorderColor="#0099CC" BorderStyle="Solid"></asp:Label>
                    </strong>
                    </td>
                </tr>
        </table>
        <table  class="center" style="border: thick solid #008080; width: 64%; height: 506px;">
            <tbody>
                
                            <tr>
                                <td colspan="3" class="auto-style5" style="border-bottom: 2px solid gray; padding-bottom:5px; background-color: #0066FF;">
                                  <asp:Image ID="Image1" ImageUrl="~/Images/railway-logo-edi1.jpg" runat="server" Height="147px"
                                        Width="246px" BackColor="#66FFFF" />
                                </td>
                                <td class="auto-style6" colspan="3" style="color: Blue;border-bottom: 2px solid gray; padding-bottom: 5px; background-color: #99CCFF;">
                                     
                                    <h3>Congratulations! You have successfully booked a ticket. </h3>
                                    
                                    <h4>Please carry ticket print along with a relevant photo ID card while travelling</h4>
                                    <br />
                                    <h4>Thank You !!</h4>
                                   
                                    
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style3">
                                    <h4>Ticket Number</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="auto-style1">
                                    <span><strong>
                                        <asp:Literal ID="ticketnumber" runat="server" />
                                    </strong></span>
                                </td>
                                 <td class="auto-style4">
                                    <h4>Train Name</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td >
                                    <span><strong>
                                        <asp:Literal ID="trainname" runat="server" />
                                    </strong></span>
                                </td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <h4>Name</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="auto-style1">
                                    <span><strong>
                                        <asp:Literal ID="txtname" runat="server" />
                                    </strong></span>
                                </td>
                                <td class="auto-style4">
                                    <h4>Booking Date</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td >
                                    <span><strong>
                                        <asp:Literal ID="txtbookdate" runat="server" />
                                    </strong></span>
                                </td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <h4>Seat Numbers</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td >
                                    <span><strong>
                                        <asp:Literal ID="seatnum" runat="server" />
                                    </strong></span>
                                </td>
                                
                                <td class="auto-style3">
                                    <h4>Train Number</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="auto-style1">
                                    <span><strong>
                                        
                                        <asp:Literal ID="trainnum" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <h4>Source</h4>
                                </td>
                                <td class="arial18 ">
                                    :
                                </td>
                                <td class="auto-style1">
                                    <span><strong>
                                  <asp:Literal ID="txtsource" runat="server"></asp:Literal>
                                       </strong> </span>
                                    </td>
                               
                                <td class="auto-style4">
                                   <h4> Destination</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="auto-style2">
                                    <span><strong>
                                        <asp:Literal ID="txtdestination" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                 <td class="auto-style3">
                                    <h4>Journey Date</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="auto-style1">
                                    <span><strong>
                                        <asp:Literal ID="departuredate" runat="server" />
                                    </strong></span>
                                </td>
                                
                               <td class="auto-style4">
                                    <h4>Journey Time</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="auto-style2">
                                    <span><strong>
                                        <asp:Literal ID="txtdeparture" runat="server" />
                                    </strong></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <h4>Seat Numbers</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="auto-style1">
                                    <span><strong>
                                        <asp:Literal ID="txtseatnumber" runat="server" />
                                    </strong></span>
                                </td>
                               
                                 <td class="auto-style4">
                                    <h4>No.of Passengers</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="auto-style2">
                                    <span><strong>
                                        <asp:Literal ID="totalseats" runat="server" /></strong></span>
                                </td>
                            </tr>
                            <tr>
                                 <td class="auto-style3">
                                    <h4>Total Fare</h4>
                                </td>
                                <td class="arial18">
                                    :
                                </td>
                                <td class="auto-style1">
                                    <span><strong>
                                        <asp:Literal ID="totalfare" runat="server" />
                                    </strong></span>
                                </td>
                                <td class="auto-style1">

                                </td>
                            </tr>

                </tbody>
            
        </table>
         



    </div>
    <br />
    <table>
        <tr>
            <td class="center">
<asp:Button ID="Button1" runat="server" Text="Print" OnClientClick="javascript:window.print();" OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium" Width="109px"/>
            &nbsp;
                </td>
        </tr>
    </table>
    
<br />
<br />
<br />
<br />
<br />
<br />
<br />
    <br />
</asp:Content>

