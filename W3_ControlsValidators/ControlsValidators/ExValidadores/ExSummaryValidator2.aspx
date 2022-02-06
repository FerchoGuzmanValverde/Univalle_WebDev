<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExSummaryValidator2.aspx.cs" Inherits="AdRotator.ExSummaryValidator2"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="Form1" runat="server">
<table>
<tr>
<td>
<table bgcolor="#b0c4de" cellspacing="10">
   <tr>
     <td align="right">Name:</td>
     <td><asp:TextBox id="txt_name" runat="server"/></td>
     <td>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
     ControlToValidate="txt_name" 
     ErrorMessage="Name"
     Text="*" 
     runat="server"/>
     </td>
   </tr>
   <tr>
     <td align="right">Card Type:</td>
     <td>
     <asp:RadioButtonList id="rlist_type" 
     RepeatLayout="Flow"
     runat="server">
     <asp:ListItem>Diners</asp:ListItem>
     <asp:ListItem>MasterCard</asp:ListItem>
     <asp:ListItem>Visa</asp:ListItem>
     </asp:RadioButtonList>
     </td>
     <td>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
     ControlToValidate="rlist_type"
     ErrorMessage="Card Type"
     InitialValue=""
     Text="*"
     runat="server"/>
     </td>
   </tr>
   <tr>
     <td></td>
     <td><asp:Button id="b1" Text="Submit" runat="server"/></td>
     <td></td>
   </tr>
</table>
</td>
</tr>
</table>
<asp:ValidationSummary ID="ValidationSummary1"
ShowMessageBox="true"
ShowSummary="false"
HeaderText="You must enter a value in the following fields:"
EnableClientScript="true"
runat="server"/>
</form>

</body>
</html>
