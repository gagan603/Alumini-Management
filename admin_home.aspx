<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
    </style>
</head>
<body background="images/Traffic_fines.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <br />
    <br />
    <table align="center" style="width: 47%;" border="1">
        <tr>
            <td align="center" bgcolor="#CCFF33">
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton1_Click">Add Alumini Meet</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" bgcolor="#CCFF33">
    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton3_Click">Remove Alumini Meet</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center" class="style1">
                </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#CCFF33">
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
        Font-Size="Large" onclick="LinkButton2_Click">View/Search all Alumini</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" bgcolor="#CCFF33">
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="Large" 
                    onclick="LinkButton6_Click" style="font-weight: 700">View all Alumini Meet Bookings</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" bgcolor="#CCFF33">
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton5_Click">View all Registered Users</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" bgcolor="#FFCCFF">
                <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton7_Click">View all Queries</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" bgcolor="#FFCCFF">
                <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" 
                    Font-Size="Large" onclick="LinkButton8_Click">Send Response to Query</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                    onclick="LinkButton4_Click">Logout</asp:LinkButton>
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
