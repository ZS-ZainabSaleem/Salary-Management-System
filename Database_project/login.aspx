<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Database_project.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> login</title>
      <style>
        body {
            background: linear-gradient(to right, #008080, #008080 25%, #87CEFA 50%, #87CEFA 50%, #008080 90%, #008080);
        }
        .center-box {
            width: 300px; 
            height: 300px; 
            background-color: white; 
            border: 2px solid darkcyan; 
            margin: 0 auto; 
            margin-top: 150px; 
            text-align: center; 
            padding: 20px; 
            color:darkcyan;
            font-size:2em
        }
    </style>
    <script>
        function ClearForm() {

            document.getElementById('signin').value = '';
            document.getElementById('clear').value = '';

        }

    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="center-box" >
                <asp:Label ID="label1" runat="server" Text="Username" />
                <br />
                <input id="signin" runat="server" />
                <br /><br />
                <asp:Label ID="Label2" runat="server" Text="Password" />
                <br />
                <input id="clear" runat="server" />
                <br /><br />

                <asp:Button ID="SignInButton" runat="server" Text="SignIn"  BackColor="darkcyan"  style="height: 2em;
                                                                                            border:3px solid double black;
                                                                                            width:10%;
                                                                                            color:white;
                                                                                            font-size:0.5em"/>
               &nbsp &nbsp <asp:Button ID="ClearButton" runat="server" Text="Clear"  BackColor="darkcyan" OnClientClick="ClearForm();return false;" style="height: 2em;
                                                                                            border:3px solid double black;
                                                                                            width:10%;
                                                                                            color:white;
                                                                                            font-size:0.5em"/>

            </div> 
    </div>
    </form>
</body>
</html>
