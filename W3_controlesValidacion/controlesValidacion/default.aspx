<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="controlesValidacion._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Debe ingresar el nombre</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Edad"></asp:Label>
            <asp:TextBox ID="txtedad" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtedad" ErrorMessage="RangeValidator" MaximumValue="21" MinimumValue="18">La edad debe estar entre 18 y 21</asp:RangeValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtedad" ErrorMessage="RangeValidator" MaximumValue="21" MinimumValue="18" Type="Integer">debe ser entero</asp:RangeValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtcont1" runat="server"></asp:TextBox>
            <br />
            Vuelva a ingresar la Contraseña<asp:TextBox ID="txtcont2" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtcont1" ControlToValidate="txtcont2" ErrorMessage="CompareValidator">Las contraseñas deben ser iguales</asp:CompareValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Ingrese multiplo de 5"></asp:Label>
            <asp:TextBox ID="txtmult" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtmult" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate">Debe ser multiplo de 5</asp:CustomValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Correo"></asp:Label>
            <asp:TextBox ID="txtcorreo" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcorreo" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Correo incorrecto</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcorreo" ErrorMessage="debe ing correo">debe ing orreo</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Usuario"></asp:Label>
            <asp:TextBox ID="txtu" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtu" ErrorMessage="Debe ingresar usuario">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtc" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtc" ErrorMessage="Debe ingresar la contraseña">*</asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="86px" />
        </div>
    </form>
</body>
</html>
