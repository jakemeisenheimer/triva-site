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
        margin: auto;
        width:100%;
        text-align:center;
        padding: 10px;
        white-space:nowrap;
        text-wrap:none;
        }
        #quest 
        {
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
            position:absolute;
            bottom: 5%;
            right:5%;
        }
        #aws
        {
            position:relative;
            height:50%;
            width:50%;
            margin-left:25%;
            border: solid 5px black;
            border-radius:3px;
            background-color:white;
        }
     </style>
    <title></title>
</head>
<body>
     
    <form id="form1" runat="server">
        <div id="page">
       <div id="cate"></div>
        <div id="quest"></div>
        <div id="answer"></div>
       

        <asp:HiddenField ID="category" runat="server" />
        <asp:HiddenField ID="questions" runat="server" />
        <asp:HiddenField ID="choices" runat="server" />
       
   
       
   

    
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
       
   
       
   

    
    <div id="aws">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        </asp:RadioButtonList>

    </div>
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
       
    </div>
       
   

    

    </form>
    </body>
</html>
