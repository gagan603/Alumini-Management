using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_view_alumini : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("data source=.; database=Alumini; integrated security=SSPI");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }

        for (int i = DateTime.Now.Year; i >= 1945; i--)
        {
            DropDownList1.Items.Add(i.ToString());
            DropDownList3.Items.Add(i.ToString());
        }

        DropDownList2.Items.Add("BSc");
        DropDownList2.Items.Add("BCom");
        DropDownList2.Items.Add("BCA");

        DropDownList4.Items.Add("BSc");
        DropDownList4.Items.Add("BCom");
        DropDownList4.Items.Add("BCA");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_home.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String query = "select * from User_reg where Batch='" + DropDownList1.SelectedValue  + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        Label1.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            Label1.Text = "No records found....";
            return;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String query = "select * from User_reg where Course='" + DropDownList2.SelectedValue + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        Label1.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            Label1.Text = "No records found....";
            return;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String query = "select * from User_reg where Batch='" + DropDownList3.SelectedValue + "' and Course='" + DropDownList4.SelectedValue + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        Label1.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            Label1.Text = "No records found....";
            return;
        }
    }
}