<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidacionesPractica.aspx.cs" Inherits="controlesValidacion.ValidacionesPractica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Required" ValidationGroup="summary">Name is Required</asp:RequiredFieldValidator>
        <br />
    
    </div>
        <asp:Label ID="Label2" runat="server" Text="Address:"></asp:Label>
        <asp:TextBox ID="txtAddres" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddres" ErrorMessage="Address is Required" ValidationGroup="summary">Address id Required</asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Age:"></asp:Label>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAge" ErrorMessage="Ages is Required" ValidationGroup="summary">Age is Required</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be 18+" MinimumValue="18">Age 18+</asp:RangeValidator>
        </p>
        <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is Required" ValidationGroup="summary">Email id Required</asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Write an email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Need Email Format</asp:RegularExpressionValidator>
&nbsp;<p>
            <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password id Required" ValidationGroup="summary">Password Required</asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label6" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Confirm is Required" ValidationGroup="summary">Confirmation Required</asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" ErrorMessage="Password do not match">Passwords do not match</asp:CompareValidator>
        </p>
        <asp:Label ID="Label7" runat="server" Text="Date of enrollment:"></asp:Label>
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="fechaValidator" runat="server" ControlToValidate="txtDate" ErrorMessage="Date cannot be after today´s date" OnServerValidate="fechaValidator_ServerValidate" ValidationGroup="summary">Date before today date</asp:CustomValidator>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="phone:"></asp:Label>
        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Phone is Required" ValidationGroup="summary">Phone Required</asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Put a phone format" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">Need Phone Format</asp:RegularExpressionValidator>
&nbsp;<p>
            <asp:Label ID="Label10" runat="server" Text="Value:"></asp:Label>
            <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Value is Required" ValidationGroup="summary">Value Required</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtValor" ErrorMessage="Value must be between 230 and 890" MaximumValue="230" MinimumValue="890" ValidationGroup="summary">Value between 230 and 890</asp:RangeValidator>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Aceptar" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="summary" />
    </form>
</body>
</html>
