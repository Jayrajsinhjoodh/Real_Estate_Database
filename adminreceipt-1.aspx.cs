using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminreceipt_1 : System.Web.UI.Page
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
                    Txtname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                    Txtname2.Text = ds.Tables[0].Rows[0]["Name2"].ToString();
                    Txtname3.Text = ds.Tables[0].Rows[0]["Name3"].ToString();

                }
            }



            if (Session["edit"] != null)
            {


                mycon();
                cmd = new SqlCommand("select * from receipt_tabales where id=@id", con);
                cmd.Parameters.AddWithValue("@id", Session["edit"].ToString());

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtreceipt.Text = ds.Tables[0].Rows[0]["receiptno"].ToString();
                    txtdate.Text = ds.Tables[0].Rows[0]["date"].ToString();
                    txtcash.Text = ds.Tables[0].Rows[0]["chequeno"].ToString();
                    txtdrawn.Text = ds.Tables[0].Rows[0]["drawnupon"].ToString();
                    Txtcashword.Text = ds.Tables[0].Rows[0]["rsinword"].ToString();
                    Txtamoutn.Text = ds.Tables[0].Rows[0]["amoutn"].ToString();

                }
            }
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        mycon();
        cmd = new SqlCommand("update customer_registration set Name=@Name,Name2=@Name2,Name3=@Name3 where flatno=@fltn ", con);
        cmd.Parameters.AddWithValue("@fln", Session["flatno"].ToString());
        cmd.Parameters.AddWithValue("@Name", Txtname.Text);
        cmd.Parameters.AddWithValue("@Name2", Txtname2.Text);
        cmd.Parameters.AddWithValue("@Name3", Txtname3.Text);
        cmd.Parameters.AddWithValue("@fltn", Session["flatno"].ToString());
        cmd.ExecuteNonQuery();
        mycon();

        cmd = new SqlCommand("update receipt_tabales set  receiptno=@receiptno,date=@date,chequeno=@chequeno,drawnupon=@drawnupon,rsinword=@rsinword,amoutn=@amoutn where id=@id ", con);
        cmd.Parameters.AddWithValue("@id", Session["edit"].ToString());
        cmd.Parameters.AddWithValue("@receiptno", txtreceipt.Text);
        cmd.Parameters.AddWithValue("@date", txtdate.Text);
        cmd.Parameters.AddWithValue("@chequeno", txtcash.Text);
        cmd.Parameters.AddWithValue("@drawnupon", txtdrawn.Text);
        cmd.Parameters.AddWithValue("@rsinword", Txtcashword.Text);
        cmd.Parameters.AddWithValue("@amoutn", Txtamoutn.Text);

        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Registration Successfully'); window.location.href='adminreceipt.aspx?edit=" + Session["edit"] + "';</script>");
        con.Close();
        con.Close();
    }

}

