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
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
     string sqlConnection;
    SqlConnection cn;
    public AdminLogin()
    {
        sqlConnection = ConfigurationManager.ConnectionStrings["codeshare"].ConnectionString;
        cn = new SqlConnection(sqlConnection);
        cn.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
    }
    protected void lbHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string sqlQuery = "select * from admin where username='" + TXTID.Text + "' and password='" + TXTPWD.Text + "'";
        DataSet dsProj = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(sqlQuery, cn);
        da.Fill(dsProj);
        if (dsProj != null && dsProj.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("Administrator.aspx");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}
