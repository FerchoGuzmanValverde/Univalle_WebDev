<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarForm.aspx.cs" Inherits="FernandoGuzman_DoraSolares_Examen.BuscarForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="BUSCAR REGISTRO POR CODIGO"></asp:Label>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Codigo:"></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodigo" ErrorMessage="El codigo es requerido">No ingreso el codigo..</asp:RequiredFieldValidator>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BUSCAR" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Volver a inicio" />
        <p>
            <asp:Label ID="Label3" runat="server" Text="Nombre Video:"></asp:Label>
            <asp:Label ID="lblNombre" runat="server" Text="---"></asp:Label>
        </p>
        <asp:Label ID="Label4" runat="server" Text="Formato:"></asp:Label>
        <asp:Label ID="lblFormato" runat="server" Text="---"></asp:Label>
        <p>
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlDataSourceSelect" runat="server" ConnectionString="Data Source=.;Initial Catalog=practica;User ID=sa;Password=Univalle" ProviderName="System.Data.SqlClient" SelectCommand="SELECT V.name, F.name_format FROM VIDEO AS V INNER JOIN FORMATO AS F ON V.id_format = F.id_format WHERE (V.id = @id)">
            <SelectParameters>
                <asp:Parameter Name="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
