<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="controlesHTML.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="JsOperaciones.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblNumber1" runat="server" Text="Numero1: "></asp:Label>
        <asp:TextBox ID="txtNumero1" runat="server"></asp:TextBox> 
        <section></section>
        <asp:Label ID="lblNumber2" runat="server" Text="Numero2:"></asp:Label>
        <asp:TextBox ID="txtNumero2" runat="server"></asp:TextBox>
        <section></section>
        <asp:Label ID="lblResultado" runat="server" Text="..."></asp:Label>
        <section></section>
        <asp:Button ID="btnsum" runat="server" Text="Sum" OnClick="btnsum_Click" />
        
        
        <!--  Numero1:<input id="txtNumber1" runat="server" type="text" /><br />
        Numero2:<input id="txtNumber2" runat="server" type="text" /><br />-->
      <!--  <input id="Button1" type="button" value="Sum" onclick="//Sum();" />--></div>
    </form>
</body>
</html>
