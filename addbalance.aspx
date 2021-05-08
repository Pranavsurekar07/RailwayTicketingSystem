<%@ Page Title="Wallet" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addbalance.aspx.cs" Inherits="addbalance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
            <div class="form-horizontal">
                <br /><br />
                <h2>Add Balance</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Select Amount :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Height="18px" Width="91px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Size="Medium">
                        <asp:ListItem>500</asp:ListItem>
                        <asp:ListItem>1000</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <br /><asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Enter Voucher Code :" Font-Bold="True" Font-Size="Small"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="voucher" CssClass="form-control" runat="server"></asp:TextBox><asp:Image ID="img" ImageUrl="~/Images/ok-icon (1).png" runat="server" Height="52px" Visible="False" Width="57px" /><asp:Image ID="Imag" ImageUrl="~/Images/Button-Close-icon.png" runat="server" Height="48px" Visible="False" Width="53px" />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Please enter voucher code !" ControlToValidate="voucher" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="voucher" runat="server" ErrorMessage="Please Enter Voucher Code (Number-Only) !!" ValidationExpression="^[0-9]+$" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RegularExpressionValidator>&nbsp;<asp:Button ID="valid" CssClass="btn btn-default navbar-btn" runat="server" Text="Validate Voucher" OnClick="valid_Click" Font-Bold="True" Font-Size="Medium" />
                    </div>
                </div>
                
                <div class="col-md-3">
                    <asp:Button ID="add" runat="server" CssClass="btn btn-success" Text="Add Balance" OnClick="btnadd_Click" Enabled="False" Font-Bold="True" Font-Size="Medium" />
                    <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF"></asp:Label>
                </div>
                </div>
        </div>
    <br />
    <br />
    <br />
</asp:Content>

