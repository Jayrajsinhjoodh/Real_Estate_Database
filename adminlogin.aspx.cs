using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
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



    }
    protected void submit_Click(object sender, EventArgs e)
    {
        mycon();
        cmd = new SqlCommand("select * from admin_panel where adminid=@aid and password=@ps", con);
        cmd.Parameters.AddWithValue("@aid", Txtemailid.Text);
        cmd.Parameters.AddWithValue("@ps", Txtpassword.Text);

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            Response.Write("<script>alert('Admin Login Successfully'); window.location.href='adminhomepage.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Email or Password incorrect'); window.location.href='adminlogin.aspx';</script>");
        }

    }
}