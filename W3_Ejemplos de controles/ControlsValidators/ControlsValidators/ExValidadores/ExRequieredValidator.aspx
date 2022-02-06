<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExRequieredValidator.aspx.cs" Inherits="AdRotator.ExRequieredValidator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="Form1" runat="server">
        Name: <asp:TextBox id="txtName" runat="server" />
        <br/>
         <asp:RequiredFieldValidator ID="RequiredFieldValidatorTxtName"
        ControlToValidate="txtName"
        Text="The name field is required!"
        runat="server" />
       <br/>
        Age: <asp:TextBox id="txtAge" runat="server" />
        <br/>
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <br/>
     
    </form>

</body>
</html>
