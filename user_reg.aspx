<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_reg.aspx.cs" Inherits="user_reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 217px;
        }
    </style>
</head>
<body background="images/4.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table style="width: 30%;" align="center" border="1">
        <tr>
            <td bgcolor="#FFFF99">
                &nbsp;</td>
            <td bgcolor="#FFFF99" class="style1">
                <strong>Alumini Registration</strong></td>
        </tr>
        <tr>
            <td bgcolor="#FFFF99">
                Name</td>
            <td bgcolor="#FFFF99" class="style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFFF99">
                Contact number</td>
            <td bgcolor="#FFFF99" class="style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFFF99">
                Email ID</td>
            <td bgcolor="#FFFF99" class="style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#99FF33">
                Batch (Year)</td>
            <td bgcolor="#99FF33" class="style1">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#99FF33">
                Course</td>
            <td bgcolor="#99FF33" class="style1">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFFF99">
                Username</td>
            <td bgcolor="#FFFF99" class="style1">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFFF99">
                Password</td>
            <td bgcolor="#FFFF99" class="style1">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back</asp:LinkButton>
            </td>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
