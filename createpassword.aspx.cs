using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txtconfpass.Text == Txtpassword.Text)
        {


            mycon();
            cmd = new SqlCommand("UPDATE register set password=@ps where emailid=@em", con);
            cmd.Parameters.AddWithValue("@em", Session["email"].ToString());
            cmd.Parameters.AddWithValue("@ps", Txtpassword.Text);

            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Password has been  Successfully changed'); window.location.href='login.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Password does not match');window.location.href='createpassword.aspx';</script>");
       
        }

    }
}