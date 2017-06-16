using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageClass : System.Web.UI.Page
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
                gridList.DataSource = GetAllRecord();
                gridList.DataBind();
            }
        }
    }

    public DataTable GetAllRecord()
    {
        DataTable dt = new DataTable();
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            string sql = @"select * from inkClass where ClassCreatedby='" + Session["UserId"] + "'";
            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
                sqlAdapter.Fill(dt);
                sqlAdapter.Dispose();
            }
        }
        catch (Exception exception)
        {
            throw new Exception(string.Format("Error occured while getting AllRecord: {0}", exception.Message), exception);
        }
        finally
        {
            sqlConnection.Close();
            sqlConnection.Dispose();
        }
        return dt;
    }

    protected void gridList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName.Equals("Edt"))
            {
                Server.Transfer("CreateClass.aspx?Mode=Edit&ClassId=" + id);
            }
            else if (e.CommandName.Equals("View"))
            {
                Server.Transfer("CreateClass.aspx?Mode=View&ClassId=" + id);
            }
            else if (e.CommandName.Equals("Teacher"))
            {
                Response.Redirect("default.aspx?Mode=Teacher&ClassId=" + id);
            }
            else
            {
                Response.Redirect("ClassList.aspx?Mode=ClassList");
            }
        }
        catch (Exception)
        {
            throw;
        }
    }

    protected void gridList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridList.DataSource = GetAllRecord();
        gridList.PageIndex = e.NewPageIndex;
        gridList.DataBind();
    }

    protected void btnMyEnrolledClasses_Click(object sender, EventArgs e)
    {
        Server.Transfer("EnrolledClass.aspx");
    }

}