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
            if (Session["UserEmail"] == null || Session["UserFirstName"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            else
            {
                p1.InnerText = p2.InnerText = span1.InnerText = Session["UserFirstName"].ToString() + " " + Session["UserLastName"].ToString();
                p2 = p1;

                Label2.Text = "Logged in from :   ";
                Label1.Text = Session["UserEmail"].ToString();
            }
        }
        else
        {

        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Home.aspx");
    }
}