<%@ Page Language="C#" AutoEventWireup="true" CodeFile="send_query.aspx.cs" Inherits="send_query" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="images/t4.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table style="width: 70%;" bgcolor="#CCFF33" align="center" border="1">
        <tr>
            <td>
                Query ID</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Date</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Enter your Query</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="704px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back</asp:LinkButton>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
