<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageMovies.aspx.cs" Inherits="Cinema_Management_System.ManageMovies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <link href="mastercss.css" rel="stylesheet" />
</head>
<body>
    <h1> Manage Movies</h1>
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
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Enter Movie Title</td>
                    <td>
                        <asp:TextBox ID="txtMovieTitle" runat="server"></asp:TextBox>
                        
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Category</td>
                    <td>
                        <asp:DropDownList ID="ddlCategory" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlCategory" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>photo</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" Height="92px" TextMode="MultiLine" Width="307px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Cast</td>
                    <td>
                        <asp:TextBox ID="txtCast" runat="server" Height="123px" TextMode="MultiLine" Width="331px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Releasing Date</td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                        <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-style: italic; color: #800000"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem>available</asp:ListItem>
                            <asp:ListItem>not available</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Rank</td>
                    <td>
                        <asp:DropDownList ID="ddlRank" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Refresh" CausesValidation="False" />
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                <asp:BoundField DataField="cast" HeaderText="cast" SortExpression="cast" />
                                <asp:BoundField DataField="releasingDate" HeaderText="releasingDate" SortExpression="releasingDate" />
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                                <asp:BoundField DataField="rank" HeaderText="rank" SortExpression="rank" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SeemabFDBConnectionString %>" SelectCommand="SELECT [Id], [title], [category], [description], [cast], [releasingDate], [status], [rank] FROM [movies]" UpdateCommand="update movies set [title]=@title, [category]=@category, [description]=@description, [cast]=@cast, [releasingDate]=@releasingDate, [status]=@status, [rank]=@rank where id=@id" DeleteCommand="delete from movies where id=@id ">

                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
