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
    protected void submit_Click(object sender, EventArgs e)
    {
        mycon();


        if (txtpassword.Text == txtconformpassword.Text)
        {

            cmd = new SqlCommand("insert into register values(@firstname,@lastname,@mobilenumber,@gender,@emailid,@password,@dateofregister)", con);
            cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text);
            cmd.Parameters.AddWithValue("@lastname", txtlastname.Text);
            cmd.Parameters.AddWithValue("@mobilenumber", txtphonenumber.Text);


            string gen = "";
            if (Radiomale.Checked == true)
            {
                gen = Radiomale.Text;
            }
            else if (Radiofemale.Checked == true)
            {
                gen = Radiofemale.Text;
            }
            else if (Radioother.Checked == true)
            {
                gen = Radioother.Text;
            }


            cmd.Parameters.AddWithValue("@gender", gen);
            cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@dateofregister", System.DateTime.Now.ToString());
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('reg Successfully'); window.location.href='login.aspx';</script>");

            con.Close();


        }
        else
        {
            Response.Write("<script>alert('error.....'); window.location.href='register.aspx';</script>");
        }


    }
}