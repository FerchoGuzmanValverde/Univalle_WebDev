<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <script type="text/javascript">
        function MakeItUpper() {
            newText = document.getElementById("TextBox1").value.toUpperCase();
            document.getElementById("TextBox1").value = newText;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" id="Button1" value="Upper"
                onclick="javascript: MakeItUpper()" />
            <input type="text" id="TextBox1" runat="server" />
        </div>
    </form>
</body>
</html>
