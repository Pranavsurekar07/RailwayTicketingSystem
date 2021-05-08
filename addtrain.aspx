<%@ Page Title="Add Train" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="addtrain.aspx.cs" Inherits="addtrain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container"><br />
         
         
         <br /><h2>Train Details to Add</h2>
        <div class="form-horizontal">
            <label class="col-xs-11">Train Number</label>
            <div class="col-xs-11">
                <asp:TextBox ID="trainnumber" runat="server" Class="form-control" placeholder="Train Number"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="trainnumber" runat="server" ErrorMessage="Train Number is Required !!" ValidationExpression="^[0-9]+$" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
            

            <label class="col-xs-11">Train Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="trainname" runat="server" Class="form-control" placeholder="Train Name"></asp:TextBox>
            </div>
            <label class="col-xs-11">Source</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="DropDownList1" runat="server" >
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

            <label class="col-xs-11">Destination</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="0">-- Select Destination --</asp:ListItem>
                        <asp:ListItem>NAGPUR</asp:ListItem>
                        <asp:ListItem>PURI</asp:ListItem>
                        <asp:ListItem>PUNE JN</asp:ListItem>
                        <asp:ListItem>MUMBAI CST</asp:ListItem>
                        <asp:ListItem>JABALPUR</asp:ListItem>
                        <asp:ListItem>H NIZAMUDDIN</asp:ListItem>
                        </asp:DropDownList>
            </div>
            <label class="col-xs-11">Date</label>
            <div class="col-xs-11">
                <asp:TextBox ID="date" runat="server" Class="form-control" placeholder="Date" ReadOnly="True" ></asp:TextBox><asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="146px" Width="235px" OnDayRender="Calendar1_DayRender" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest">
                        <DayHeaderStyle ForeColor="#336666" Height="1px" BackColor="#99CCCC" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="date" ErrorMessage="Date is Required !!" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            

            <label class="col-xs-11">Departure Time</label>
            <div class="col-xs-11">
                <asp:TextBox ID="departure" runat="server" Class="form-control" placeholder="08:00:00" ></asp:TextBox>
            </div>
            <label class="col-xs-11">Arrival Time</label>
            <div class="col-xs-11">
                <asp:TextBox ID="arrival" runat="server" Class="form-control" placeholder="12:00:00" ></asp:TextBox>
            </div>
            <div class="col-xs-11 space-vert">
                <asp:Button ID="btregister" runat="server" Class="btn btn-success" Text="Submit" OnClick="btn_submit" Font-Bold="True" Font-Size="Medium" />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                <br />
                <br />
            </div>
            <div class="col-md-3">
                     <asp:GridView ID="GridView1" runat="server"  AutoGenerateDeleteButton="True" AutoGenerateColumns="False" DataKeyNames="TrainNumber" DataSourceID="SqlDataSource1" Width="689px" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="TrainNumber" HeaderText="TrainNumber" ReadOnly="True" SortExpression="TrainNumber" />
        <asp:BoundField DataField="TrainName" HeaderText="TrainName" SortExpression="TrainName" />
        <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
        <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="Arrival" HeaderText="Arrival" SortExpression="Arrival" />
        <asp:BoundField DataField="Departure" HeaderText="Departure" SortExpression="Departure" />
    </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE from [Train] where [TrainNumber]=@TrainNumber" SelectCommand="SELECT [TrainNumber], [TrainName], [Source], [Destination], [Date], [Arrival], [Departure] FROM [Train]" UpdateCommand="UPDATE [Train] set [TrainName]=@TrainName [Source]=@Source [Destination]=@Destination [Date]=@Date [Arrival]=@Arrival [Departure]=@Departure   where [TrainNumber]=@TrainNumber"></asp:SqlDataSource>
       
            </div>


              </div>
    </div>
    
       
    
</asp:Content>

