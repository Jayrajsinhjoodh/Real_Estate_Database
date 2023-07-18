using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admindocview : System.Web.UI.Page
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

        if (Request.QueryString["flatno"] != null)
        {
            Session["flatno"] = Request.QueryString["flatno"];
        }

    }

    protected void submit_Click1(object sender, EventArgs e)
    {
        Response.Write("<script> window.location.href='adminallotmentletter.aspx';</script>");

    }
    protected void submit2_Click(object sender, EventArgs e)
    {
        Response.Write("<script> window.location.href='admindemandletter.aspx';</script>");
    }
    protected void submit3_Click(object sender, EventArgs e)
    {
        Response.Write("<script> window.location.href='adminreceipt.aspx';</script>");
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Response.Redirect("please select other");
        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            Response.Redirect("adminbobnoc.aspx");
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            Response.Redirect("adminaxisnoc.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mycon();
        cmd = new SqlCommand("insert into receipt_tabales values(@receiptno,@drawnupon,@chequeno,@amount,@rsinword,@date,@flatno)", con);
        cmd.Parameters.AddWithValue("@receiptno", txtrecript1.Text);
        cmd.Parameters.AddWithValue("@drawnupon", txtdrawn1.Text);
        cmd.Parameters.AddWithValue("@chequeno", txtcheque1.Text);
        cmd.Parameters.AddWithValue("@amount", txtamount1.Text);
        cmd.Parameters.AddWithValue("@rsinword", txtrsinword1.Text);
        cmd.Parameters.AddWithValue("@date", txtdate1.Text);
        cmd.Parameters.AddWithValue("@flatno", Session["flatno"].ToString());
        cmd.ExecuteNonQuery();
        // Response.Write("<script>alert('Receipt details Registration Successfully'); window.location.href='docview.aspx';</script>");
        Response.Write("<script>alert('Receipt details Registration Successfully'); </script>");

        con.Close();
        this.GridView1.DataBind();


    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}