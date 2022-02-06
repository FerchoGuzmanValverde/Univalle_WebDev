<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="FernandoGuzman_DoraSolares_Examen.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="VIDEOS REGISTRADOS"></asp:Label>
    <div>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="REGISTROS:"></asp:Label>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSourceDatos">
            </asp:GridView>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BUSCAR" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="INSERTAR" />
        </p>
        <asp:SqlDataSource ID="SqlDataSourceDatos" runat="server" ConnectionString="Data Source=.;Initial Catalog=practica;User ID=sa;Password=Univalle" ProviderName="System.Data.SqlClient" SelectCommand="SELECT V.id AS ID, V.name AS NAME, F.name_format AS FORMAT FROM VIDEO AS V INNER JOIN FORMATO AS F ON V.id_format = F.id_format"></asp:SqlDataSource>
    </form>
</body>
</html>
