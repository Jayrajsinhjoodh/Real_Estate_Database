using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class adminbobnoc : System.Web.UI.Page
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["flatno"] != null)
        {


            mycon();
            cmd = new SqlCommand("select * from customer_registration where flatno=@fln", con);
            cmd.Parameters.AddWithValue("fln", Session["flatno"].ToString());
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtblockno.Text = ds.Tables[0].Rows[0]["blockno"].ToString();
                txtflatno.Text = ds.Tables[0].Rows[0]["flatno"].ToString();
                txtfloor.Text = ds.Tables[0].Rows[0]["floor"].ToString();
                Txtname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                Txtname2.Text = ds.Tables[0].Rows[0]["Name2"].ToString();
                Txtname3.Text = ds.Tables[0].Rows[0]["Name3"].ToString();
                txttotalcon.Text = ds.Tables[0].Rows[0]["Considerationofrs"].ToString();
                Txtlandarea.Text = ds.Tables[0].Rows[0]["landarea"].ToString();
                txtconarea.Text = ds.Tables[0].Rows[0]["constructionarea"].ToString();
                txtagrdated.Text = ds.Tables[0].Rows[0]["Agreementdated"].ToString();


            }
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {

    }
    protected void submit_Click0(object sender, EventArgs e)
    {
        Response.Write("<script> window.location.href='adminbobnoc-1.aspx';</script>");
    }
    protected void submit_Click2(object sender, EventArgs e)
    {
        nav1.Style.Add("display", "none");
        button1.Visible = false;
        button.Visible = false;

        Response.Write("<script>window.print(); onafterprint=function(){ window.location.href='adminbobnoc.aspx';}  </script>");

    }
}