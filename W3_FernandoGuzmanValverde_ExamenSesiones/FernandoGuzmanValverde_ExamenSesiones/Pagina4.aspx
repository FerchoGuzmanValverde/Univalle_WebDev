<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina4.aspx.cs" Inherits="FernandoGuzmanValverde_ExamenSesiones.Pagina4" %>

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
            <asp:Label ID="Label2" runat="server" Text="Elija Caracteristicas Extra de la Vivienda"></asp:Label>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Extras:"></asp:Label>
        <asp:CheckBox ID="cbxPiscina" runat="server" Text="Piscina" />
        <asp:CheckBox ID="cbxJardin" runat="server" Text="Jardin" />
        <asp:CheckBox ID="cbxGarage" runat="server" Text="Garage" />
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="&lt;Anterior" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Finalizar" />
        </p>
    </form>
</body>
</html>
