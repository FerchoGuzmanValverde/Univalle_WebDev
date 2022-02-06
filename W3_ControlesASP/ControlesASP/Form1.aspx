<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="ControlesASP.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Nombre:<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    
    </div>
        Sexo:&nbsp;&nbsp;
        <asp:RadioButton ID="rbtHombre" runat="server" Text="Hombre" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbtMujer" runat="server" Text="Mujer" />
        <br />
        Color de ojos:<asp:DropDownList ID="lstOjos" runat="server">
            <asp:ListItem>Azul</asp:ListItem>
            <asp:ListItem>Verde</asp:ListItem>
            <asp:ListItem>Cafe</asp:ListItem>
        </asp:DropDownList>
        <br />
        Ckeck todo los correctos:<asp:CheckBox ID="cbxFeet" runat="server" Text="Arriba de 6 feet de alto" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="cbxLibras" runat="server" Text="Mas de 200 libras" />
        <br />
        Describe tu abilidad atletica:<asp:TextBox ID="idAtletica" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="164px" />
    </form>
</body>
</html>
