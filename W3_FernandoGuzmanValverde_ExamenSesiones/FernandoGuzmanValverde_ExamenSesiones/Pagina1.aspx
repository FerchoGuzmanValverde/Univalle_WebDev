<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina1.aspx.cs" Inherits="FernandoGuzmanValverde_ExamenSesiones.Pagina1" %>

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
            <asp:Label ID="Label2" runat="server" Text="Tipo Vivienda:"></asp:Label>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Tipo:"></asp:Label>
        <asp:DropDownList ID="cbxTipo" runat="server">
            <asp:ListItem Value="Piso">Piso</asp:ListItem>
            <asp:ListItem Value="Departamento">Departamento</asp:ListItem>
            <asp:ListItem Value="Casa">Casa</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Siguiente" />
        </p>
    </form>
</body>
</html>
