<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExRangeValidator.aspx.cs" Inherits="AdRotator.ExRangeValidator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="Form1" runat="server"> Ingresar una fecha entre 2014-01-01 y 2014-12-31:
<br/>
<asp:TextBox id="tbox1" runat="server" />
<br><br/>
<asp:Button ID="Button1" Text="Submit" runat="server" />
<br><br/>
<asp:RangeValidator ID="RangeValidator1"
ControlToValidate="tbox1"
MinimumValue="2014-01-01"
MaximumValue="2014-12-31"
Type="Date"
EnableClientScript="true"
Text="La fecha debe estar entre 2014-01-01 y 2014-12-31!"
runat="server" />
</form>

</body>
</html>
