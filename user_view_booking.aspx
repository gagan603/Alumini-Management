<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_view_booking.aspx.cs" Inherits="user_view_booking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table style="width:60%;" align="center" border="1">
        <tr>
            <td align="center" bgcolor="#CCFFFF">
                <asp:GridView ID="GridView1" runat="server" 
                    >
                </asp:GridView>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td bgcolor="#99FF66">
                &nbsp;</td>
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
