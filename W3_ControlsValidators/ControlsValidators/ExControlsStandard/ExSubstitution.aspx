<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExSubstitution.aspx.cs" Inherits="AdRotator.ExSubstitution" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">

    <h3>Substitution Class Example</h3>  

    <p>This section of the page is not cached:</p>

    <asp:substitution id="Substitution1"
      methodname="GetCurrentDateTime"
      runat="Server">
    </asp:substitution>

    <br />

    <p>This section of the page is cached:</p>

    <asp:label id="CachedDateLabel"
      runat="Server">
    </asp:label>

    <br /><br />

    <asp:button id="RefreshButton"
      text="Refresh Page"
      runat="Server">
    </asp:button>     

  </form>

</body>
</html>
