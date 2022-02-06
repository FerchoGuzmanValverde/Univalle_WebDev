<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PaginaEventos.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnQueryString" runat="server" Text="QueryString" PostBackUrl="~/WebForm1.aspx?q=prueba&amp;id=23" Width="123px" />
        <br />
        <asp:Button ID="btnCreateCookie" runat="server" OnClick="btnCreateCookie_Click" Text="Create Cookie" Width="123px" />
        <br />
        <asp:Button ID="btnLeerCookie" runat="server" OnClick="btnLeerCookie_Click" Text="Leer Cookie" Width="123px" />
    </div>
        <asp:HiddenField ID="hdnPrueba" runat="server" Value="El poder de Asp.net" />
        <asp:Button ID="btnHiddenField" runat="server" OnClick="btnCambiarValorHiddenField_Click" Text="HiddenField" Width="123px" />
        <br />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
