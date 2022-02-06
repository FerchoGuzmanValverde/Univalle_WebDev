<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina2.aspx.cs" Inherits="FernandoGuzmanValverde_ExamenSesiones.Pagina2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Busqueda Vivienda"></asp:Label>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Zona Vivienda"></asp:Label>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Zona:"></asp:Label>
        <asp:DropDownList ID="cbxZona" runat="server">
            <asp:ListItem>Tiquipaya</asp:ListItem>
            <asp:ListItem>Zarco</asp:ListItem>
            <asp:ListItem>Sacaba</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Button ID="btnAnterior" runat="server" OnClick="btnAnterior_Click" Text="&lt;Anterior" />
            <asp:Button ID="btnSiguiente" runat="server" OnClick="btnSiguiente_Click" Text="Siguiente&gt;" />
        </p>
    </form>
</body>
</html>
