using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class send_query : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("data source=.; database=Alumini; integrated security=SSPI");

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";

        if (TextBox2.Text == "" || TextBox3.Text == "")
        {
            Label1.Text = "*All fields mandatory...";
            return;
        }

        String StrQueryInsert;
        StrQueryInsert = "Insert into query values('" + Label2.Text + "','" + Session["username"] + "','" + TextBox2.Text + "','" + TextBox3.Text + "','')";

        SqlCommand cmd = new SqlCommand(StrQueryInsert, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();

        Response.Redirect("user_home.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }

        Label2.Text = "QU" + DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
        TextBox2.Text = DateTime.Now.ToString("dd/MM/yyyy");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_home.aspx");
    }
}