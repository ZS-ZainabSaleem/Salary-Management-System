<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="Database_project.MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style>
        .Menue-background
        {
            /* background:linear-gradient(toright,#001f3f,#001f3f 10%,#00a0d2 90%,#00a0d2);*/
            height: 100vh;
            /* font-size: 2em;*/
            /*  color:white;*/
            /* margin:100px auto;*/
            /* width:80%;*/
            background-image: linear-gradient(rgba(0,0,0,0.7),rgba(118, 13, 218, 0.37)),url(dbproject_pics/menuBack.jpg);
   
            /* background-position: centre;*/
            /* background-size: cover;*/
            border-radius: 10px;
            /* text-align:center;*/
            /* padding:100px 0;*/



        }

        .Menu
        {
            width: 90%;
            color: #131212;
            position: absolute;
            top: 20%;
            left: 25%;
            transform: translate(-20%,-25%);
            text-align: center;
    

        }

        .Menu h1
        {
            font-size: 62px;
        }
        .M-Button
        {
            display: inline-block;
            width:50%;
            margin: auto;
            margin-top: 30px;
            margin-bottom: 10px;
            text-align:center;
            padding-top:80px;
            text-decoration: none;
            color:#e7dbdb;
            border: 1px solid #ece3e3;
            padding:10px 1px;
            font-size:20px;
            background:#0e0d0d;
            position: relative;
            cursor: pointer;
            border-radius: 10px;

        }
        .M-Button:hover{
            border:1px solid rgb(9, 1, 15);
            background:rgb(187, 10, 24);
            transition: 0.5s;
        }
        .Allowances-background
        {
            height: 100vh;
            background-image: linear-gradient(rgba(0,0,0,0.7),rgba(118, 13, 218, 0.37)),url(dbproject_pics/menuBack.jpg);
            border-radius: 10px;
    

        }
        .a-details
        {
            width: 90%;
            color: #131212;
            position: absolute;
            top: 20%;
            left: 25%;
            transform: translate(-20%,-25%);
            text-align: center;

        }
        .a-details h1
        {
            font-size: 62px;
        }
        .a-details
        {
            width:420 px;
            height:70px;
            background:rgb(36, 2, 36);
            color: #fff;
        }
        .a-details .input-box{
 
            width:50%;
            height:50px;
            margin:30px 0;
            background: rgb(211, 206, 206);
            border-radius: 50px;
            padding: 5px;
            margin-top: 50px;
        }
        .input-box input{

            width:100%;
            height:50%;
            background:transparent;
            border:none;
            outline:none;
            border:0px solid rgba(255,255,255,.2);
            border-radius:40px;
                font-size: 16px;
        color: #070000;
        padding:20px 0px 8px 8px;

        }
        input-box input ::placeholder
        {
            color:#faf3f3;
        }
   </style>

</head>
<body>
    <form id="form1" runat="server">
    <section class="Menue-background"> 
    <div class ="Menu">
      
        <h1>Welcome Amin</h1>
        <a href ="#" class="M-Button">Add New Employee</a>
        <a href ="#"class="M-Button">Add New Department</a>
        <a href ="allowance.html" class="M-Button">Allowances Detail</a>
        <a href ="#" class="M-Button">Employee Grade Detail</a>
        <a href ="#" class="M-Button">Prepare Monthly Salary</a>
        <a href ="#" class="M-Button">Generate Report</a>
    </div>
</section>
    </form>
</body>
</html>
