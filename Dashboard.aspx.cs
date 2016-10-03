using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserEmail"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            else
            {
                Label2.Text = "Logged in as :   ";
                Label1.Text = Session["UserEmail"].ToString();
                           }
        }
        else
        {
            Response.Write("<Script>alert('byee !')</Script>");
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Home.aspx");
    }
}