<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example.aspx.cs" Inherits="AdRotator.Example" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
        <asp:Label ID="lblMoneda" runat="server" Text="Bolivianos: "></asp:Label>
        <asp:TextBox ID="txtMoneda" runat="server"></asp:TextBox>
     
    </div>
    <asp:Label ID="lblCambio" runat="server" Text="Cambio de: "></asp:Label>
    <asp:DropDownList ID="ddlCambio" runat="server" 
        onselectedindexchanged="ddlCambio_SelectedIndexChanged" AutoPostBack="true">
        <asp:ListItem Value="1">Bolivianos a Dolares</asp:ListItem>
        <asp:ListItem Value="2">Dolares a bolivianos</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Button ID="btnCalcular" runat="server" onclick="btnCalcular_Click" 
        Text="Calcular" />
    <br />
    <asp:Label ID="lblTipoCambio" runat="server" Text="lblTipoCambio"></asp:Label>
    <br />
    <asp:Label ID="lblResultado" runat="server" Text="lblResultado"></asp:Label>
    </form>
</body>
</html>
