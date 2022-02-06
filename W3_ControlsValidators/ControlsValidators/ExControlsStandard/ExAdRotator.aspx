<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExAdRotator.aspx.cs" Inherits="AdRotator.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Button1" type="button"  value="button" />
    
        <asp:AdRotator ID="adRotatorPrueba" runat="server" 
            onadcreated="adRotatorPrueba_AdCreated" AdvertisementFile="~/ad1.xml" Target="_blank" />
    <p><a href="ad1.xml" target="_blank">Ver XML</a></p>
    </div>
    </form>
</body>
</html>
