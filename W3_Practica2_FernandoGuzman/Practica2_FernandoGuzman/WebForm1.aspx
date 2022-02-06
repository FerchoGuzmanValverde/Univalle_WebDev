<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practica2_FernandoGuzman.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="lblTitulo" class="auto-style1">
        
        <asp:Label ID="lblTitulo1" runat="server" Text="INSERTANDO VIVIENDA"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblTitulo2" runat="server" Text="INSERTE DATOS DE LA VIVIENDA"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblTipo" runat="server" Text="Tipo Vivienda"></asp:Label>
        <asp:DropDownList ID="ddlTipoVivienda" runat="server">
            <asp:ListItem Value="piso">Piso</asp:ListItem>
            <asp:ListItem Value="adosado">Adosado</asp:ListItem>
            <asp:ListItem Value="chalet">Chalet</asp:ListItem>
            <asp:ListItem Value="casa">Casa</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblZona" runat="server" Text="Zona"></asp:Label>
        <asp:DropDownList ID="ddlZona" runat="server">
            <asp:ListItem Value="centro">Centro</asp:ListItem>
            <asp:ListItem Value="nervion">Nervion</asp:ListItem>
            <asp:ListItem Value="triana">Triana</asp:ListItem>
            <asp:ListItem Value="aljarafe">Aljarafe</asp:ListItem>
            <asp:ListItem Value="macarena">Macarena</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label>
        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblDormitorios" runat="server" Text="Dormitorios"></asp:Label>
        <asp:RadioButton ID="rbt1" runat="server" GroupName="dormitorios" Text="1" />
        <asp:RadioButton ID="rbt2" runat="server" GroupName="dormitorios" Text="2" />
        <asp:RadioButton ID="rbt3" runat="server" GroupName="dormitorios" Text="3" />
        <asp:RadioButton ID="rbt4" runat="server" GroupName="dormitorios" Text="4" />
        <asp:RadioButton ID="rbt5" runat="server" GroupName="dormitorios" Text="5" />
        <br />
        <br />
        <asp:Label ID="lblPrecio" runat="server" Text="Precio"></asp:Label>
        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblTamanio" runat="server" Text="Tamaño"></asp:Label>
        <asp:TextBox ID="txtTam" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblExtra" runat="server" Text="Extra"></asp:Label>
        <asp:CheckBox ID="cbxPiscina" runat="server" Text="Piscina" />
        <asp:CheckBox ID="cbxJardin" runat="server" Text="Jardin" />
        <asp:CheckBox ID="cbxGaraje" runat="server" Text="Garage" />
        <br />
        <br />
        <asp:Label ID="lblFoto" runat="server" Text="Foto"></asp:Label>
        <asp:FileUpload ID="fileFoto" runat="server" />
        <br />
        <br />
        <asp:Label ID="lblObservaciones" runat="server" Text="Observaciones"></asp:Label>
        <asp:TextBox ID="txtObservaciones" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnInsertar" runat="server" OnClick="btnInsertar_Click" Text="Insertar Vivienda" />
        <asp:Button ID="btnNuevo" runat="server" OnClick="btnNuevo_Click" Text="Volver a insertar" />
    </div>
    </form>
</body>
</html>
