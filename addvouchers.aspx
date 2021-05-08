<%@ Page Title="Add Voucher" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="addvouchers.aspx.cs" Inherits="addvouchers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
            <div class="form-horizontal">
                <br /><br />
                <h2>Add Vouchers</h2>
                <hr />
                <div class="form-group">
                     <br />
                    <asp:Label ID="Label2" runat="server"  Text="Select Amount :" Font-Bold="True" Font-Size="Large"></asp:Label>
                     <br />
                     &nbsp;&nbsp;&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="col-md-2 " runat="server" AutoPostBack="True" Height="18px" Width="91px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Size="Medium">
                        <asp:ListItem>500</asp:ListItem>
                        <asp:ListItem>1000</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                    </asp:RadioButtonList>
                    <br /><asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Voucher Code :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="voucher" CssClass="form-control" runat="server" OnTextChanged="voucher_TextChanged" ReadOnly="True"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="voucher" runat="server" ErrorMessage="Please Enter (Number-only) " ValidationExpression="^[0-9]+$" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>&nbsp;<br /><asp:Button ID="valid" CssClass="btn btn-success" runat="server" Text="Add Voucher" OnClick="addvoucher_Click" Font-Bold="True" Font-Size="Medium" />
                        &nbsp;&nbsp;
                        <asp:Label ID="lblerror" runat="server" CssClass="glyphicon-bold" Font-Bold="True" Font-Size="Medium"></asp:Label>
                        <br />
                        <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Voucher_code" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="287px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Voucher_code" HeaderText="Voucher_code" ReadOnly="True" SortExpression="Voucher_code">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Voucher]"></asp:SqlDataSource>
                    </div>
                    
                </div>
                </div>
         </div>
    <br />

     <br />
     <br />
     <br />

</asp:Content>

