//Created By Kirubananthan.R
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

public partial class codersdeatils : System.Web.UI.Page
{
    string sqlConnection;
    SqlConnection cn;
    public codersdeatils()
    {
        sqlConnection = ConfigurationManager.ConnectionStrings["codeshare"].ConnectionString;
        cn = new SqlConnection(sqlConnection);
        cn.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlQuery = "select * from Bid_Projects where id=" + Convert.ToInt32(Session["id"]);
        string sqlquery1 = "select * from cust_det where coderid =" + Convert.ToInt32(Session["id"]);
        DataSet ds = new DataSet();
        DataSet dsUsers = new DataSet();
        SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, cn);
        SqlDataAdapter Da1 = new SqlDataAdapter(sqlquery1, cn);
        DataSet Ds1 = new DataSet();
        Da1.Fill(Ds1);
        sqlAdapter.Fill(dsUsers);
        if (Page.IsPostBack == false)
        {
            if (Ds1 != null && Ds1.Tables[0].Rows.Count > 0)
            {
              txtQualification.Text = Ds1.Tables[0].Rows[0].ItemArray[2].ToString();
                    txtPassOut.Text = Ds1.Tables[0].Rows[0].ItemArray[3].ToString();
                    txtExpert.Text = Ds1.Tables[0].Rows[0].ItemArray[4].ToString(); 
                
            }
            
            if (dsUsers != null && dsUsers.Tables[0].Rows.Count > 0)
                {
                    txtCoderID.Text = dsUsers.Tables[0].Rows[0].ItemArray[0].ToString();
                   
                    txtName.Text = dsUsers.Tables[0].Rows[0].ItemArray[3].ToString() + ' ' + dsUsers.Tables[0].Rows[0].ItemArray[5].ToString();
                    txtPhone.Text = dsUsers.Tables[0].Rows[0].ItemArray[7].ToString();
                    txtmail.Text = dsUsers.Tables[0].Rows[0].ItemArray[6].ToString();
                }
                else
                {

                }
            }
        
    }
    protected void lbHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("coder.aspx");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {

            string sqlQuery = "insert into cust_det values('" + txtCoderID.Text + "','" + txtName.Text + "','" + txtQualification.Text + "','" + txtPassOut.Text + "','" + txtExpert.Text + "','" + txtPhone.Text + "','" + txtmail.Text + "')";
            SqlCommand sqlCmd = new SqlCommand(sqlQuery, cn);
            sqlCmd.ExecuteNonQuery();
            Response.Redirect("Coder.aspx");
            Label10.Visible = true;
            Label10.Text = "inserted successfully";

        }
        catch (Exception ex)
        {

        }
    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        try 
        {
          
            
            string sqlquery1 = "update cust_det  set Qualification = '" + txtQualification.Text + "',yearofpassout = '" + txtPassOut.Text + "',Expertin = '" + txtExpert.Text + "' where CoderID = " + txtCoderID.Text;
            SqlCommand sqlcmd1 = new SqlCommand(sqlquery1, cn);
            int i =   sqlcmd1.ExecuteNonQuery();
            if (i > 0)
            {
                Label10.Visible = true;
                Label10.Text = "updated successfully";
               
            }
            else
                Label10.Text = "can't be inserted";
           
           
        }
        catch (Exception ex)
        {
           
        }
    }

}