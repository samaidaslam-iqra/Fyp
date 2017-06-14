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
    String userPath;
    String File;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null || Session["UserEmail"] == null || Session["UserFirstName"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }


        userName.InnerText = Session["UserFirstName"].ToString() + " " + Session["UserLastName"].ToString();
        //FileUpload1.Visible = false;
        userPath = "~/Files/" + Session["UserFirstName"].ToString() + " " + Session["UserLastName"].ToString() + "/";

        if (!(Directory.Exists(Server.MapPath(userPath))))
        {
            Directory.CreateDirectory(Server.MapPath(userPath));
        }
        
        getDataTable();
    }
  
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath(userPath) + e.CommandArgument);
            Response.End();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)   {
            FileUpload1.PostedFile.SaveAs(Server.MapPath(userPath) + FileUpload1.FileName);
        }
        //insertToDb();
        getDataTable();
    }

    private void getDataTable()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("File");
        dt.Columns.Add("Size");
        dt.Columns.Add("Type");
        foreach (string strfile in Directory.GetFiles(Server.MapPath(userPath)))
        {
           FileInfo fi = new FileInfo(strfile);
            dt.Rows.Add(fi.Name, fi.Length.ToString(), GetFileTypeByExtension(fi.Extension));
                 
        } GridView1.DataSource = dt;
        GridView1.DataBind();
        
        
    }

    private void insertToDb()
    {
    //     try  {
    //        using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString))
    //        {
    //            sqlcon.Open();
    //          //  string query = @"insert into inkFile (UploadedBy,FileName,FileType) values('" + Session["UserId"].ToString() + "','" + userPath + "','"++"' )";
    //            SqlCommand cmd = new SqlCommand(query, sqlcon);
    //            cmd.ExecuteNonQuery();
    //            sqlcon.Close();
    //        }
    //    }
    //    catch (Exception)
    //    {
    //        throw;
    //    }
    }    
    
    

    private String GetFileTypeByExtension(string fileExtension)
    {
        switch (fileExtension.ToLower())
        {
            case ".docx":
            case ".doc": return "Microsoft Word Document";
            case ".xlsx":
            case ".xls": return "Microsoft Excel Document";
            case ".txt": return "Text Document";
            case ".jpg":
            case ".png": return "Image";
            default: return "Unknown";
        }

    }
}