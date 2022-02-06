<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExCompareValidator.aspx.cs" Inherits="AdRotator.ExCompareValidator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Form1" runat="server">
<table border="0" bgcolor="#b0c4de">
   <tr style="vertical-align:top">
     <td colspan="4"><h4>Compare two values</h4></td>
   </tr> 
   <tr style="vertical-align:top">
     <td><asp:TextBox id="txt1" runat="server" /></td>
     <td> = </td>
     <td><asp:TextBox id="txt2" runat="server" /></td>
     <td><asp:Button ID="Button1" Text="Validate" runat="server" OnClick="Button1_Click" /></td>
   </tr>
</table>
<br/>
<asp:CompareValidator
id="compval" 
Display="dynamic"
ControlToValidate="txt1" 
ControlToCompare="txt2" 
ForeColor="red" 
BackColor="yellow" 
Type="String"
EnableClientScript="false" 
Text="Validation Failed!" 
runat="server"  Operator="Equal" />
</form>

</body>
</html>
