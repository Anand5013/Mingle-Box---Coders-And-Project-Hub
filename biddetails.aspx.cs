//Created By Diwakar.G
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

public partial class biddetails : System.Web.UI.Page
{
     string sqlConnection;
    SqlConnection cn;
    public biddetails()
    {
        sqlConnection = ConfigurationManager.ConnectionStrings["codeshare"].ConnectionString;
        cn = new SqlConnection(sqlConnection);
        cn.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["pid"] != "" && Request.QueryString["pid"] != null)
            {
                txtProjectID.Text = Request.QueryString["pid"];
                txtBuyerID.Text=GetBuyerID(Convert.ToInt32(Request.QueryString["pid"])).ToString();
                txtCoderName.Text=GetCoderName();
                
            }
        }
    }
    private int GetBuyerID(int pid)
    {
        string sqlQuery = "Select P_ID from proj_desc where P_ID="+ pid;;
        DataSet dsProj = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(sqlQuery, cn);
        da.Fill(dsProj);
        return Convert.ToInt32(dsProj.Tables[0].Rows[0].ItemArray[0]);
 
    }
    private string GetCoderName()
    {
        string sqlQuery = "Select fname+' '+lname from bid_projects where id=" + Convert.ToInt32(Session["id"]);
        DataSet dsProj = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(sqlQuery, cn);
        da.Fill(dsProj);
        return dsProj.Tables[0].Rows[0].ItemArray[0].ToString();

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            string sqlQuery = "insert into bid values(" + txtProjectID.Text + "," + txtBidAmt.Text + ",'" + Session["id"].ToString() + "'," + txtBuyerID.Text + ")";
            SqlCommand cmd = new SqlCommand(sqlQuery, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("ViewAllProjects.aspx");
        }
        catch (Exception ex)
        {
        }
        finally
        {
            
        }
            
            
        
        }
}
