<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_view_alumini.aspx.cs" Inherits="user_view_alumini" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table style="width:802px;" align="center" border="1">
        <tr>
            <td align="center" bgcolor="#FFFFCC">
                Select Year<br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="View Alumini" />
            </td>
            <td align="center" bgcolor="#FFFFCC">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Course<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="View Alumini" />
            </td>
            <td align="center" bgcolor="#FFFFCC">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Select Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Select Course<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
&nbsp;
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="View Alumini" />
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#CCCCFF" colspan="3">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back</asp:LinkButton>
            </td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        </table>
    </form>
</body>
</html>
