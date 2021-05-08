<%@ Page Title="Change Password page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            height: 188px;
        }
        .auto-style3 {
            text-align: center;
            height: 188px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div>
    <br />
    
    <table style="width: 80%; height: 360px;">
        <tr>
            <td class="auto-style2">
                <asp:Image ID="Image1" ImageUrl="~/Images/Key-icon.png" runat="server" Height="144px" Width="281px" />
            </td>
            <td colspan="2" class="left"><h2>Change Password</h2></td>
            
        </tr>
        <tr>
            <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium">Old Password :</asp:Label></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="oldpassword" runat="server" CssClass="text-center" Height="40px" TextMode="Password" Width="250px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter old password !!" Font-Bold="True" ControlToValidate="oldpassword" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
            
        </tr>
        <tr>
            
            <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="New Password :" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="newpassword" runat="server" CssClass="text-center" Height="40px" TextMode="Password" Width="250px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter New password !!" Font-Bold="True" ControlToValidate="newpassword" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
            
        </tr>
         <tr>
            <td class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Confirm Password :" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
            <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="confirmpassword" runat="server" CssClass="text-center" Height="40px" TextMode="Password" Width="250px" ></asp:TextBox>
                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="newpassword"
                                        ControlToValidate="confirmpassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                        ValidationGroup="CreateUserWizard1" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator><br />
             </td>
            
        </tr>
        <tr>
            <td colspan="3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="update" runat="server" Text="Update" CssClass="alert-success" Font-Bold="True" Font-Size="Medium" Height="40px" OnClick="update_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="errormsg" ForeColor="Red" Font-Bold="True" runat="server" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;
            </td>
        </tr>

    </table>
        </div>
    <br />

    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>

