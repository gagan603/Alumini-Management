using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class cancel_event : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("data source=.; database=Alumini; integrated security=SSPI");

    protected void Page_Load(object sender, EventArgs e)
    {
        String query = "select * from event where status='Active'";
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
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        String StrQueryInsert;
        StrQueryInsert = "update event set status='Cancelled' where event_ID='" + TextBox1.Text + "'";

        SqlCommand cmd = new SqlCommand(StrQueryInsert, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();
        Response.Redirect("cancel_event.aspx");
    }
 
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_home.aspx");
    }

}