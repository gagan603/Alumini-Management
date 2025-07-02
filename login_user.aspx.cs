using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login_user : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("data source=.; database=Alumini; integrated security=SSPI");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_reg.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label1.Text = "All fields mandatory...";
            return;
        }

        String query = "select * from user_reg where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
        Conn.Open();

        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();

        Label1.Text = "";
        if (dr.HasRows)
        {
            Session["username"] = TextBox1.Text;
            Conn.Close();
            Response.Redirect("user_home.aspx");
        }
        Label1.Text = "Invalid login...";

        Conn.Close();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }
}