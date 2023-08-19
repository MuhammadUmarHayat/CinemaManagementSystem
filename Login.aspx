<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cinema_Management_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="assets/style.css">
    <%--<link href="mastercss.css" rel="stylesheet" />--%>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 86px;
        }
    </style>
</head>
<body>
    
<%--navbar--%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><span class="text-info">Cinema Management</span>System

          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              
              <li class="nav-item">
                 <asp:HyperLink class="nav-link" ID="HyperLink8" runat="server" NavigateUrl="~/welcome.aspx">Home</asp:HyperLink>
              </li>
              <li class="nav-item">
                 <asp:HyperLink ID="HyperLink3" class="nav-link" runat="server" NavigateUrl="~/AllMovies.aspx">Movies</asp:HyperLink></li>
              </li>
              <li class="nav-item">
                 <asp:HyperLink class="nav-link" ID="HyperLink4" runat="server" NavigateUrl="~/AllShows.aspx">Show Times</asp:HyperLink></li>
              </li>
              <li class="nav-item">
                 <asp:HyperLink  class="nav-link" ID="HyperLink5" runat="server" NavigateUrl="~/RegistrationForm.aspx">Memberships</asp:HyperLink></li>
              </li>
              <li class="nav-item">
                 <asp:HyperLink class="nav-link" ID="HyperLink6" runat="server" NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink></li>
              </li>
              <li class="nav-item">
              <asp:HyperLink class="nav-link" ID="HyperLink7" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink></li>
              </li>
              
            </ul>
            
          </div>
        </div>
      </nav>
 
   <br /><br /><br /><br />

    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Enter your email</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Formate is not corract" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter your password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" style="font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large; color: #FF0000"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
        </div>
    </form>
</body>
</html>
