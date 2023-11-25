<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payroll.aspx.cs" Inherits="Database_project.Payroll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Management System</title>
    <style>
        body {
            background: linear-gradient(to right, #008080, #008080 25%, #87CEFA 50%, #87CEFA 50%, #008080 90%, #008080);
             height: 100vh;
             font-size:1.8em;
             color:white;
             padding:0;
             margin:0;
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
       .payroll{
             text-align:center;
             color:white;
             font-size:1.5cm;
             text-shadow: 2px 2px 8px #001f3f;
             border: 2px solid #008080; /* Border color (dark cyan) */
       }
       .mytable{
           margin: 0 auto;
           padding-top: 50px;
           padding-right: 20px;
           padding-bottom: 30px;
           padding-left: 100px;
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
            document.getElementById('deptName').value = '';
            document.getElementById('salary').value = '';
            document.getElementById('year').value = '';
            document.getElementById('netSalry').value = '';
            document.getElementById('dedction').value = '';
            document.getElementById('Allowances').value = '';
            document.getElementById('total').value = '';
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="menu-bar">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="http://localhost:58092/salary">Sign Out</a></li>
            </ul>
        </div>
        <div class="payroll">
            <label><b>Payroll Detail</b></label>
        </div>
            <asp:Table runat="server"   CellPadding="5" CssClass="mytable" > 
                <asp:TableRow>
                    <asp:TableCell CssClass="table-cell">
                        Employee Name:                        
                    </asp:TableCell>
                    <asp:TableCell>
                        <input id="Empname" type="text" placeholder="Enter name" style="border-color:midnightblue;border: 3px solid midnightblue;height:2em"/>
                    </asp:TableCell>
                    <asp:TableCell CssClass="table-cell">
                    </asp:TableCell>
                    <asp:TableCell CssClass="table-cell">
                        Department Name:                       
                    </asp:TableCell>
                    <asp:TableCell>
                        <input id="deptName" type="text" placeholder="Enter  Department name" style="border-color:midnightblue;border: 3px solid midnightblue;height:2em"/>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                        <asp:TableCell CssClass="table-cell">
                             Salary Month:                        
                        </asp:TableCell>
                        <asp:TableCell>
                            <input id="salary" type="text" placeholder=" Enter month" style="border-color:midnightblue;border: 3px solid midnightblue;height:2em"/>
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">
                            Salary Year:                       
                        </asp:TableCell>
                        <asp:TableCell>
                            <input id="year" type="text" placeholder="Enter year" style="border-color:midnightblue;border: 3px solid midnightblue;height:2em"/>
                        </asp:TableCell>
                 </asp:TableRow>

                 <asp:TableRow>
                        <asp:TableCell CssClass="table-cell">
                            Net Salary:                        
                        </asp:TableCell>
                        <asp:TableCell>
                            <input id="netSalry" type="text"  style="border-color:midnightblue;border: 3px solid midnightblue;height:2em"/>
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">
                            Total Deduction:                       
                        </asp:TableCell>
                        <asp:TableCell>
                            <input id="dedction" type="text"  style="border-color:midnightblue;border: 3px solid midnightblue;height:2em"/>
                        </asp:TableCell>
                 </asp:TableRow>
                 
                <asp:TableRow>
                        <asp:TableCell CssClass="table-cell">
                           Total Allowances:                        
                        </asp:TableCell>
                        <asp:TableCell>
                            <input id="Allowances" type="text"  style="border-color:midnightblue;border: 3px solid midnightblue;height:2em"/>
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">
                        </asp:TableCell>
                        <asp:TableCell CssClass="table-cell">
                            Total Salary:                       
                        </asp:TableCell>
                        <asp:TableCell>
                            <input id="=total" type="text"  style="border-color:midnightblue;border: 3px solid midnightblue;height:2em"/>
                        </asp:TableCell>
                 </asp:TableRow>

                 <asp:TableRow>
                        <asp:TableCell class="centre" colspan="6">
                             <asp:Button ID="Button1" runat="server" text="Submit" BackColor="midnightblue" CssClass="submitbutton" />
                            &nbsp<asp:Button ID="Button2" runat="server" text="Clear" BackColor="black" CssClass="submitbutton" OnClientClick="ClearForm();return false;"/>
                             
                        </asp:TableCell>
                    </asp:TableRow>
              </asp:Table>
    </form>
</body>
</html>
