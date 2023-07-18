using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class adminphillbobnoc_1 : System.Web.UI.Page
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
        if (IsPostBack == false)
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
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        mycon();

        cmd = new SqlCommand("update customer_registration set Name=@Name,Name2=@Name2,Name3=@Name3,considerationofrs=@considerationofrs,Agreementdated=@Agreementdated,landarea=@landarea,constructionarea=@constructionarea where flatno=@fln ", con);
        cmd.Parameters.AddWithValue("@fln", Session["flatno"].ToString());
        cmd.Parameters.AddWithValue("@Name", Txtname.Text);
        cmd.Parameters.AddWithValue("@Name2", Txtname2.Text);
        cmd.Parameters.AddWithValue("@Name3", Txtname3.Text);
        cmd.Parameters.AddWithValue("@Considerationofrs", txttotalcon.Text);
        cmd.Parameters.AddWithValue("@Agreementdated", txtagrdated.Text);
        cmd.Parameters.AddWithValue("@landarea", Txtlandarea.Text);
        cmd.Parameters.AddWithValue("@constructionarea", txtconarea.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Registration Successfully'); window.location.href='adminphillbobnoc.aspx';</script>");
        con.Close();


    }
}