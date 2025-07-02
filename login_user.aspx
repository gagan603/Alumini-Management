<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_user.aspx.cs" Inherits="login_user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF3300;
        }
    </style>
</head>
<body background="images/13.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table style="width: 23%;" align="center" border="1">
        <tr>
            <td bgcolor="#66FF33">
                &nbsp;</td>
            <td bgcolor="#66FF33" class="style1">
                <strong style="font-size: large">Alumini Login</strong></td>
        </tr>
        <tr>
            <td bgcolor="#66FF33">
                User name</td>
            <td bgcolor="#66FF33">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#66FF33">
                Password</td>
            <td bgcolor="#66FF33">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#66FF33">
                &nbsp;</td>
            <td bgcolor="#66FF33">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                    style="font-weight: 700" />
            </td>
        </tr>
        <tr>
            <td bgcolor="#66FF33">
                &nbsp;</td>
            <td bgcolor="#66FF33">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="#66FF33">
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Back</asp:LinkButton>
            </td>
            <td bgcolor="#66FF33">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">if not registered, click here</asp:LinkButton>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
