using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_view_queries : System.Web.UI.Page
{ 
    SqlConnection Conn = new SqlConnection("data source=.; database=Alumini; integrated security=SSPI");

    protected void Page_Load(object sender, EventArgs e)
    {
        String query = "select * from query";
        SqlDataAdapter da = new SqlDataAdapter(query, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        Label1.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            Label1.Text = "No Record found ....";
            return;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_home.aspx");
    }

}