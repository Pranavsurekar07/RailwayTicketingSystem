<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>User Registration page</title>
   <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="home.aspx"><span>
                            <img alt="Logo" src="Images/railway-logo-edi1.jpg" height="30" /></span> Railway Ticketing System</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="home.aspx">Home</a></li>
                            
                            
                            
                            <li id="btnSignin" runat="server"><a href="userlogin.aspx">Login</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sign Up -->
<div class="container">
    
    
        <div class="center-page">
            <label class="col-xs-5"><h2>Registration Details</h2></label>
            <label class="col-xs-11">Full Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="fullname" runat="server" Class="form-control" placeholder="Full Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="fullname"
                                        ErrorMessage="Full Name is required." Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            

            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="Usename"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbUname" runat="server" ErrorMessage="Enter Username !!" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
           

               <label class="col-xs-11">Gender</label>
            <div class="col-xs-11">
                <asp:RadioButton ID="RadioMale" runat="server" Text="Male" GroupName="gender" />
                <asp:RadioButton ID="RadioFemale" runat="server" Text="Female" GroupName="gender" />
                </div>

            <label class="col-xs-11">Mobile Number</label>
             <div class="col-xs-11">
            <asp:TextBox ID="tbmobile" MaxLength="10" runat="server" Class="form-control" placeholder="mobile number" TextMode="Number"></asp:TextBox>
                 <asp:RangeValidator ID="rangephnumber" Text="Invalid Number" Type="Double" MaximumValue="10000000000"
                                                                        MinimumValue="1" ControlToValidate="tbmobile" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red" />
                 </div>

            <label class="col-xs-11">Address</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbaddress" runat="server" Class="form-control" placeholder="Address"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbaddress" runat="server" ErrorMessage="Enter Your Address !!" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>

        

            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="regValid" runat="server" ErrorMessage="Invalid Email" Display="Dynamic" 
                                        ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"  ControlToValidate="tbEmail" ValidationGroup="CreateUserWizard1" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:RegularExpressionValidator>
                 <asp:Button ID="send" runat="server" CssClass="btn btn-default" Text="Send OTP" OnClick="btsend_Click" Font-Bold="True" Font-Size="Medium" CausesValidation="False" />
            </div>
            <asp:Panel runat="server" CssClass="center" ID="panel1">
                <div class="col-xs-10">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Enter OTP :" Font-Bold="True" Font-Size="Small"></asp:Label>
                    <br />
                    <div class="col-xs-11">
                        <asp:TextBox ID="otptextbox" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="Please enter OTP !" ControlToValidate="otptextbox" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    
                    <div class="col-xs-11"></div>
                    <div class="col-xs-11">
                        <asp:Button ID="verify" runat="server" CssClass="btn btn-default" Text="Verify" OnClick="btverify_Click" Font-Bold="True" Font-Size="Medium" />
                        <asp:Image ID="img" ImageUrl="~/Images/ok-icon (1).png" runat="server" Height="43px" Visible="False" Width="51px" /><asp:Image ID="Imag" ImageUrl="~/Images/Button-Close-icon.png" runat="server" Height="40px" Visible="False" Width="41px" /><asp:Label ID="lblerror" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    </div>
                        
            </asp:Panel>

          <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="tbPass"
                                        ControlToValidate="tbCPass" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                        ValidationGroup="CreateUserWizard1" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
            </div>

            <div class="col-xs-11 space-vert">
                <asp:Button ID="btregister" runat="server" Class="btn btn-success" Text="Register" OnClick="btn_register" Font-Bold="True" Font-Size="Medium" />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </div>

        </div>
    </div>
    
        <!-- Sign Up -->

        
            
    </form>

      

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
