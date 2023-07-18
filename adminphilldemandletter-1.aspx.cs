using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class adminphilldemandletter_1 : System.Web.UI.Page
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
                    txtFlatno.Text = ds.Tables[0].Rows[0]["flatno"].ToString();
                    txtname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                    txtname2.Text = ds.Tables[0].Rows[0]["Name2"].ToString();
                    txtname3.Text = ds.Tables[0].Rows[0]["Name3"].ToString();
                    Txtwork.Text = ds.Tables[0].Rows[0]["workprogress"].ToString();
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        mycon();

        cmd = new SqlCommand("update customer_registration set workprogress=@workprogress,Name=@Name,Name2=@Name2,Name3=@Name3 where flatno=@fln ", con);
        cmd.Parameters.AddWithValue("@fln", Session["flatno"].ToString());
        cmd.Parameters.AddWithValue("@workprogress", Txtwork.Text);
        cmd.Parameters.AddWithValue("@Name", txtname.Text);
        cmd.Parameters.AddWithValue("@Name2", txtname2.Text);
        cmd.Parameters.AddWithValue("@Name3", txtname3.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Registration Successfully'); window.location.href='adminphilldemandletter.aspx';</script>");
        con.Close();

    }

}