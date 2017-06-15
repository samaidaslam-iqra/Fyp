using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        getSearchUsers();
       
    }

    private void getSearchUsers()
    {

       String searchUser = Request.QueryString["User"].ToString();        
       String start = searchUser.Substring(0, searchUser.Length / 2);       
       String end = searchUser.Substring(searchUser.Length / 2, searchUser.Length - searchUser.Length / 2);
       String data= "Start "+start+" end "+end;

       DataTable dt = new DataTable();
       SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
       try {
           string sql = "select * from inkUser where UserFirstName LIKE '%" + start + "%' OR UserLastName Like '%" + end + "%'";

           //string sql = "select * from inkUser";

           //string sql = @"select * from inkClass where ClassCreatedBy Not IN ('" + Session["UserId"] + "')";
           using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))           {
               sqlConnection.Open();
               SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
               sqlAdapter.Fill(dt);
               sqlAdapter.Dispose();
           }
       }
       catch (Exception exception)  {
           throw new Exception(string.Format("Error occured while getting AllRecord: {0}", exception.Message), exception);
       }
       finally  {
           sqlConnection.Close();
           sqlConnection.Dispose();
       }

       
        foreach (DataRow dr in dt.Rows) {
            //Users.InnerHtml = Users.InnerHtml+"<div class=\"row\"><div class=\"jumbotron\">hello</div></div>";

            String img = getUserPhoto(dr["UserId"].ToString(), dr["UserEmail"].ToString());
            Users.InnerHtml = Users.InnerHtml + "<div class=\"container\" ><div class=\"row well col-lg-10\" ><div class=\"media\" ><div class=\"media-left\"><img src=" + img + " class=\"media-object\" style=\"width:100px\"></div><div class=\"media-body\"><h4 class=\"media-heading\">" + dr["UserFirstName"].ToString() + " " + dr["UserLastName"] + "</h4><p>Lorem ipsum...</p><h2><a class = \"btn btn-info pull-right\"href=\"UserProfile.aspx\">View Profile</a></h2></div></div></div></div>";

        
        }

     }

    private String getUserPhoto(String id,String email)
    {
        string fileName ="/UserProfilePictures/"+email+"_"+id+".png ";
         
      
        return fileName;

    }
    
}