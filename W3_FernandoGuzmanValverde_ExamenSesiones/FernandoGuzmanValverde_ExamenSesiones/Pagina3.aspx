<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina3.aspx.cs" Inherits="FernandoGuzmanValverde_ExamenSesiones.Pagina3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Busqueda Vivenda"></asp:Label>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Elija Caracteristicas Basicas de Vivienda"></asp:Label>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Dormitorios:"></asp:Label>
        <asp:RadioButton ID="rbt1" runat="server" GroupName="dormitorios" Text="1" />
        <asp:RadioButton ID="rbt2" runat="server" GroupName="dormitorios" Text="2" />
        <asp:RadioButton ID="rbt3" runat="server" GroupName="dormitorios" Text="3" />
        <asp:RadioButton ID="rbt4" runat="server" GroupName="dormitorios" Text="4" />
        <asp:RadioButton ID="rbt5" runat="server" GroupName="dormitorios" Text="5" />
        <p>
            <asp:Label ID="Label4" runat="server" Text="Precio:"></asp:Label>
            <asp:RadioButton ID="rbtPrimero" runat="server" GroupName="precio" Text="&lt;100.000" />
            <asp:RadioButton ID="rbtSegundo" runat="server" GroupName="precio" Text="100.000-200.000" />
            <asp:RadioButton ID="rbtTercero" runat="server" GroupName="precio" Text="200.000-300.000" />
            <asp:RadioButton ID="rbtCuarto" runat="server" GroupName="precio" Text="&gt;300.000" />
        </p>
        <asp:Button ID="btnAnterior" runat="server" OnClick="btnAnterior_Click" Text="&lt;Anterior" />
        <asp:Button ID="btnSiguiente" runat="server" OnClick="btnSiguiente_Click" Text="Siguiente&gt;" />
    </form>
</body>
</html>
