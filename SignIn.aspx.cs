using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public DataTable Login(string UserEmail, string UserPassword)
    {
        DataTable dt = new DataTable();
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            string query = @"Select UserEmail , UserPassword from InkUser where UserEmail=@Email and UserPassword=@Password";
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            sqlcon.Open();
            cmd.Parameters.AddWithValue("@Email", UserEmail);
            cmd.Parameters.AddWithValue("@Password", UserPassword);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            sqlcon.Dispose();
            sqlcon.Close();
        }
        return dt;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (!string.IsNullOrWhiteSpace(txtEmail.Text) && !string.IsNullOrEmpty(txtPassword.Text))
            {
                DataTable dt = Login(txtEmail.Text, txtPassword.Text);
                if (dt.Rows.Count > 0)
                {
                    Session["UserPassword"] = dt.Rows[0]["UserPassword"].ToString();
                    Session["UserEmail"] = dt.Rows[0]["UserEmail"].ToString();
                    Session.Timeout = 30;
                    Response.Redirect("Dashboard.aspx");
                    Response.Write("<Script>alert('Welcome')</Script>");
                }

                else
                {
                    Response.Write("<Script>alert('WRONG Email OR Password!') </Script>");
                }
            }

            else
            {
                Response.Write("<Script>alert('Empty Fields!') </Script>");
            }
        }
        catch (Exception)
        {
            throw;
        }

    }
}