<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregar.aspx.cs" Inherits="ejmBD2.agregar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
    
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ver" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Editar" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Eliminar" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="---"></asp:Label>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=ejemplo;Integrated Security=True" InsertCommand="INSERT INTO Users(id, name) VALUES (@id,@name)" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="id" />
                <asp:Parameter Name="name" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.;Initial Catalog=ejemplo;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT name FROM Users WHERE (id = @id)">
            <SelectParameters>
                <asp:Parameter Name="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=.;Initial Catalog=ejemplo;Integrated Security=True" ProviderName="System.Data.SqlClient" UpdateCommand="UPDATE Users SET name = @name WHERE (id = @id)">
            <UpdateParameters>
                <asp:Parameter Name="name" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=.;Initial Catalog=ejemplo;Integrated Security=True" DeleteCommand="DELETE FROM Users WHERE (id = @id)" ProviderName="System.Data.SqlClient">
            <DeleteParameters>
                <asp:Parameter Name="id" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
