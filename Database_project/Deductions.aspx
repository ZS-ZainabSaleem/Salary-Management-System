<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deductions.aspx.cs" Inherits="Database_project.Deductions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Deductions</title>
    <style>
       
        body {
            background: linear-gradient(to right, #008080, #008080 25%, #87CEFA 50%, #87CEFA 50%, #008080 90%, #008080);
            height: 100vh;
            font-size: 2em;
            color: white;
        }
        
    </style>
    <script>
        
        function ClearForm() {
           
            document.getElementById('DeductionType').value = '';
            document.getElementById('DeductionAmount').value = '';
            
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3><b>Deductions</b></h3>
            <asp:Table runat="server" CellPadding="5" CssClass="mytable">
                <asp:TableRow>
                    <asp:TableCell CssClass="table-cell">Deduction Type</asp:TableCell>
                    <asp:TableCell>
                        <input id="DeductionType" type="text" placeholder="Enter deduction type" style="border-color: midnightblue;
                            border: 3px solid midnightblue;
                            height: 2em" />
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell CssClass="table-cell">Deduction Amount</asp:TableCell>
                    <asp:TableCell>
                        <input id="DeductionAmount" type="number" placeholder="Enter deduction amount" style="border-color: midnightblue;
                            border: 3px solid midnightblue;
                            height: 2em" />
                    </asp:TableCell>
                </asp:TableRow>
                
                
                <asp:TableRow>
                    <asp:TableCell class="centre" colspan="2">
                        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" BackColor="midnightblue" CssClass="submitbutton" />
                        &nbsp;
                        <asp:Button ID="ButtonClear" runat="server" Text="Clear" BackColor="midnightblue" CssClass="submitbutton" OnClientClick="ClearForm();return false;" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
