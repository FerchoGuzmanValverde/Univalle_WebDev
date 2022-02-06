<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="EjerciciosCookies.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body id="bodyE1" runat="server">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Ingrese Color:"></asp:Label>
    
    </div>
        <asp:RadioButton ID="rbtRojo" runat="server" GroupName="color" Text="Rojo" />
        <p>
            <asp:RadioButton ID="rbtAzul" runat="server" GroupName="color" Text="Azul" />
        </p>
        <asp:RadioButton ID="rbtVerde" runat="server" GroupName="color" Text="Verde" />
        <p>
            <asp:Button ID="btnPersonalizar" runat="server" OnClick="btnPersonalizar_Click" Text="Personalizar" />
        </p>
    </form>
</body>
</html>
