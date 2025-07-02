using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
        {
            Response.Redirect("admin_home.aspx");
        }
        Label1.Text = "*invalid username or password...";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }
}