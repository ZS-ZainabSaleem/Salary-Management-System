<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewEmployee.aspx.cs" Inherits="Database_project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Add New Employee</title>
    <style>
        body {
            background: linear-gradient(to right, #008080, #008080 25%, #87CEFA 50%, #87CEFA 50%, #008080 90%, #008080);
            height: 100vh;
             font-size:2em;
             color:white;
             text-shadow: 2px 2px 8px #001f3f;

        }
        h3{
             text-align:center;
             color:white;
             font-size:1.5cm;
             text-shadow: 2px 2px 8px #001f3f;
             border: 2px solid #008080; /* Border color (dark cyan) */

        }
        .menu-bar {
            background-color:darkslategrey;
            text-align: right;
            padding: 10px 20px;
        }

       .menu-bar ul {
            list-style: none;
            margin: 0;
            padding: 0;
       }

       .menu-bar ul li {
            display: inline-block;
            color: darkblue;
            margin-right: 20px;
       }
       .menu-bar ul li a {
            color: white;
            font-size:0.8em;
            text-decoration: none;
       }
       .menu-bar ul li a:hover {
            color: lightblue;
       }

        .mytable{
            margin: 0 auto;
        }
        .table-cell {
            width: 20%;
            text-align: center;
        }
        .submitbutton{
            height: 4em;
            border:3px solid double black;
            width:6%;
            color:white;
            font-size:medium
        }
        .centre{
            text-align:center
        }
    </style>
    <script>
        function ClearForm() {

            document.getElementById('Empname').value = '';
            document.getElementById('DOB').value = '';
            document.getElementById('Address').value = '';
            document.getElementById('City').value = '';
            document.getElementById('PhNo').value = '';
            document.getElementById('cnic').value = '';
            document.getElementById('desig').value = '';
            document.getElementById('email').value = '';
            document.getElementById('AccNo').value = '';
            document.getElementById('sal').value = '';

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="menu-bar">
            <ul>
                <li><a href="#">Menu</a></li>
                <li><a href="http://localhost:58092/salary">Sign Out</a></li>
            </ul>
        </div>

        <div>
            <h3><b>Employee Details</b></h3>
                <asp:Table runat="server"   CellPadding="5" CssClass="mytable" >
                           
                    <asp:TableRow>
                         <asp:TableCell CssClass="table-cell">
                            Employee Name                        
                        </asp:TableCell>
                        <asp:TableCell>
                            <input id="Empname" type="text" placeholder="Enter name" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em"/>
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">

                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">
                            Date of Birth                        
                        </asp:TableCell>
                        <asp:TableCell>
                            <input id="DOB" type="text" placeholder=" MM/DD/YYYY" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em" />
                        </asp:TableCell>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                         <asp:TableCell CssClass="table-cell">Address</asp:TableCell>
                        <asp:TableCell>
                            <input id="Address" type="text" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em" />
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">

                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">
                            City                       
                        </asp:TableCell>
                        <asp:TableCell>
                            <input id="City" type="text" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em" />
                        </asp:TableCell>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                         <asp:TableCell CssClass="table-cell">Phone No</asp:TableCell>
                        <asp:TableCell>
                            <input id="PhNo" type="text" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em" />
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">

                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">CNIC</asp:TableCell>
                        <asp:TableCell>
                            <input id="cnic" type="number" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em" />
                        </asp:TableCell>
                        
                    </asp:TableRow>

                    <asp:TableRow>
                         <asp:TableCell CssClass="table-cell">Designation</asp:TableCell>
                        <asp:TableCell>
                            <input id="desig" type="text" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em" />
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">

                        </asp:TableCell>

                         <asp:TableCell CssClass="table-cell">Email</asp:TableCell>
                        <asp:TableCell>
                            <input id="email" type="email" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em" />
                        </asp:TableCell>
                        
                    </asp:TableRow>

                    <asp:TableRow>

                        <asp:TableCell CssClass="table-cell">Bank Account No</asp:TableCell>
                        <asp:TableCell>
                            <input id="AccNo" type="number" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em" />
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">

                        </asp:TableCell>
                         <asp:TableCell CssClass="table-cell">Salary</asp:TableCell>
                        <asp:TableCell>
                            <input id="sal" type="number" style="border-color:midnightblue;
                                      border: 3px solid midnightblue;
                                      height:2em" />
                        </asp:TableCell>
                       
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell class="centre" colspan="6">
                             
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell class="centre" colspan="6">
                             
                        </asp:TableCell>
                    </asp:TableRow>


                    <asp:TableRow>
                        <asp:TableCell class="centre" colspan="6">
                             <asp:Button ID="Button1" runat="server" text="Submit" BackColor="darkcyan" CssClass="submitbutton" PostBackUrl="~/welcome.aspx"/>
                            &nbsp&nbsp<asp:Button ID="Button2" runat="server" text="Clear" BackColor="darkcyan" CssClass="submitbutton" OnClientClick="ClearForm();return false;"/>
                             
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>
        </div>
    </form>
</body>
</html>
