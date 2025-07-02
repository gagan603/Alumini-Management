<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_send_response.aspx.cs" Inherits="admin_send_response" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 74px;
        }
        .style2
        {
            width: 717px;
        }
    </style>
</head>
<body background="images/t3.jpg">
    <form id="form1" runat="server">
    <div>
    
        <br />
    
    </div>
    <br />
    <table border="1" align="center" bgcolor="#CCFFCC">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td align="center" class="style2">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#FF3300" Text="List of Queries"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td align="center" class="style2">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1">
                &nbsp;</td>
            <td class="style2" align="center">
    <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" align="center">
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" ForeColor="Red"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" align="center">
                <strong>Enter Response for the above query<br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style1">
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back</asp:LinkButton>
            </td>
            <td class="style2" align="center">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Send Response" BackColor="#FFFF66" Font-Bold="True" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" align="center">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
