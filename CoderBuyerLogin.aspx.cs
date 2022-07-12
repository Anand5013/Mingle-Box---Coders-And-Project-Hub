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

public partial class CoderBuyerLogin : System.Web.UI.Page
{
    string sqlConnection;
    SqlConnection cn;
    public CoderBuyerLogin()
    {
        sqlConnection = ConfigurationManager.ConnectionStrings["codeshare"].ConnectionString;
        cn = new SqlConnection(sqlConnection);
        cn.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMeaage.Text = "";
        
    }
    protected void lbHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
    protected void lbNewUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        int code=0;
        if (ddlCoderBuyer.SelectedItem.Value == "Coder")
        {
            code = 111;
            Session["usertype"] = code;
        }
        else
        {
            code = 222;
            Session["usertype"] = code;
        }
        string sqlQuery="select * from Bid_Projects where userName='"+ txtUserName.Text +"' and password='"+ txtPassword.Text +"' and Access_rights_id="+ code + "";
        DataSet dsUsers = new DataSet();
        SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, cn);
        sqlAdapter.Fill(dsUsers);
        if (dsUsers != null && dsUsers.Tables[0].Rows.Count > 0)
        {
            Session["id"] = dsUsers.Tables[0].Rows[0].ItemArray[0].ToString();
            
            if (code == 111)
                Response.Redirect("Coder.aspx");
            else
                Response.Redirect("Buyer.aspx");

            
        }
        else
        {
            lblErrorMeaage.Visible = true;
            lblErrorMeaage.Text = "Invalid UserName/Password";
        }
       
    }
}
