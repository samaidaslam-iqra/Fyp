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

public partial class Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserId"] == null || Session["UserEmail"] == null || Session["UserFirstName"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            else
            {

                hfId.Value = (Session["UserId"].ToString());
                p1.InnerText = p2.InnerText = span1.InnerText = Session["UserFirstName"].ToString() + " " + Session["UserLastName"].ToString();
                p2 = p1;
                ImageLoader();
            }
        }
        else
        {

        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("SignIn.aspx");
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {


        int length = FileUpload1.PostedFile.ContentLength;
        byte[] UserPhoto = new byte[length];


        FileUpload1.PostedFile.InputStream.Read(UserPhoto, 0, length);


        try
        {
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
            int UserId = Convert.ToInt32(hfId.Value);
            string sql = @"INSERT INTO inkUserDetail(inkUserDetail.UserId ,UserPhoto) SELECT  @UserId ,@UserPhoto  FROM inkUser
 WHERE inkUser.UserId = @UserId";

            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                sqlCommand.Parameters.AddWithValue("@UserId", UserId);
                sqlCommand.Parameters.AddWithValue("@UserPhoto", UserPhoto);
                sqlCommand.ExecuteNonQuery();
            }
            Response.Write("<Script>alert('Uploaded Successully') </Script>");
            FileUpload1.Dispose();
        }
        catch (Exception)
        {
            throw;
        }

    }

    protected void ImageLoader()
    {
             try
        {
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
            int UserId = Convert.ToInt32(hfId.Value);
            string sql = @"  select Top 1 UserPhoto from inkUserDetail where Userid= @UserId";

            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                byte[] imgByte = null;
                sqlConnection.Open();
                sqlCommand.Parameters.AddWithValue("@UserId", UserId);
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(sqlCommand);
                da.Fill(ds);
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    imgByte = (byte[])(dr["UserPhoto"]);
                    string str = Convert.ToBase64String(imgByte);
                    userImage1.Src = "data:Image/png;base64," + str;
                    userImage2.Src = userImage3.Src = userImage1.Src;
                }

            }

        }
        catch (Exception)
        {
            throw;
        }


    }
}
