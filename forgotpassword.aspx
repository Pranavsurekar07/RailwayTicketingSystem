<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>forgot password</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="container">
            <div class="form-horizontal">
                <h2>Recover Password</h2>
                <hr />
                <asp:Panel runat="server" ID="panel1">
                <h3>Please enter your email address, We will send you the OTP to reset your password.</h3>
                
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Your Username :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Please enter your Username !" ControlToValidate="TextBox1" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" CssClass="col-md-2 control-label" Text="Your Email :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbEmailId" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Please enter your email ID !" ControlToValidate="tbEmailId" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btPassRec" runat="server" CssClass="btn btn-default" Text="Send" OnClick="btPassRec_Click" Font-Bold="True" Font-Size="Medium" />
                        <asp:Label ID="lblPassRec" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    </div>
                </div>
                    </asp:Panel>
                <asp:Panel ID="panel2" runat="server">
                    <h3>OTP Verification</h3>
                    <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Enter OTP :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="otptextbox" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Please enter OTP !" ControlToValidate="otptextbox" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="verify" runat="server" CssClass="btn btn-default" Text="Verify" OnClick="btverify_Click" Font-Bold="True" Font-Size="Medium" />
                        <asp:Image ID="img" ImageUrl="~/Images/ok-icon (1).png" runat="server" Height="52px" Visible="False" Width="57px" /><asp:Image ID="Imag" ImageUrl="~/Images/Button-Close-icon.png" runat="server" Height="48px" Visible="False" Width="53px" /><asp:Label ID="lblerror" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    </div>
                        </div>
                        <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnext" runat="server" CssClass="btn-success" Text="Next" OnClick="btnext_Click" Font-Bold="True" Font-Size="Medium" Visible="False" Width="105px" />
                        </div>
                </div>
                </asp:Panel>


                <asp:Panel runat="server" ID="panel3">
                <h3>New Password Details</h3>
                
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="New Password :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="Please enter Password !" ControlToValidate="tbpass" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Confirm Password :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="tbcpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="New password and Confirm password must be match !!" ControlToCompare="tbpass" ControlToValidate="tbcpass" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnreset" runat="server" CssClass="btn btn-default" Text="Reset" OnClick="btresetpass_Click" Font-Bold="True" Font-Size="Medium" />
                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    </div>
                </div>
                    </asp:Panel>

            </div>
        </div>

    
    </form>
</body>
</html>
