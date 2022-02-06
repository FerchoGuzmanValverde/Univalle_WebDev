<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertarForm.aspx.cs" Inherits="FernandoGuzman_DoraSolares_Examen.InsertarForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="INSERTAR VIDEO"></asp:Label>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Nombre Video:"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese nombre del video..">No ingreso nombre del video...</asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Formato:"></asp:Label>
        <asp:DropDownList ID="ddlFormatos" runat="server" DataSourceID="SqlDataSourceSelect" DataTextField="name_format">
        </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INSERTAR" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Volver a Inicio" />
        </p>
        <p>
            <asp:Label ID="lblResultado" runat="server"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlDataSourceInsertar" runat="server" ConnectionString="Data Source=.;Initial Catalog=practica;User ID=sa;Password=Univalle" InsertCommand="INSERT INTO VIDEO(name, id_format) VALUES (@name, @id_format)" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="name" />
                <asp:Parameter Name="id_format" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceSelect" runat="server" ConnectionString="Data Source=.;Initial Catalog=practica;User ID=sa;Password=Univalle" ProviderName="System.Data.SqlClient" SelectCommand="SELECT name_format FROM FORMATO"></asp:SqlDataSource>
    </form>
</body>
</html>
