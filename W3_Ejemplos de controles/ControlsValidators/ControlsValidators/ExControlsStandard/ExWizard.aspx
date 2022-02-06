<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExWizard.aspx.cs" Inherits="AdRotator.ExWizard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Wizard ID="Wizard1" runat="server" 
            HeaderText="Simple Example of Wizard Control" HeaderStyle-Font-Size="Larger" 
            HeaderStyle-ForeColor="Crimson" ActiveStepIndex="0">  
            <WizardSteps>  
                <asp:WizardStep ID="WizadStep1" runat="server" title="Personal Information">  
                    <asp:Label ID="Label1" runat="server" Text="Your Name" AssociatedControlID="TextBox1"></asp:Label>  
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    <br />  
                    <asp:Label ID="Label2" runat="server" Text="City" AssociatedControlID="TextBox2"></asp:Label>  
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
                </asp:WizardStep>  
                <asp:WizardStep ID="WizardStep2" runat="server" title="Favorite Color?">  
                    <asp:Label ID="Label3" runat="server" Text="Favorite Color?" AssociatedControlID="RadioButtonList1"></asp:Label>  
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">  
                        <asp:ListItem Selected="True">Red</asp:ListItem>  
                        <asp:ListItem>Green</asp:ListItem>  
                        <asp:ListItem>Blue</asp:ListItem>  
                    </asp:RadioButtonList>  
                </asp:WizardStep>  
                <asp:WizardStep ID="WizardStep3" runat="server" title="Favorite Tool?">  
                    <asp:Label ID="Label4" runat="server" Text="Most Favorite?" AssociatedControlID="RadioButtonList2"></asp:Label>  
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">  
                        <asp:ListItem Selected="True">Asp.Net</asp:ListItem>  
                        <asp:ListItem>ColdFusion</asp:ListItem>  
                        <asp:ListItem>PHP</asp:ListItem>  
                    </asp:RadioButtonList>  
                </asp:WizardStep>  
                <asp:WizardStep ID="WizardStep4" runat="server" Title="Result" OnActivate="WizardStep4_Activate">  
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" ForeColor="DarkGoldenrod"></asp:Label>  
                </asp:WizardStep>  
            </WizardSteps>  
        </asp:Wizard>          
    </div>
    </form>
</body>
</html>
