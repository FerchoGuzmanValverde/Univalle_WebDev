<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="Agenda.Eliminar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label8" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="txtNombreBuscar" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
        <br />
        <p>
            <asp:Label ID="Label3" runat="server" Text="Direccion:"></asp:Label>
            <asp:Label ID="lblDireccion" runat="server" Text="---"></asp:Label>
        </p>
        <asp:Label ID="Label4" runat="server" Text="Telefono Casa:"></asp:Label>
        <asp:Label ID="lblTelefonoCasa" runat="server" Text="---"></asp:Label>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Telefono Celular:"></asp:Label>
            <asp:Label ID="lblCelular" runat="server" Text="---"></asp:Label>
        </p>
        <asp:Label ID="Label6" runat="server" Text="Fecha Nacimiento:"></asp:Label>
        <asp:Label ID="lblFechaNacimiento" runat="server" Text="---"></asp:Label>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Apodo:"></asp:Label>
            <asp:Label ID="lblApodo" runat="server" Text="---"></asp:Label>
        </p>
        <asp:Label ID="Label1" runat="server" Text="Sexo:"></asp:Label>
        <asp:Label ID="lblSexo" runat="server" Text="---"></asp:Label>
        <br />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
        <asp:Button ID="btnSalir" runat="server" Text="Salir" OnClick="btnSalir_Click" />
    </div>
    </form>
</body>
</html>
