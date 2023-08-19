<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Book_Tickets.aspx.cs" Inherits="Cinema_Management_System.Admin_Book_Tickets" %>

<!DOCTYPE html>


    <html xmlns="http://www.w3.org/1999/xhtml">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="assets/style.css">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <h1> Admin Ticket Booking Panel</h1>
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
   
        <div>

            <br />    <br />    <br />
            






            <table class="auto-style1" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>Ticket Type</td>
                    <td>
                        <asp:DropDownList ID="ddlticketTypes" runat="server" OnSelectedIndexChanged="ddlMovieTypes_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="type">
                            
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SeemabFDBConnectionString %>" SelectCommand="SELECT [type] FROM [tickets]"></asp:SqlDataSource>
                        <asp:Button ID="btn2" runat="server" OnClick="btn2_Click" Text="Next" CausesValidation="False" Height="28px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">CNIC</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCNIC" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCNIC" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">Price</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblTicketPrice" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Mobile Number</td>
                    <td>
                        <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMob" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>Total seats</td>
                    <td>
                        <asp:TextBox ID="txtSeats" runat="server"></asp:TextBox>
                        <asp:Button ID="btn3" runat="server" OnClick="btn3_Click" Text="Next" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSeats" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Select THEATRE</td>
                    <td>
                        <asp:DropDownList ID="ddlTheatre" runat="server" OnSelectedIndexChanged="ddlTheatre_SelectedIndexChanged">
                        </asp:DropDownList>
            <asp:Button ID="btn1" runat="server" Text="Next" OnClick="btn1_Click" CausesValidation="False" />
                    </td>
                    <td>Total</td>
                    <td>
                        <asp:Label ID="lblTotal" runat="server" style="font-weight: 700; font-style: italic; color: #009933"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Choose Time</td>
                    <td>
                        <asp:DropDownList ID="ddlTime" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>Available movie</td>
                    <td>
                        <asp:Label ID="lblMovie" runat="server" style="font-weight: 700; font-style: italic; color: #660066; font-size: large"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="Label1" runat="server" style="font-weight: 700"></asp:Label>


                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Choose Date</td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                        <asp:Label ID="lblShowDate" runat="server" style="font-weight: 700; font-style: italic; color: #990000"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2" rowspan="2">

                        <table align="center" border="1" class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="1" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="2" />
                                </td>
                                <td>
                                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="3" />
                                </td>
                                <td>
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="4" />
                                </td>
                                <td>
                                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="5" />
                                </td>
                                <td>
                                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="6" />
                                </td>
                                <td>
                                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="7" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="8" />
                                </td>
                                <td>
                                    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="9" />
                                </td>
                                <td>
                                    <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="10" />
                                </td>
                                <td>
                                    <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="11" />
                                </td>
                                <td>
                                    <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="12" />
                                </td>
                                <td>
                                    <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="13" />
                                </td>
                                <td>
                                    <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="14" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="15" />
                                </td>
                                <td>
                                    <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" Text="16" />
                                </td>
                                <td>
                                    <asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="17" />
                                </td>
                                <td>
                                    <asp:Button ID="Button18" runat="server" OnClick="Button18_Click" Text="18" />
                                </td>
                                <td>
                                    <asp:Button ID="Button19" runat="server" OnClick="Button19_Click" Text="19" />
                                </td>
                                <td>
                                    <asp:Button ID="Button20" runat="server" OnClick="Button20_Click" Text="20" />
                                </td>
                                <td>
                                    <asp:Button ID="Button21" runat="server" OnClick="Button21_Click" Text="21" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button22" runat="server" OnClick="Button22_Click" Text="22" />
                                </td>
                                <td>
                                    <asp:Button ID="Button23" runat="server" OnClick="Button23_Click" Text="23" />
                                </td>
                                <td>
                                    <asp:Button ID="Button24" runat="server" OnClick="Button24_Click" Text="24" />
                                </td>
                                <td>
                                    <asp:Button ID="Button25" runat="server" OnClick="Button25_Click" Text="25" />
                                </td>
                                <td>
                                    <asp:Button ID="Button26" runat="server" OnClick="Button26_Click" Text="26" />
                                </td>
                                <td>
                                    <asp:Button ID="Button27" runat="server" OnClick="Button27_Click" Text="27" />
                                </td>
                                <td>
                                    <asp:Button ID="Button28" runat="server" OnClick="Button28_Click" Text="28" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button29" runat="server" OnClick="Button29_Click" Text="29" />
                                </td>
                                <td>
                                    <asp:Button ID="Button30" runat="server" OnClick="Button30_Click" Text="30" />
                                </td>
                                <td>
                                    <asp:Button ID="Button31" runat="server" OnClick="Button31_Click" Text="31" />
                                </td>
                                <td>
                                    <asp:Button ID="Button32" runat="server" OnClick="Button32_Click" Text="32" />
                                </td>
                                <td>
                                    <asp:Button ID="Button33" runat="server" OnClick="Button33_Click" Text="33" />
                                </td>
                                <td>
                                    <asp:Button ID="Button34" runat="server" OnClick="Button34_Click" Text="34" />
                                </td>
                                <td>
                                    <asp:Button ID="Button35" runat="server" OnClick="Button35_Click" Text="35" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button36" runat="server" OnClick="Button36_Click" Text="36" />
                                </td>
                                <td>
                                    <asp:Button ID="Button37" runat="server" OnClick="Button37_Click" Text="37" />
                                </td>
                                <td>
                                    <asp:Button ID="Button38" runat="server" OnClick="Button38_Click" Text="38" />
                                </td>
                                <td>
                                    <asp:Button ID="Button39" runat="server" OnClick="Button39_Click" Text="39" />
                                </td>
                                <td>
                                    <asp:Button ID="Button40" runat="server" OnClick="Button40_Click" Text="40" />
                                </td>
                                <td>
                                    <asp:Button ID="Button41" runat="server" OnClick="Button41_Click" Text="41" />
                                </td>
                                <td>
                                    <asp:Button ID="Button42" runat="server" OnClick="Button42_Click" Text="42" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button43" runat="server" OnClick="Button43_Click" Text="43" />
                                </td>
                                <td>
                                    <asp:Button ID="Button44" runat="server" OnClick="Button44_Click" Text="44" />
                                </td>
                                <td>
                                    <asp:Button ID="Button45" runat="server" OnClick="Button45_Click" Text="45" />
                                </td>
                                <td>
                                    <asp:Button ID="Button46" runat="server" OnClick="Button46_Click" Text="46" />
                                </td>
                                <td>
                                    <asp:Button ID="Button47" runat="server" OnClick="Button47_Click" Text="47" />
                                </td>
                                <td>
                                    <asp:Button ID="Button48" runat="server" OnClick="Button48_Click" Text="48" />
                                </td>
                                <td>
                                    <asp:Button ID="Button49" runat="server" OnClick="Button49_Click" Text="49" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>


                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="btnBookNow" runat="server" Text="Book Now" OnClick="btnBookNow_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>






        </div>
    </form>
</body>
</html>
