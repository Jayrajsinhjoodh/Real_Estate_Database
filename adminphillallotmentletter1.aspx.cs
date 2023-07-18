using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class adminphillallotmentletter1 : System.Web.UI.Page
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
                    txtflatno.Text = ds.Tables[0].Rows[0]["flatno"].ToString();
                    Txtblockno.Text = ds.Tables[0].Rows[0]["blockno"].ToString();
                    Txtfloorno.Text = ds.Tables[0].Rows[0]["floor"].ToString();
                    Txtname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                    Txtname2.Text = ds.Tables[0].Rows[0]["Name2"].ToString();
                    Txtname3.Text = ds.Tables[0].Rows[0]["Name3"].ToString();
                    txtba.Text = ds.Tables[0].Rows[0]["balconyarea"].ToString();
                    Txtca.Text = ds.Tables[0].Rows[0]["constructionarea"].ToString();
                    Txtrs.Text = ds.Tables[0].Rows[0]["costvalue"].ToString();
                    Txtrsword.Text = ds.Tables[0].Rows[0]["costinword"].ToString();
                    Txtsideunit.Text = ds.Tables[0].Rows[0]["sideunit"].ToString();
                    txtdate.Text = ds.Tables[0].Rows[0]["date"].ToString();
                }
            }
        }
    }
    protected void submit_Click1(object sender, EventArgs e)
    {

        mycon();
        cmd = new SqlCommand("update customer_registration set date=@date,Name=@Name,Name2=@Name2,Name3=@Name3,sideunit=@sideunit,balconyarea=@balconyarea,constructionarea=@constructionarea,costinword=@costinword,costvalue=@costvalue where flatno=@fln  ", con);
        cmd.Parameters.AddWithValue("@fln", Session["flatno"].ToString());
        cmd.Parameters.AddWithValue("@date", txtdate.Text);
        cmd.Parameters.AddWithValue("@Name", Txtname.Text);
        cmd.Parameters.AddWithValue("@Name2", Txtname2.Text);
        cmd.Parameters.AddWithValue("@Name3", Txtname3.Text);
        cmd.Parameters.AddWithValue("@sideunit", Txtsideunit.Text);
        cmd.Parameters.AddWithValue("@balconyarea", txtba.Text);
        cmd.Parameters.AddWithValue("@constructionarea", Txtca.Text);
        cmd.Parameters.AddWithValue("@costinword", Txtrs.Text);
        cmd.Parameters.AddWithValue("@costvalue", Txtrsword.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Registration Successfully'); window.location.href='adminphillallotmentletter.aspx';</script>");
        con.Close();
    }



}