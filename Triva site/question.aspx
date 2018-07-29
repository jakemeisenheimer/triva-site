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
              var answeres = $("#choices").val().split(",");
              answeres.forEach(function (element) {
                  var radioBtn = $('<input type="radio" name="rbtnCount" />' + element + "<br>");
              radioBtn.appendTo('#answer');
                });
              
              
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
        white-space:nowrap;
        text-wrap:none;
        }
     </style>
    <title></title>
</head>
<body>
     
    <form id="form1" runat="server">
       <div id="cate"></div>
        <div id="quest"></div>
        <div id="answer"></div>
    

        <asp:HiddenField ID="category" runat="server" />
        <asp:HiddenField ID="questions" runat="server" />
        <asp:HiddenField ID="choices" runat="server" />
       
   
       
   

    

    </form>
    </body>
</html>
