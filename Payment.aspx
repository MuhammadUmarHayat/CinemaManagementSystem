<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Cinema_Management_System.Payment" %>

<!DOCTYPE html>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="mastercss.css" rel="stylesheet" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="assets/style.css">
     <link href="mastercss.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Customer Panel |Payment Page</h1>
        <div>
     <%--navbar--%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><span class="text-warning">Cinema Management</span>System

          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              
              
              <li class="nav-item">
                
				<a class="nav-link" href="CustomerPanel.aspx">Customer Pannel</a>
              </li>
              <li class="nav-item">
                 <a class="nav-link" href="CustomerHistory.aspx">History</a>
              </li>
              <li class="nav-item">
                 <a class="nav-link" href="CustomerTicket.aspx">Generate Ticket</a>
              </li>
              
			  <li class="nav-item">
               <a class="nav-link" href="Logout.aspx">Logout</a>
              </li>
            </ul>
            
          </div>
        </div>
      </nav>
   


<br /><br /><br />
    

<br />
            <asp:Label ID="Label1" runat="server" Text="Label" style="font-style: italic; font-weight: 700; color: #339933;"></asp:Label>
            <br />
            <br />

            <table class="auto-style1">
                <tr>
                    <td>Customer Name</td>
                    <td>
                        <asp:Label ID="lblName" runat="server" style="font-weight: 700; color: #9900CC" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Customer CNIC Number</td>
                    <td>
                        <asp:Label ID="lblCNIC" runat="server" style="color: #00CC00; font-weight: 700; font-style: italic" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Total Payment with 10% discount</td>
                    <td>
            <asp:Label ID="lblTotalPayment" runat="server" Text="Label" style="font-style: italic; font-weight: 700; color: #CC00CC;"></asp:Label>
                


                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Choose payment method</td>
                    <td>
                        <asp:DropDownList ID="ddlmethod" runat="server">
                            <asp:ListItem>Bank</asp:ListItem>
                            <asp:ListItem>Card</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Bank Title</td>
                    <td>
                        <asp:TextBox ID="txtBankName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Account Number</td>
                    <td>
                        <asp:TextBox ID="txtAcNo" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>CSV Code (For Visa Card/Master Card)</td>
                    <td>
                        <asp:TextBox ID="txtCSV" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Payment Now" />
                        <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperLinkTicket" runat="server" Visible="False" NavigateUrl="~/CustomerTicket.aspx">Get Ticket Now</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
                


        </div>
    </form>
</body>
</html>
