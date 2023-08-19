<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerTicket.aspx.cs" Inherits="Cinema_Management_System.CustomerTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Tickets</title>
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="assets/style.css">
     <link href="mastercss.css" rel="stylesheet" />
    <script type="text/javascript">
         function CallPrint(strid) {
             var prtContent = document.getElementById(strid);
             var WinPrint = window.open('', '', 'letf=0,top=0,width=400,height=400,toolbar=0,scrollbars=0,status=0');
             WinPrint.document.write(prtContent.innerHTML);
             WinPrint.document.close();
             WinPrint.focus();
             WinPrint.print();
             WinPrint.close();
         }
         function btnPrint_onclick() {
         }
    </script>
</head>
<body>
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
   
<%--  --%>
    <br /> <br /> <br /> <br />
    <form id="form1" runat="server">
       <h1>Customer Tickets </h1>
        <div>
    <ul>
      
  <li><p style="color:white; font-family: 'Brush Script MT', cursive; font-size: 18px;"><strong> Cinema Management System</strong></p></li>
  <li><a href="CustomerPanel.aspx">Customer Pannel</a></li>
     <li><a href="CustomerHistory.aspx">History</a></li>
  <li><a href="CustomerTickets.aspx">Generate Ticket</a></li>
  
     <li><a href="Logout.aspx">Logout</a></li>
    
</ul>

<br />
<input type="button" value="print " id="btnPrint" runat="Server" onclick="javascript:CallPrint('mydiv')" />
        <div id="mydiv">
            <table class="auto-style1">
                
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemStyle />
                             <HeaderTemplate>

                <h2> Tickets</h2>

            </HeaderTemplate>
                            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

                             <ItemTemplate>
                                 


                                 <table border="1">
                                     <tr>
                                         <tb><asp:Image ID="img" runat="server" Width="150px" Height="150px" ImageUrl="~/images/logo.png" style="padding-left:40px"/></tb>
                                         <tb> <strong>Customer Name</strong>   <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("Name") %>'></asp:Label></tb>
                                         <tb><strong>Date</strong> <asp:Label ID="Label1" runat="server" Text='<%# Bind("ReservationDate") %>'></asp:Label></tb>

                                     </tr>
                                     <tr><td><strong>Movie Name</strong> <asp:Label ID="Label2" runat="server" Text='<%# Bind("movieName") %>'></asp:Label></td> 
                                         <td> <strong>Seat Number(s)</strong> <asp:Label ID="Label3" runat="server" Text='<%# Bind("seatNumbers") %>'></asp:Label></td>
                                         <td><strong>Ticket Type </strong> <asp:Label ID="Label4" runat="server" Text='<%# Bind("TicketType") %>'></asp:Label></td></tr>

                                     <tr><td><strong> Theatre</strong> <asp:Label ID="Label5" runat="server" Text='<%# Bind("theatre") %>'></asp:Label></td>
                                         <td> <strong> Time</strong>  <asp:Label ID="Label6" runat="server" Text='<%# Bind("ShowTime") %>'></asp:Label> <strong>Show Date</strong>  <asp:Label ID="Label7" runat="server" Text='<%# Bind("ShowDate") %>'></asp:Label></td>
                                         <td><strong>Total Payment</strong> <asp:Label ID="Label8" runat="server" Text='<%# Bind("totalPayment") %>'></asp:Label></td></tr>

                                 </table>
                                

                                 </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>



    </form>
</body>
</html>
