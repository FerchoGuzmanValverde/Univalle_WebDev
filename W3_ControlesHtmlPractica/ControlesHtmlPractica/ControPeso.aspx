<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControPeso.aspx.cs" Inherits="ControlesHtmlPractica.ControPeso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <th>Name</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input id="name" runat="server" type="text"/></td>
            </tr>
            <tr>
                <td>Sex:</td>
                <td>
                    <div>
                        <input type="radio" id="Radio1" name="sex" runat="server"/>
                        <label>Mujer</label>
                        <br/>
                        <input name="sex" value="Hombre" runat="server" type="radio"/>
                        <label>Hombre</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>Eye Color:</td>
                <td>
                    <select runat="server">
                        <option>Green</option>
                        <option>Blue</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Check all that apply:</td>
                <td>
                    <input runat="server" type="checkbox" id="check1"/>
                    <label>Over 6 feet tall</label>
                    
                </td>
                <td>
                    <input type="checkbox" runat="server" id="check2" />
                    <label>Over 200 hundred pounds</label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Describe your athletic ability</label>
                </td>
            </tr>
            <tr>
                <td>
                    <input id="description" type="text" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                    <button id="boton" onserverclick="funcionDefinir" runat="server">Submit my Info</button>
                </td>
            </tr>
        </table>
        <label id="answer" type="text" runat="server"/>
    </div>
    </form>
</body>
</html>
