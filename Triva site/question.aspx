<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="question.aspx.cs" Inherits="WebApplication5.question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script>
        $(document).ready(function () {
            
                $("#Label1").animate({ left: '50vw', bottom: '50vh', fontSize: '7em' });
                $("#Label1").animate({ fontSize: '2em' });
                $("#Label1").animate({ fontSize: '7em' });
          });

    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
   

    

    <div style="height:100px;width:100px;position:absolute;">aaaaaa</div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
       
   

    

    </form>
    </body>
</html>
