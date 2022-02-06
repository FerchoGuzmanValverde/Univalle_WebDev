<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExRegularExpValidator.aspx.cs" Inherits="AdRotator.ExRegularExpValidator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Form1" runat="server">
    Enter a US zip code:
    <asp:TextBox id="txtbox1" runat="server" />
    <br/>
    <asp:Button ID="Button1" text="Submit" OnClick="submit" runat="server" />
    <br/>
    <asp:Label id="lbl" runat="server" />
    <br/>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
    ControlToValidate="txtbox1"
    ValidationExpression="\d{5}"
    EnableClientScript="false"
    ErrorMessage="The zip code must be 5 numeric digits!"
    runat="server" />
    </form>

</body>
</html>
