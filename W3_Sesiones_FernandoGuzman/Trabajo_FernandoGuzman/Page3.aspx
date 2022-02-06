<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="Trabajo_FernandoGuzman.Page3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Surname:"></asp:Label>
        <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
    
    </div>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        <p>
            <asp:Label ID="lblError" runat="server" Text="---" Visible="false"></asp:Label>
        </p>
    </form>
</body>
</html>
