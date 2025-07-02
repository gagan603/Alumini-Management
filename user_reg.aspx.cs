using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class user_reg : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("data source=.; database=Alumini; integrated security=SSPI");

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";

        if (TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox1.Text == "")
        {
            Label1.Text = "*All fields mandatory...";
            return;
        }

        if (check_num(TextBox1.Text) == 1)
        {
            Label1.Text = "*Name cannot have numbers";
            return;
        }

        long result;
        if (!Int64.TryParse(TextBox2.Text, out result))
        {
            Label1.Text = "Phone num enter only digits...";
            return;
        }

        if (TextBox2.Text.Length != 10)
        {
            Label1.Text = "Phone num enter 10 digits only...";
            return;
        }

        if (!Int64.TryParse(TextBox4.Text, out result))
        {
            Label1.Text = "Batch Year should be numeric...";
            return;
        }

        if (TextBox4.Text.Length != 4)
        {
            Label1.Text = "Batch should be 4 digit year...";
            return;
        }

        if (check_email(TextBox3.Text) == 0)
        {
            Label1.Text = "*invalid email format";
            return;
        }
       
        if (check_uname() == 1)
        {
            Label1.Text = "*Username already exists...";
            return;
        }

        String StrQueryInsert;
        StrQueryInsert = "Insert into user_reg values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue  + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";

        SqlCommand cmd = new SqlCommand(StrQueryInsert, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();

        Response.Redirect("login_user.aspx");
    }

    int check_email(String s) // function 
    {
        int i = 0, sym1 = 0, sym2 = 0, j = 0;

        for (i = 0; i < s.Length; i++)
        {

            if (s[i].Equals('@'))
            {
                sym1 = 1;
                break;
            }
        }

        for (j = i; j < s.Length; j++)
        {

            if (s[j].Equals('.'))
            {
                sym2 = 1;
                break;
            }
        }

        if (sym1 == 1 && sym2 == 1)
        {
            return 1;
        }
        return 0;
    }

    int check_num(String s) // function 
    {
        int i = 0;
        long result;

        for (i = 0; i < s.Length; i++)
        {
            if (Int64.TryParse(s[i].ToString(), out result))
            {
                return 1;
            }
        }
        return 0;
    }

    public int check_uname()
    {
        String query = "select * from user_reg where username='" + TextBox6.Text + "'";
        Conn.Open();

        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            Conn.Close();
            return 1;
        }
        Conn.Close();

        return 0;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login_user.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }

        DropDownList1.Items.Add("BSc");
        DropDownList1.Items.Add("BCom");
        DropDownList1.Items.Add("BCA");
    }
}