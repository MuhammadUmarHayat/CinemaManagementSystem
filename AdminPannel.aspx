<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPannel.aspx.cs" Inherits="Cinema_Management_System.AdminPannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cinema Management system</title>
    <link href="mastercss.css" rel="stylesheet" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="assets/style.css">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>     
             <h1> Admin Panel</h1>

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
                <a class="nav-link" href="AdminPannel.aspx">Admin Pannel</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="ManageCategories.aspx">Manage Categories</a>
              </li>
                 <li class="nav-item">
                <a class="nav-link" href="ManageMovies.aspx">Manage Movies</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="ManageShows.aspx">Manage Shows</a>
              </li>
              <li class="nav-item">
               <a class="nav-link" href="ManageTickets.aspx">Manage Tickets</a>
              </li>
              <li class="nav-item">
               <a class="nav-link" href="Admin_Book_Tickets.aspx">Book Tickets</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="AdminGenerateTickets.aspx"> Generate Tickets</a>
              </li>
			  <li class="nav-item">
               <a class="nav-link" href="Logout.aspx">Logout</a>
              </li>
            </ul>
            
          </div>
        </div>
      </nav>
   <br />
            <br />
            <br />

<div>
    <center>

   
    <div style="background-color:#00cc00; width:45%; height:200px;float:left; padding:10px; margine:10px;">
<asp:Label ID="Label1" runat="server" Text="Label" style="font-size: xx-large; font-weight: 700; font-style: italic; color: #FFFFFF"></asp:Label>
    </div>
       <div style="background-color:Orange; width:45%; height:200px;float:left; padding:10px; margine:10px;"> 
<asp:Label ID="Label2" runat="server" Text="Label" style="font-size: xx-large; font-weight: 700; font-style: italic; color: #FFFFFF"></asp:Label>
       </div>
        <div style="background-color:#ff0066; width:45%; height:200px;float:left; padding:10px; margine:10px;">
<asp:Label ID="Label3" runat="server" Text="Label" style="font-weight: 700; font-size: xx-large; font-style: italic; color: #FFFFFF"></asp:Label>
        </div>
        <div style="background-color:#6600cc; width:45%; height:200px;float:left; padding:10px; margine:10px;">
<asp:Label ID="Label4" runat="server" Text="Label" style="font-size: xx-large; font-weight: 700; font-style: italic; color: #FFFFFF"></asp:Label>
        </div>
       
          
    
     </center>

</div>



        </div>
    </form>
</body>
</html>
