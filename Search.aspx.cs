using System;
using System.Collections.Generic;
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
       //String start = searchUser.Substring(0, searchUser.Length / 2);       
       //String end = searchUser.Substring(searchUser.Length / 2, searchUser.Length - searchUser.Length / 2);
       //Users.InnerText= "Start "+start+" end "+end;

        Users.InnerHtml = "<div class=\"media\"><div class=\"media-left\"><img src=\"Files/date.png\" class=\"media-object\" style=\"width:100px\"></div><div class=\"media-body\"><h4 class=\"media-heading\">"+searchUser+"John Doe</h4><p>Lorem ipsum...</p></div></div>";

    }
}