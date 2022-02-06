<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1boton.aspx.cs" Inherits="controles_html.boton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script runat="server">
            void Button1_OnClick(object Source, EventArgs e)
      {
         Span1.InnerHtml="You clicked Button1";
      }
        void Button2_OnClick(object Source, EventArgs e)
        {
            Span1.InnerHtml="You clicked Button2";
        }
   </script>
</head>
<body>
    <h3>HtmlButton Sample</h3>

    <form id="form1" runat="server">
        <p>
      <button id="Button1" 
              OnServerClick="Button1_OnClick" 
              style="font: 8pt verdana;
                    background-color:lightgreen;
                    border-color:black;
                    height=30;
                    width:100" 
              runat="server">
       Click me!
       </button>
       
       <p>
       <p>
       <button id="Button2" 
               OnServerClick="Button2_OnClick" 
               style="font: 8pt verdana;
                      background-color:lightgreen;
                      border-color:black;
                      height=30;
                      width:100"
               onmouseover="this.style.backgroundColor='yellow'"
               onmouseout="this.style.backgroundColor='lightgreen'"
               runat="server">
          Click me too!
       </button>
       
       <p>        
       <p>
       <span id="Span1" runat="server" />
    </form>
</body>
</html>
