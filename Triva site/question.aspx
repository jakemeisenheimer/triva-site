<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="question.aspx.cs" Inherits="WebApplication5.question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" href="wickedpicker.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script type="text/javascript" src="wickedpicker.js"></script>
      <script>
          $(document).ready(function () {
              $("#quest").text($("#questions").val());
              $("#cate").text($("#category").val());  
             
          });
    </script>
    <style>
        #cate 
        {
        font-size: 34px;
        margin: auto;
        width:100%;
        text-align:center;
        padding: 10px;
        white-space:nowrap;
        text-wrap:none;
        }
        #quest 
        {
        font-size: 20px;
        margin: auto;    
        width:100%;
        text-align:center;
        padding: 10px;
        text-wrap:none;
        }
        #page
        {
            border: solid 10px black;
            border-radius:5px;
            position:relative;
            width:50vw;
            height:50vh;
            background-color:#aaaaaa;
            margin-left:25vw;
            margin-top:15vh;
        }
        #RadioButtonList1
        {
            position:relative;
            width:100%;
            height:50%;
            padding-top:10%;
        }
        #Button1
        {
            visibility:hidden;
            position:absolute;
            bottom: 5%;
            right:5%;
        }
         #Button2
        {
            
            position:absolute;
            bottom: 5%;
            right:35%;
            width:30%;
            height:10%;
        }
        #aws
        {
            position:inherit;
            height:50%;
            width:50%;
            margin-top: 5%;
            margin-left:25%;
            border: solid 5px black;
            border-radius:3px;
            background-color:white;
        }
        #correct
        {
        font-size:100px;
        text-align:center;
        width: 100%;
        z-index:1;
        position:absolute;
        white-space:nowrap;
        text-wrap:none;
        
        }
        
        
@keyframes spin { 100% { -webkit-transform: rotate(360deg); transform:rotate(360deg); } }
     </style>
    <title></title>
</head>
<body>
     
    <form id="form1" runat="server">
        <asp:Panel ID="questionBox" runat="server">
       <div id="correct"> 
           
          
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
        <div id="page">
        <div id="cate"></div>
        <div id="quest"></div>
        <div id="answer"></div>
       

        <asp:HiddenField ID="category" runat="server" />
        <asp:HiddenField ID="questions" runat="server" />
        <asp:HiddenField ID="choices" runat="server" />
       

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" Enabled="False" />
    
    <div id="aws">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        </asp:RadioButtonList>
         </asp:Panel>
     
   

    

    </form>
    </body>
</html>
