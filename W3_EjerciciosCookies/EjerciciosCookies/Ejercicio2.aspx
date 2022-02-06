<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="EjerciciosCookies.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="INGRESAR AL SISTEMA"></asp:Label>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Usuario:"></asp:Label>
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            <asp:Label ID="lblUsuario" runat="server" Text="---"></asp:Label>
        </div>
        <asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
        <asp:TextBox ID="txtContrasenia" runat="server"></asp:TextBox>
        <asp:Label ID="lblContrasenia" runat="server" Text="---"></asp:Label>
        <br />
        <br />
        <asp:CheckBox ID="cbxRecordar" runat="server" Text="Recordarme en este equipo" />
        <p>
            <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" Text="INGRESAR" />
            <asp:Button ID="btnCambiar" runat="server" OnClick="btnCambiar_Click" Text="Otro Usuario" />
        </p>
    </form>
</body>
</html>
