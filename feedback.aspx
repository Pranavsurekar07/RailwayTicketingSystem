<%@ Page Title="Feedback page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br />
            <div class="form-horizontal"><br />
                <h2>User Feedback</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="Please Enter Your Name !!" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Email" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="regValid" runat="server" ErrorMessage="Invalid Email !!" Display="Dynamic" 
                                        ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"  ControlToValidate="email" ValidationGroup="CreateUserWizard1" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Comment" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
        <asp:TextBox ID="txtcomment" TextMode="MultiLine" runat="server" Height="99px" Width="470px"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsubmit" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="btnsubmit_Click" Font-Bold="True" Font-Size="Medium" />
                &nbsp;&nbsp;
                    <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
                </div>
             </div>
        </div><br />


    <br />
    <br />
    <br />
    <br />
    <br />


</asp:Content>

