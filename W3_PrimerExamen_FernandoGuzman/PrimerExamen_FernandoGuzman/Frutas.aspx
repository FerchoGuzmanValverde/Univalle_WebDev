<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frutas.aspx.cs" Inherits="PrimerExamen_FernandoGuzman.Frutas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:green; text-align:center">
        <h1>THE WORLD OF FRUIT</h1>
        <br />
        <h2>Fruit Survey</h2>
        <br />
    </div>
    <div style="background-color:greenyellow;">
        <div style="text-align: left; padding:20px; padding-left:600px; ">
            <label>Name:</label>
            <input runat="server" id="name" type="text" />
            <br />

            <label>Address:</label>
            <input runat="server" id="address" type="text" />
            <br />

            <label>Email:</label>
            <input runat="server" id="email" type="email" />
            <br />

            <label>How many pieces of fruit do you eat per day?:</label>
            <input name="number" runat="server" type="radio" id="cero" /><label>0</label>
            <input name="number" runat="server" type="radio" id="one" /><label>1</label>
            <input name="number" runat="server" type="radio" id="two" /><label>2</label>
            <input name="number" runat="server" type="radio" id="more" /><label>More than 2</label>
            <br />

            <label>My favorite fruit:</label>
            <select runat="server" id="favorite">
                <option>Peer</option>
                <option>Apple</option>
                <option>Pinneaple</option>
                <option>Avocado</option>
                <option>Orange</option>
            </select>
            <br />

            <label>Would you like a brochure:</label>
            <input runat="server" type="checkbox" id="brochure" />
            <br />

            <button type="submit" onserverclick="verificar" runat="server" >Verificar</button>
            <br />
            <label runat="server" id="label1"></label><br />
            <label runat="server" id="label2"></label>
        </div>
    </div>
    </form>
</body>
</html>
