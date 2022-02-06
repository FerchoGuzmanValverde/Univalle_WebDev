<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="ControlesHtmlPractica.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>YOUR BASIC INFO</h1><br/>

            <label>Name:</label><br />
            <input type="text" id="name" runat="server" /><br />

            <label>Email:</label><br />
            <input type="email" id="email" runat="server" /><br />

            <label>Password:</label><br />
            <input type="password" id="password" runat="server" /><br />

            <label>Age:</label><br />
            <input name="age" type="radio" id="radio1" runat="server" />
            <label>Under 16</label><br />
            <input name="age" type="radio" id="radio2" runat="server" />
            <label>16 or Older</label><br />
            <br />

            <h1>YOUR PROFILE</h1><br/>

            <label>Biography:</label><br />
            <input type="text" id="biography" runat="server" /><br />

            <label>Select Courses:</label><br />
            <select id="course" runat="server">
                <option>Computer Engineering</option>
                <option>Computer Science</option>
                <option>Web Development Degree</option>
            </select><br />

            <label>Interests:</label><br />
            <input type="checkbox" id="check1" runat="server" />
            <label>Engineering</label><br />
            <input type="checkbox" id="check2" runat="server" />
            <label>Business</label><br />

            <button type="submit" runat="server" onserverclick="resumenPerfil">SUBMIT</button>
            <br /><br />
            <h1>RESUMEN PERFIL</h1><br />
            <label id="resumen" runat="server">----------</label>
        </div>
    </form>
</body>
</html>
