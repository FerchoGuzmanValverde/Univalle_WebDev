<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sesiones._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
            <asp:TextBox ID="txtu" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtc" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirmar" />
        </div>
    </form>
</body>
</html>
