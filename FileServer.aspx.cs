using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FileServer : System.Web.UI.Page
{
    string pathId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null || Session["UserEmail"] == null || Session["UserFirstName"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
        else
        {
            if (Request.QueryString["pathId"] != null)
            {
                pathId = Request.QueryString["pathId"].ToString();
            }
            else
            {
                pathId = Session["UserId"].ToString();
            }


            userName.InnerText = Session["UserFirstName"].ToString().ToUpper() + " " + Session["UserLastName"].ToString().ToUpperInvariant();
            //FileUpload1.Visible = false;
            // userPath = "~/Files/" + Session["UserFirstName"].ToString() + " " + Session["UserLastName"].ToString() + "/";
            GridView1.DataSource = getDataTable(pathId);
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/Files/" + pathId + "/") + e.CommandArgument);
            Response.End();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileInfo inf = new FileInfo(FileUpload1.PostedFile.FileName);
            string url = "~/Files/" + Session["UserId"].ToString() + "/";
            if (!(Directory.Exists(Server.MapPath(url))))
            {
                Directory.CreateDirectory(Server.MapPath(url));
            }
            FileUpload1.PostedFile.SaveAs(Server.MapPath(url + inf));
            insertToDb(Session["UserId"].ToString(), inf.Name.ToString(), inf.Extension.ToString(), url + inf);
        }
        getDataTable(Session["UserId"].ToString());

    }

    private DataTable getDataTable(string id)
    {
        string url = "~/Files/" + id + "/";
        DataTable dt = new DataTable();
        dt.Columns.Add("File");
        dt.Columns.Add("Size");
        dt.Columns.Add("Type");
        foreach (string strfile in Directory.GetFiles(Server.MapPath(url)))
        {
            FileInfo fi = new FileInfo(strfile);
            double ss = Convert.ToDouble(fi.Length) / 1048576;
            dt.Rows.Add(fi.Name, Math.Round(ss,2).ToString()+" MB", GetFileTypeByExtension(fi.Extension));

        } GridView1.DataSource = dt;
        GridView1.DataBind();
        //DataTable dt = new DataTable();
        //SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        //try
        //{
        //    string sql = @"select * from inkFile where UploadId =" + id + "";
        //    using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
        //    {
        //        sqlConnection.Open();
        //        SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
        //        sqlAdapter.Fill(dt);
        //        sqlAdapter.Dispose();
        //    }
        //}
        //catch (Exception exception)
        //{
        //    throw new Exception(string.Format("Error occured while getting AllRecord: {0}", exception.Message), exception);
        //}
        //finally
        //{
        //    sqlConnection.Close();
        //    sqlConnection.Dispose();
        //}

        //foreach (DataRow dr in dt.Rows)
        //{
        //    userPath = dr["FileUrl"].ToString();
        //} 
        return dt;

    }

    private void insertToDb(string id, string name, string type, string url)
    {
        try
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString))
            {
                sqlcon.Open();
                string query = @"insert into inkFile (UploadedBy,FileName,FileType, FileUrl) values(@UploadedBy, @FileName, @FileType, @FileUrl)";
                SqlCommand sqlCommand = new SqlCommand(query, sqlcon);
                sqlCommand.Parameters.AddWithValue("@UploadedBy", id);
                sqlCommand.Parameters.AddWithValue("@FileName", name);
                sqlCommand.Parameters.AddWithValue("@FileType", type);
                sqlCommand.Parameters.AddWithValue("@FileUrl", url);
                sqlCommand.ExecuteNonQuery();
                sqlcon.Close();
            }
        }
        catch (Exception)
        {
            throw;
        }
    }

    private String GetFileTypeByExtension(string fileExtension)
    {
        switch (fileExtension.ToLower())
        {
            case ".docx":
            case ".doc": return "Microsoft Word Document";
            case ".xlsx":
            case ".xls": return "Microsoft Excel Document";
            case ".pdf": return "Adobe Pdf Document";
            case ".txt": return "Text Document";
            case ".jpg":
            case ".gif":
            case ".png": return "Image";
            default: return "Unknown";
        }

    }
}