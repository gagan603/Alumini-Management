using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_send_response : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("data source=.; database=Alumini; integrated security=SSPI");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }
        String query = "select * from Query where response=''";
        SqlDataAdapter da = new SqlDataAdapter(query, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        Label3.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            Label3.Text = "No Record found ....";
            return;
        }
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label3.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label4.Text = "";
        if (TextBox1.Text == "")
        {
            Label4.Text = "Select any query...";
            return;
        }

        if (TextBox2.Text == "")
        {
            Label4.Text = "Please enter your response...";
            return;
        }
        
        String StrQueryInsert;
        StrQueryInsert = "update Query set response='" + TextBox2.Text + "' where Query_ID='" + TextBox1.Text + "'";

        SqlCommand cmd = new SqlCommand(StrQueryInsert, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();
        Response.Redirect("admin_send_response.aspx");
    }
 
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_home.aspx");
    }

}