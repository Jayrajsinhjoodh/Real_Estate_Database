using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
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
        Session["name"] = txtName.Text;

        mycon();
        cmd = new SqlCommand("insert into customer_registration values(@sidename,@txtcostvalue,@txtcostinword,@blockno,@Flatno,@Floor,@Name,@Name2,@Name3,@Address,@Age,@Phoneno,@Panno,@Adharno,@Occupation,@carpetarea,@Washarea,@balconyarea,@openbalcony,@constructionarea,@landarea,@East,@Wast,@North,@South,@sideunit,@workprogress,@Agreementdated,@Considerationofrs,@landcost,@Considerationcost,@date)", con);
        string gen = "";
        if (Radiolaxuria.Checked == true)
        {
            gen = Radiolaxuria.Text;
        }
        else if (Radiohill.Checked == true)
        {
            gen = Radiohill.Text;
        }
        


        cmd.Parameters.AddWithValue("@sidename", gen);
        cmd.Parameters.AddWithValue("@txtcostvalue", txtcostvalue.Text);
        cmd.Parameters.AddWithValue("@txtcostinword", txtcostinword.Text);
        cmd.Parameters.AddWithValue("@blockno", blockno.Text);
        cmd.Parameters.AddWithValue("@Flatno", Flatno.Text);
        cmd.Parameters.AddWithValue("@Floor", Floor.Text);
        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@Name2", txtName2.Text);
        cmd.Parameters.AddWithValue("@Name3", txtName3.Text);
        cmd.Parameters.AddWithValue("@Address", Address.Text);
        cmd.Parameters.AddWithValue("@Age", Age.Text);
        cmd.Parameters.AddWithValue("@Phoneno", Phoneno.Text);
        cmd.Parameters.AddWithValue("@Panno", Panno.Text);
        cmd.Parameters.AddWithValue("@Adharno", Adharno.Text);           
        cmd.Parameters.AddWithValue("@Occupation", Occupation.Text);
        cmd.Parameters.AddWithValue("@carpetarea", carpetarea.Text);
        cmd.Parameters.AddWithValue("@Washarea", Washarea.Text);
        cmd.Parameters.AddWithValue("@balconyarea", balconyarea.Text);
        cmd.Parameters.AddWithValue("@openbalcony", openbalcony.Text);
        cmd.Parameters.AddWithValue("@constructionarea", constructionarea.Text);
        cmd.Parameters.AddWithValue("@landarea", landarea.Text);
        cmd.Parameters.AddWithValue("@East", East.Text);
        cmd.Parameters.AddWithValue("@Wast", Wast.Text);
        cmd.Parameters.AddWithValue("@North", North.Text);
        cmd.Parameters.AddWithValue("@South", South.Text);
        cmd.Parameters.AddWithValue("@sideunit", sideunit.Text);
        cmd.Parameters.AddWithValue("@workprogress",workprogress .Text);
        cmd.Parameters.AddWithValue("@Agreementdated",Agreementdated .Text);
        cmd.Parameters.AddWithValue("@Considerationofrs",Considerationofrs .Text);
        cmd.Parameters.AddWithValue("@landcost",landcost .Text);
        cmd.Parameters.AddWithValue("@Considerationcost",Considerationcost .Text);
        cmd.Parameters.AddWithValue("@date",date .Text);
        
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Documeni Registration Successfully'); window.location.href='home page.aspx';</script>");

        

        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}