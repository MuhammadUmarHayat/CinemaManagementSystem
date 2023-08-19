<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetMembership.aspx.cs" Inherits="Cinema_Management_System.GetMembership" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #CCCCCC;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
            color: #660066;
        }
        .auto-style4 {
            color: #6600CC;
        }
        .auto-style5 {
            color: #FF3300;
        }
    </style>
</head>
<body style="width: 543px; height: 326px; margin-left: 264px">
    <form id="form1" runat="server">
        <div>



            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">&nbsp;<strong><span class="auto-style3">Get member ship to get discout&nbsp;</span></strong></td>
                </tr>
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
                    <td>Customer Email</td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" style="font-weight: 700; font-style: italic" Text="Label" CssClass="auto-style4"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Payment for membership</td>
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
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style5"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperLinkTicket" runat="server" Visible="False" NavigateUrl="~/Login.aspx">Login Now</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            


        </div>
    </form>
</body>
</html>
