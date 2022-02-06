<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Discos.aspx.cs" Inherits="PracticaCrud.Discos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="INGRESAR VIDEOS"></asp:Label>
    
    </div>
        <asp:Label ID="Label2" runat="server" Text="Nombre video:"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Seleccionar formato:"></asp:Label>
            <asp:DropDownList ID="ddlFormatos" runat="server">
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Agregar" runat="server" OnClick="Agregar_Click" Text="Agregar Video" />
        </p>
        <asp:Label ID="Label4" runat="server" Text="Codigo de Video:"></asp:Label>
        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Buscar" runat="server" OnClick="Buscar_Click" Text="Buscar" />
        </p>
        <asp:Label ID="lblResultado" runat="server" Text="-------"></asp:Label>
    </form>
</body>
</html>
