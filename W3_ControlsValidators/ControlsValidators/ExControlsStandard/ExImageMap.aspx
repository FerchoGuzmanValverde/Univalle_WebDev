<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExImageMap.aspx.cs" Inherits="AdRotator.ExImageMap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/images/aspnet_imagemap.jpg"
        OnClick="ImageMap1_Click">
        <asp:RectangleHotSpot AlternateText="Facebook" Bottom="62" HotSpotMode="Navigate"
            Left="14" NavigateUrl="http://www.facebook.com" Right="152" Target="_blank" Top="11" />
        <asp:RectangleHotSpot AlternateText="Twitter" Bottom="61" HotSpotMode="Navigate"
            Left="156" NavigateUrl="http://www.twitter.com" Right="306" Target="_blank" Top="11" />
        <asp:CircleHotSpot AlternateText="WordPress" HotSpotMode="PostBack" PostBackValue="WordPress"
            Radius="41" X="50" Y="118" />
        <asp:CircleHotSpot AlternateText="BMW" HotSpotMode="PostBack" PostBackValue="BMW"
            Radius="41" X="155" Y="121" />
        <asp:CircleHotSpot AlternateText="Windows" HotSpotMode="PostBack" PostBackValue="Windows"
            Radius="44" X="266" Y="122" />
        <asp:PolygonHotSpot Coordinates="108,217, 141,210, 157,181, 173,210, 207,217, 184,242, 188,276, 158,261, 127,275, 131,243"
            AlternateText="Star" HotSpotMode="PostBack" PostBackValue="Star" />
        </asp:ImageMap>
            
          <br />
        <br />
        <asp:Label ID="Label1" runat="server" Width="322px" BackColor="#FFFFCC" BorderColor="Black"
            BorderStyle="Solid" BorderWidth="1px"></asp:Label>   
    </div>
    </form>
</body>
</html>
