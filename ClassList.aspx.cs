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
                if (Request.QueryString["Mode"].ToString() == "joined")
                {
                    Response.Write("<Script> alert('You Have Successfully Enrolled') </Script>");
                    gridList.DataSource = GetAllRecord();
                    gridList.DataBind();
                }
                else if (Request.QueryString["Mode"].ToString() == "ClassList")
                {
                    if (isJoined())
                    {
                        gridList.DataSource = GetAllRecord();
                        gridList.DataBind();
                    }

                }
            }
        }
    }

    private Boolean isJoined()
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            string sql = "Select * from inkjoinedClasses where StudentId= '" + Session["UserId"] + "'";

            //     string sql = @"select * from inkClass where ClassCreatedBy Not IN ('" + Session["UserId"] + "')";
            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                var temp = sqlCommand.ExecuteScalar();
                if (temp != null) {
                    return true;
                }
            }
            return false;
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

        return false;

    }

    public DataTable GetAllRecord()
    {
        DataTable dt = new DataTable();
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            string sql = "Select * FROM inkclass Where classid not in(select classid from inkJoinedClass where StudentId= '" + Session["UserId"] + "') and Classcreatedby not in ('" + Session["UserId"] + "')";

            //     string sql = @"select * from inkClass where ClassCreatedBy Not IN ('" + Session["UserId"] + "')";
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
            if (e.CommandName.Equals("join"))
            {
                joinClass(Convert.ToInt32(Session["UserId"]), ClassId);

                Response.Redirect("ClassList.aspx?Mode=joined&ClassId=" + ClassId);
            }
            else if (e.CommandName.Equals("View"))
            {
                Response.Redirect("CreateClass.aspx?Mode=View&ClassId=" + ClassId);
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

    protected void btnMyClasses_Click(object sender, EventArgs e)
    {
        Server.Transfer("ManageClass.aspx");
    }

    protected void btnMyEnrolledClasses_Click(object sender, EventArgs e)
    {
        Server.Transfer("EnrolledClass.aspx?Mode=ClassList");
    }

    protected void joinClass(int studentId, int classId)
    {
        try
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString))
            {
                sqlcon.Open();
                string query = @"insert into inkJoinedClass (studentId ,ClassId )values
                               ('" + studentId + "','" + classId + "' )";
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