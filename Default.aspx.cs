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
    public static String name;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserEmail"] == null && Session["UserPassword"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
        else
        {
            name = Session["UserFirstName"].ToString() + " " + Session["UserLastName"].ToString();
            displayname.InnerText = Session["UserFirstName"].ToString() + " " + Session["UserLastName"].ToString();
            if (!IsPostBack)
            {
                if (Request.QueryString["Mode"].ToString() == "Start")
                {
                    int id = Convert.ToInt32(Request.QueryString["ClassId"].ToString());
                    ClassDetail(id);
                }
                else if (Request.QueryString["Mode"].ToString() == "Teacher")
                {
                    int id = Convert.ToInt32(Request.QueryString["ClassId"].ToString());
                    ClassDetail(id);
                }
                else
                {
                    Response.Redirect("ClassList.aspx?Mode=ClassList");
                }
            }
        }
    }

    public static String getSessionName()
    {
        String newname = name;
        return newname;
    }

    private void ClassDetail(int classId)
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            string sql = "Select ClassName  from inkClass where ClassId= '" + classId + "'";
            string sql1 = "Select ClassCreatedby  from inkClass where ClassId= '" + classId + "'";
            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                var temp = sqlCommand.ExecuteScalar();
                lblClassName.InnerText = temp.ToString();
                sqlConnection.Close();
            }

            using (SqlCommand sqlCommand1 = new SqlCommand(sql1, sqlConnection))
            {
                sqlConnection.Open();
                var TeacherId = sqlCommand1.ExecuteScalar();
                if (Convert.ToInt32(TeacherId) != Convert.ToInt32(Session["UserId"]))
                {
                    dvControls.Attributes["Class"] = "hidden";
                    dvControls.Disabled = true;
                }

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
            // Response.Write("<Script> alert('Welcome to the Class " + lblClassName.InnerText + "') </Script>");

        }
    }


}