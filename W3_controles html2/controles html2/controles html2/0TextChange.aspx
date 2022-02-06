<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="0TextChange.aspx.cs" Inherits="controles_html2._0TextChange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input id="Text1" type="text" runat="server" onserverchange="Text1_ServerChange" /><br />
            <input id="Button1" type="button" value="button"  runat="server"/></div>
    </form>
</body>
</html>
