using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminotp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["otp"].ToString() == txtotp.Text)
        {
            Response.Redirect("admincreatepassword.aspx");
        }
        else
        {
            
            Response.Write("<script>alert('wrong otp'); window.location.href='adminotp.aspx';</script>");
        }
    }
 
}