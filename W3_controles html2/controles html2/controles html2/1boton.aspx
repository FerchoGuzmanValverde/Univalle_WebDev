<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1boton.aspx.cs" Inherits="controles_html2._1boton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            Enter your name here: 
   <input type="text" id="myText" runat="server" required="required"/>
   <br/><br/>
   <input type="submit" id="Button1" value="Click Here!" runat="server" onserverclick="Button1_ServerClick" />
   

   <br/><br/>
   <b><span id="MySpan" runat="server"/></b>

    </form>
</body>
</html>
