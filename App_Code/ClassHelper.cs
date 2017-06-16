using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ClassHelper
/// </summary>
public class ClassHelper
{
    public static String imagePath;

	public ClassHelper()
	{
		
	}

    public static String ImageLoader(int id)
    {
         
        try
        {
            
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);

            string sql = @" select i.UserPhoto,u.UserEmail,u.Userid from inkUserDetail i INNER JOIN inkUser u ON i.Userid=u.Userid where i.Userid='"+id+"' and UserPhoto Is Not Null ";

            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                sqlCommand.Parameters.AddWithValue("@UserId", id);
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(sqlCommand);
                da.Fill(ds);
                if (ds.Tables[0].Rows != null)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        //string str
                        FileInfo inf = new FileInfo((dr["UserPhoto"].ToString()));
                        imagePath = "~/UserProfilePictures/" + dr["UserEmail"].ToString() + "_" + dr["UserId"].ToString() + inf.Extension;

                    }
                    return imagePath;
                }

            }
        }
        catch (Exception)
        {
            throw;
        }
        return null;
    }

}