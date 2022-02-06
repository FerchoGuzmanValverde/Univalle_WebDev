<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina2.aspx.cs" Inherits="Trabajo_FernandoGuzman.Pagina2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblUser" runat="server" Text="---"></asp:Label>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/pagina1.aspx">Ir a la siguiente pagina</asp:HyperLink> 
    
    </div>
    </form>
</body>
</html>
