using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class adminphillreceipt : System.Web.UI.Page
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


        if (Session["flatno"] != null)
        {


            mycon();
            cmd = new SqlCommand("select * from receipt_tabales where id=@id", con);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["edit"].ToString());

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
                txtamount.Text = ds.Tables[0].Rows[0]["amoutn"].ToString();

            }
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {

    }
    protected void submit_Click0(object sender, EventArgs e)
    {

        //<a href='receipt.aspx?edit=<%#Eval("id") %>'>View</a>
        Session["edit"] = Request.QueryString["edit"].ToString();

        Response.Redirect("adminphillreceipt-1.aspx");
        //Response.Write(Session["edit"])
        //Response.Write("<script> window.location.href='receipt-1.aspx';</script>");
    }
    protected void submit_Click2(object sender, EventArgs e)
    {
        nav1.Style.Add("display", "none");
        button1.Visible = false;
        button.Visible = false;

        Response.Write("<script>window.print(); onafterprint=function(){ window.location.href='adminphillreceipt.aspx?Edit=" + Request.QueryString["edit"] + "';}  </script>");

    }
}

