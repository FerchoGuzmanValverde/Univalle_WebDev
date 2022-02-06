<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insertar.aspx.cs" Inherits="Agenda.Insertar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Direccion:"></asp:Label>
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Telefono Casa:"></asp:Label>
        <asp:TextBox ID="txtTelfCasa" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Telefono Celular:"></asp:Label>
            <asp:TextBox ID="txtTelfCelular" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Fecha Nacimiento:"></asp:Label>
        <asp:Calendar ID="CalendarFecha" runat="server"></asp:Calendar>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Apodo:"></asp:Label>
            <asp:TextBox ID="txtApodo" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label7" runat="server" Text="Sexo:"></asp:Label>
        <asp:RadioButton ID="rbtHombre" runat="server" GroupName="sexo" Text="Hombre" />
        <asp:RadioButton ID="rbtMujer" runat="server" GroupName="sexo" Text="Mujer" />
        <br />
        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
        <asp:Button ID="btnSalir" runat="server" Text="Salir" OnClick="btnSalir_Click" />
        <br />
        <asp:Label ID="lblMensaje" runat="server" Text="Sexo:"></asp:Label>
    </div>
    </form>
</body>
</html>
