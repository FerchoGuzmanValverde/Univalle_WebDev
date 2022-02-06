<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ejmBD._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/agregar.aspx">Ingresar</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/consultar.aspx">Consultar</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/eliminar.aspx">Eliminar</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/modificar.aspx">Modificar</asp:HyperLink>
    
    </div>
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
    </form>
</body>
</html>
