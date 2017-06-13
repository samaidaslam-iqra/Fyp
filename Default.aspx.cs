using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserEmail"] == null && Session["UserPassword"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Mode"].ToString() == "Start")
                {
                    int id = Convert.ToInt32(Request.QueryString["ClassId"].ToString());
                    dvControls.Attributes["class"] = "hidden";
                    dvControls.Disabled = true;
                    ClassDetail(id);
                }
                else
                {
                    Response.Write("<Script>'Invalid Url'</Script>");
                }
            }
        }
    }
   
    private void ClassDetail(int classId)
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            string sql = "Select ClassName from inkClass where ClassId= '" + classId + "'";

            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                var temp = sqlCommand.ExecuteScalar();
                lblClassName.InnerText = temp.ToString();
            }
        }

        catch (Exception exception)
        {
            throw (exception);
        }
        finally
        {
            sqlConnection.Close();
            sqlConnection.Dispose();
            Response.Write("<Script> alert('Welcome to the Class " + lblClassName.InnerText + "') </Script>");
        }
    }
    

}