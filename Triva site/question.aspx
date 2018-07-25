<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="question.aspx.cs" Inherits="WebApplication5.question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script>
          $(document).ready(function () {
                $("#cate").animate({ fontSize: '7em' });
                $("#cate").animate({ fontSize: '2em' });
                $("#cate").animate({ fontSize: '7em' });
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
            opacity:0;
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
