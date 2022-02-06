<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Agenda.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:Label ID="Label2" runat="server" Text="OPCIONES DE CRUD"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="74px" OnClick="Button1_Click" Text="INSERTAR" Width="170px" />
        <asp:Button ID="Button2" runat="server" Height="74px" OnClick="Button2_Click" Text="BUSCAR" Width="170px" />
        <asp:Button ID="Button3" runat="server" Height="74px" OnClick="Button3_Click" Text="ACTUALIZAR" Width="170px" />
        <asp:Button ID="Button4" runat="server" Height="74px" OnClick="Button4_Click" Text="ELIMINAR" Width="170px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="OTRAS OPCIONES"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Height="74px" OnClick="Button5_Click" Text="RECORRER REGISTROS" Width="170px" />
        <asp:Button ID="Button6" runat="server" Height="74px" OnClick="Button6_Click" Text="SALIR" Width="170px" />
    </form>
</body>
</html>
