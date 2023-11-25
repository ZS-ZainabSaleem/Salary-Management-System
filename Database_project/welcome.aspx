<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="Database_project.welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Management System</title>
    <style>
        body {
            background: linear-gradient(to right, #008080, #008080 25%, #87CEFA 50%, #87CEFA 50%, #008080 90%, #008080);
        }
        h3{
             text-align:center;
             font-size:1.2cm;
             color:white;
             text-shadow: 2px 2px 6px #001f3f;
             border: 2px solid #008080; 

        }
        h1{
            text-align:center;
             color:white;
            text-shadow: 2px 2px 6px #001f3f;

        }
        .submitbutton{
            height: 4em;
            border:3px solid double black;
            width:6%;
            color:white;
            font-size:1em;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="ImageControl" runat="server" ImageUrl="~/Images/img.jpg" style="width: 1340px; height: 344px; margin-top: 0px" />
            <h3><b>Welcome To Salary Mangement System</b></h3>
            <h1><b>Administrator Login</b></h1>
        </div>
        <div style="text-align: center;">
            <asp:Button ID="Button1" runat="server" Text="Login" BackColor="darkcyan" CssClass="submitbutton" PostBackUrl="~/login.aspx" />
            
        </div>
    </form>
</body>
</html>
