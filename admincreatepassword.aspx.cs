using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admincreatepassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    //SqlDataAdapter da;
    //DataSet ds;
    void mycon()
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True");
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txtconfpass.Text == Txtpassword.Text)
        {


            mycon();
            cmd = new SqlCommand("update admin_panel set password=@ps where adminid=@aid", con);
            cmd.Parameters.AddWithValue("@aid", Session["email"].ToString());
            cmd.Parameters.AddWithValue("@ps", Txtpassword.Text);

            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Password has been  Successfully changed'); window.location.href='adminlogin.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Password does not match');window.location.href='admincreatepassword.aspx';</script>");

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
}