<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_view_all_booking.aspx.cs" Inherits="admin_view_all_booking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table style="width:60%;" align="center" border="1">
        <tr>
            <td align="center" bgcolor="#CCFFFF">
                <strong><span class="style1">List of Active Events</span></strong><br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                </asp:GridView>
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td bgcolor="#99FF66" align="center">
                <asp:GridView ID="GridView2" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back</asp:LinkButton>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
