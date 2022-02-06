<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExDataList.aspx.cs" Inherits="AdRotator.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="Form1" runat="server">
        <asp:DataList id="cdcatalog"
        runat="server"
        cellpadding="2"
        cellspacing="2"
        borderstyle="inset"
        backcolor="#e8e8e8"
        width="100%"
        headerstyle-font-name="Verdana"
        headerstyle-font-size="12pt"
        headerstyle-horizontalalign="center"
        headerstyle-font-bold="True"
        itemstyle-backcolor="#778899"
        itemstyle-forecolor="#ffffff"
        alternatingitemstyle-backcolor="#e8e8e8"
        alternatingitemstyle-forecolor="#000000"
        footerstyle-font-size="9pt"
        footerstyle-font-italic="True">
            <HeaderTemplate> My CD Catalog </HeaderTemplate>
            <ItemTemplate>
            "<%# DataBinder.Eval(Container.DataItem, "title")%>" of <%# DataBinder.Eval(Container.DataItem, "artist")%>  - $<%#  DataBinder.Eval(Container.DataItem, "price")%>
            </ItemTemplate>
            <AlternatingItemTemplate>
            "<%#DataBinder.Eval(Container.DataItem, "title")%>" of <%#DataBinder.Eval(Container.DataItem, "artist")%>  - $<%# DataBinder.Eval(Container.DataItem, "price") %>
            </AlternatingItemTemplate>
            <FooterTemplate>© Hege Refsnes</FooterTemplate>
        </asp:DataList>
</form>
</body>
</html>
