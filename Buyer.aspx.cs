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

public partial class Buyer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
    protected void lbViewCoders_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCodersList.aspx");
    }
    protected void lbPostAPorject_Click(object sender, EventArgs e)
    {
        Response.Redirect("PostProjects.aspx");
    }
    protected void ViewOpenProjects_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewOpenProjects.aspx");
    }
    protected void lbPaymentDetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payments.aspx");
    }
    protected void lbLogOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("CoderBuyerLogin.aspx");
    }
    protected void ViewAllProjects_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewAllProjects.aspx?buyer=yes");
    }
}
