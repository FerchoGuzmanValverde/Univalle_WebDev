<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina3.aspx.cs" Inherits="Trabajo_FernandoGuzman.Pagina3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
    <div>
    
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
    
    </div>
        <asp:Button ID="btnStart" runat="server" OnClick="btnStart_Click" Text="Mandar Sesion" />
    </form>
</body>
</html>
