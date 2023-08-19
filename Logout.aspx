<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Cinema_Management_System.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logout</title>
    
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="assets/style.css">
     <link href="mastercss.css" rel="stylesheet" />
</head>
<body>
     <h1> LogOut</h1>
    <ul>
      
  
     <li><a href="Login.aspx">Login</a></li>
    
</ul>
    <form id="form1" runat="server">
        <div>
            <h2>Session Expired</h2>
            Your session has been expired. 
        </div>
    </form>
</body>
</html>
