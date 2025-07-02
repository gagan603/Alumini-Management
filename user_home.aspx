<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_home.aspx.cs" Inherits="user_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 46px;
        }
    </style>
</head>
<body background="images/2.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <br />
    <table align="center" style="width: 46%;">
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="Yellow">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#003300" Text="Welcome"></asp:Label>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#00FF99">
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton1_Click">Search Alumini</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#00FF99">
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton2_Click">View and Participate in Alumini Meet</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#00FF99">
                <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton7_Click">Cancel my  Alumini Meet Participation</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#00FF99">
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton6_Click">View my  Alumini Meet Booking History</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#00FF99">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton4_Click">View My Details</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#FFCCFF">
                <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton8_Click">Send Queries to Admin</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" bgcolor="#FFCCFF">
                <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton9_Click">View all my Queries and Replies</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                    onclick="LinkButton5_Click">Logout</asp:LinkButton>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
