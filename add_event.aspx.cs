using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_event : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("data source=.; database=Alumini; integrated security=SSPI");

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";

        if (TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
        {
            Label1.Text = "*All fields mandatory...";
            return;
        }

        String StrQueryInsert;
        StrQueryInsert = "Insert into event values('" + Label2.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','Active')";

        SqlCommand cmd = new SqlCommand(StrQueryInsert, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();

        Response.Redirect("admin_home.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }

        Label2.Text = "EA" + DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_home.aspx");
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (DateTime.Now > Calendar1.SelectedDate)
        {
            Label1.Text = "Please select future date...";
            return;
        }
        TextBox3.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
    }
}