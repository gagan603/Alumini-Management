using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class event_view_participate : System.Web.UI.Page
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
        StrQueryInsert = "Insert into Event_Booking values('" + TextBox1.Text + "','" + Session["username"] + "','" + DateTime.Now.ToString("dd/MM/yyyy") + "','Booked')";

        SqlCommand cmd = new SqlCommand(StrQueryInsert, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();

        Response.Redirect("user_home.aspx");

    }
 
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_home.aspx");
    }

}