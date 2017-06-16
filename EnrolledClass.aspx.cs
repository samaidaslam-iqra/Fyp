using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class EnrolledClass : System.Web.UI.Page
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
                if (Request.QueryString["Mode"].ToString() == "cancel")
                {
                    Response.Write("<Script> alert('You Have left the Class.') </Script>");
                    gridList.DataSource = GetAllRecord();
                    gridList.DataBind();
                }
                else if (Request.QueryString["Mode"].ToString() == "ClassList")
                {
                    gridList.DataSource = GetAllRecord();
                    gridList.DataBind();
                }
                else
                {
                    Response.Redirect("ClassList.aspx?Mode=ClassList");
                }
            }
        }
    }

    public DataTable GetAllRecord()
    {
        DataTable dt = new DataTable();
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            string sql = "Select c.classId, c.ClassName , c.ClassDescription ,c.ClassStartDate, c.ClassEndDate, c.ClassDays, c.ClassCategory FROM inkclass as c , inkJoinedClasses as j Where c.classid =j.ClassId and j.StudentId=  '" + Session["UserId"] + "'  ";

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
            int ClassId = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName.Equals("cancel"))
            {
                CancelClass(Convert.ToInt32(Session["UserId"]), ClassId);

                Response.Redirect("EnrolledClass.aspx?Mode=ClassList");
            }
            else if (e.CommandName.Equals("start"))
            {
                Response.Redirect("Default.aspx?Mode=Start&ClassId=" + ClassId);
            }
            else
            {
                Response.Write("<Script>'Invalid Url'</Script>");
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

    protected void CancelClass(int StudentId, int ClassId)
    {
        try
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString))
            {
                sqlcon.Open();
                string query = @"Delete from inkJoinedClasses where classid='" + ClassId + "' and studentid='" + StudentId + "';";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
        }
        catch (Exception)
        {
            throw;
        }
    }

}