<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="Trabajo_FernandoGuzman.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    <div>
    
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    
    </div>
        <asp:Label ID="lblMessage" runat="server" Text="---" Visible="false"></asp:Label>
    </form>
</body>
</html>
