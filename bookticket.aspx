<%@ Page Title="Ticket Booking" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bookticket.aspx.cs" Inherits="bookticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function validate() {
            var req = document.getElementById('<%=DropDownList3.ClientID %>');
            if (req.value == '0') {
                alert("please select class !!");
            }
        }
    </script>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
            <div class="form-horizontal">
                <br />
                <br /><br /><asp:Image ID="Image1" ImageUrl="~/Images/Ticket_1_Icon_128.png" runat="server" /><h2>Railway Tickets Booking</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Select Source :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="0">-- Select Source --</asp:ListItem>                        
                        <asp:ListItem>AHMEDABAD</asp:ListItem>
                        <asp:ListItem>AJMER JN</asp:ListItem>
                        <asp:ListItem>AMRAVATI</asp:ListItem>
                        <asp:ListItem>BHUSAVAL JN</asp:ListItem>
                        <asp:ListItem>GONDIA</asp:ListItem>
                        <asp:ListItem>BILASPUR JN</asp:ListItem>
                        <asp:ListItem>CHENNAI CENTRAL</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Select Destination :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem Value="0">-- Select Destination --</asp:ListItem>
                        <asp:ListItem>NAGPUR</asp:ListItem>
                        <asp:ListItem>PURI</asp:ListItem>
                        <asp:ListItem>PUNE JN</asp:ListItem>
                        <asp:ListItem>MUMBAI CST</asp:ListItem>
                        <asp:ListItem>JABALPUR</asp:ListItem>
                        <asp:ListItem>H NIZAMUDDIN</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Travel Date :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox><div class="col-md-10"></div>
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="146px" Width="235px" OnDayRender="Calendar1_DayRender" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest">
                        <DayHeaderStyle ForeColor="#336666" Height="1px" BackColor="#99CCCC" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                        </div>
                    </div>

                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Select Class :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Class</asp:ListItem>
                        <asp:ListItem>General Class</asp:ListItem>
                        <asp:ListItem>AC First Class</asp:ListItem>
                        <asp:ListItem>AC 2 tier</asp:ListItem>
                        
                        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="Select Class" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select Class Please !!" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-3">
                        <asp:Button ID="Button1" runat="server" Text="Check" OnClientClick="validate()" CssClass="btn btn-success" OnClick="btn_Check" Font-Bold="True" Font-Size="Medium" />
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                        <br />
                        <br />
                        <asp:GridView ID="GridTrain" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" Width="788px" Height="102px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                            <Columns>
                                <asp:BoundField DataField="TrainNumber" HeaderText="TrainNumber" ReadOnly="True" SortExpression="TrainNumber" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TrainName" HeaderText="TrainName" SortExpression="TrainName" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" >
                                 <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                 <asp:BoundField DataField="Date" HeaderText="Departure Date" SortExpression="Date" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Departure" HeaderText="Departure Time" SortExpression="Departure" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Arrival" HeaderText="Arrival Time" SortExpression="Arrival" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:CommandField ShowSelectButton="True" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                            
                        </asp:GridView>
                        <br />
                    </div>
                </div>

                </div>
        </div>
</asp:Content>

