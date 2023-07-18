using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class forgottenpassword : System.Web.UI.Page
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
        mycon();
        cmd = new SqlCommand("select * from register where emailid=@em ", con);
        cmd.Parameters.AddWithValue("@em", txtemail.Text);
        

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Random r=new Random ();
            string otp=r.Next(1000,9999).ToString();
            string msg="Your OTP is "+otp;
            if (GmailSender.SendMail("realestatedatabase123@gmail.com","jayraj2001",txtemail.Text,"OTP",msg))
            {
                Session["otp"] = otp;
                Session["email"] = txtemail.Text;
                Response.Write("<script>alert('otp send to email'); window.location.href='otp.aspx';</script>");
                
            }
            else
            {
                Response.Write("<script>alert('Message Sending failed'); window.location.href='forgottenpassword.aspx';</script>");
    
            }

          //  Response.Write("<script>alert('otp send to email'); window.location.href='otp.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Email is incorrect'); window.location.href='forgottenpassword.aspx';</script>");
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
