//Created By Anand.B
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Administrator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void lblCoder_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewcoderslist.aspx?admin=yes");
    }
    protected void lblBuyer_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewBuyerslist.aspx");
    }
    protected void lblLogOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}
