using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminaxisnoc_1 : System.Web.UI.Page
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
                    Txtlandarea.Text = ds.Tables[0].Rows[0]["landarea"].ToString();
                    Txtconarea.Text = ds.Tables[0].Rows[0]["constructionarea"].ToString();
                    Txtcost.Text = ds.Tables[0].Rows[0]["considerationofrs"].ToString();
                    Txtconcost.Text = ds.Tables[0].Rows[0]["considerationcost"].ToString();
                    Txtagrdated.Text = ds.Tables[0].Rows[0]["Agreementdated"].ToString();
                    landcost.Text = ds.Tables[0].Rows[0]["landcost"].ToString();
                }
            }
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        mycon();
        cmd = new SqlCommand("update customer_registration set Name=@Name,Name2=@Name2,Name3=@Name3,Considerationofrs=@Considerationofrs,landcost=@landcost,considerationcost=@considerationcost,Agreementdated=@Agreementdated,landarea=@landarea,constructionarea=@constructionarea where flatno=@fln", con);
        cmd.Parameters.AddWithValue("@fln", Session["flatno"].ToString());

        cmd.Parameters.AddWithValue("@Name", Txtname.Text);
        cmd.Parameters.AddWithValue("@Name2", Txtname2.Text);
        cmd.Parameters.AddWithValue("@Name3", Txtname3.Text);
        cmd.Parameters.AddWithValue("@Considerationofrs", Txtcost.Text);
        cmd.Parameters.AddWithValue("@landcost", landcost.Text);
        cmd.Parameters.AddWithValue("@considerationcost", Txtconcost.Text);
        cmd.Parameters.AddWithValue("@Agreementdated", Txtagrdated.Text);
        cmd.Parameters.AddWithValue("@landarea", Txtlandarea.Text);
        cmd.Parameters.AddWithValue("@constructionarea", Txtconarea.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Registration Successfully'); window.location.href='adminaxisnoc.aspx';</script>");
        con.Close();


    }

}