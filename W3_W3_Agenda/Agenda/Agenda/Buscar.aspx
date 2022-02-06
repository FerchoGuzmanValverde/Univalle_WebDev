<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buscar.aspx.cs" Inherits="Agenda.Buscar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Buscar Registro"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" Width="199px" />
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
        <asp:Label ID="Label8" runat="server" Text="Sexo:"></asp:Label>
        <asp:Label ID="lblSexo" runat="server" Text="---"></asp:Label>
        <br />
    </div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Salir" Width="119px" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancelar" Width="115px" />
    </form>
</body>
</html>
