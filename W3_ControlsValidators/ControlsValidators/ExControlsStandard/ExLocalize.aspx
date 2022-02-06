<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExLocalize.aspx.cs" Inherits="AdRotator.ExLocalize" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
    <asp:RadioButton 
      ID="radioEncode" 
      runat="server"
      GroupName="LocalizeMode" 
      Checked="True" 
      Text="Encode" 
      AutoPostBack="True" />
    <br />
    <asp:RadioButton 
      ID="radioPassthrough" 
      runat="server" 
      GroupName="LocalizeMode" 
      Text="PassThrough" 
      AutoPostBack="True" />
    <br />
    <br />
    <asp:Localize ID="Localize1" runat="server"></asp:Localize>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
    </form>
</body>
</html>
