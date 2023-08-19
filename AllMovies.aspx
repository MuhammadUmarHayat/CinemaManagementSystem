<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllMovies.aspx.cs" Inherits="Cinema_Management_System.AllMovies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cinema Management system</title>
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="assets/style.css">
    <link href="mastercss.css" rel="stylesheet" />
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
   
    <form id="form1" runat="server">
        <div>                      
 
<div>
    <br />
    <br />
 <center>
     <h2>List of Movies</h2>
<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>
 </center>  

</div>



        </div>
    </form>
</body>
</html>
