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
    public int UserId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserId"] == null || Session["UserEmail"] == null || Session["UserFirstName"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }

            else
            {
                FileUpload1.Attributes["onchange"] = "UploadFile(this)";
                hfId.Value = (Session["UserId"].ToString());
                p1.InnerText = p2.InnerText = span1.InnerText = Session["UserFirstName"].ToString() + " " + Session["UserLastName"].ToString();
                p2 = p1;
                ImageLoader(Convert.ToInt32(Session["UserId"]));
            }

        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();

        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("SignIn.aspx");
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UserProfilePictures/") + Session["UserFirstName"].ToString() + Session["UserLastName"].ToString() + FileUpload1.PostedFile.FileName);
                SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
                UserId = Convert.ToInt32(hfId.Value);
                string sql = @"Update inkUserDetail set UserPhoto=@Userphoto WHERE inkUserDetail.UserId = @UserId";

                using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
                {
                    sqlConnection.Open();
                    sqlCommand.Parameters.AddWithValue("@UserId", UserId);
                    sqlCommand.Parameters.AddWithValue("@UserPhoto", FileUpload1.PostedFile.FileName);
                    sqlCommand.ExecuteNonQuery();
                }
                Response.Write("<Script>alert('Uploaded Successully') </Script>");
                FileUpload1.Dispose();
                Response.Redirect(Request.RawUrl);
            }
            catch (Exception)
            {
                throw;
            }
        }
        else
        {
            Response.Write("<Script>alert('invalid') </Script>");
        }
    }

    protected void ImageLoader(int id)
    {
        try
        {
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
            UserId = Convert.ToInt32(hfId.Value);
            string sql = @"  select UserPhoto from inkUserDetail where Userid= @UserId and UserPhoto Is Not Null ";

            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                sqlCommand.Parameters.AddWithValue("@UserId", UserId);
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(sqlCommand);
                da.Fill(ds);
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    string str = (dr["UserPhoto"].ToString());
                    userImage1.Src = "~/UserProfilePictures/" + Session["UserFirstName"].ToString() + Session["UserLastName"].ToString() + str;
                    userImage2.Src = userImage3.Src = userImage1.Src;
                }
            }
        }
        catch (Exception)
        {
            throw;
        }
    }

    public Int32 ids
    {
        get { return Convert.ToInt32(Session["UserId"]); }
    }
}
