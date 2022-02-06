<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejemplos.aspx.cs" Inherits="ExValidadores.Ejemplos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo Electronico: "></asp:Label>
        <asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorCorreo" runat="server" 
            ErrorMessage="Incorrecto Email, por favor corrija." 
            ValidationExpression="^[a-z,A-Z]{1,10}((-|.)\w+)*@\w+.\w{3}$" 
            ControlToValidate="txtCorreoElectronico" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblNumero" runat="server" Text="Numero entero"></asp:Label>
        <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
        <br />
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="txtNumero" ErrorMessage="Ingrese solo numeros de 3 y 5" 
            ForeColor="#CC0000" onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <br />
        <asp:Button ID="btnValidar" runat="server" Text="Button" 
            onclick="btnValidar_Click" />
    </div>
    </form>
</body>
</html>
