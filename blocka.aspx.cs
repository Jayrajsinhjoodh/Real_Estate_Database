using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class blocka : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    void mycon()
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True");
        con.Open();
    }
    void loaddata()
    {
        mycon();
        cmd = new SqlCommand("select * from customer_registration where sidename='PUSHKAR LUXURIA' and blockno='A'", con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }

    protected void Page_Load(object sender, EventArgs e)
        {
            loaddata();       
       

        }
    
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        string id = e.CommandArgument.ToString();
        mycon();
        cmd = new SqlCommand("delete from  customer_registration where id=@id ", con);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Delete Successfully')</script>");
        loaddata();

    }
}