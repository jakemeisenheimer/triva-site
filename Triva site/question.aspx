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
             $("td").click(function(){
                    
    });
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
            width:700px;
            height:500px;
            background-color:#aaaaaa;
            margin: auto;
            margin-top: 5%;
        }
        #RadioButtonList1
        {
            position:relative;
            width:100%;
            height:100%;
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
            position:relative;
            height: 50%;
            width:80%;
            margin: auto;
            border: solid 5px black;
            border-radius:3px;
            background-color:white;
            margin-top: 5%;
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
        

        #RadioButtonList1 td {
    display: block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* Hide the browser's default radio button */
#RadioButtonList1 td input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
    border-radius: 50%;
    
}

/* On mouse-over, add a grey background color */
#RadioButtonList1 td:hover input ~ .checkmark {
    background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
 td input:checked ~ label .checkmark {
    background-color: darkgreen;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    
}

/* Show the indicator (dot/circle) when checked */
#RadioButtonList1 td input:checked ~ .checkmark:after {
    display: block;
}

/* Style the indicator (dot/circle) */
#RadioButtonList1 td .checkmark:after {
 	top: 5px;
	left: 5px;
	width: 15px;
	height: 15px;
	border-radius: 100%;
	background: gray;
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
