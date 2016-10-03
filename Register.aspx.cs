using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    public void SendConfirmation(string email)
    {
        try
        {
            MailMessage mm = new MailMessage("hotmailoutlook807@gmail.com", email);//sender reciver
            mm.Subject = "Ink Online Volunteer Academy Registeration Successful";
            mm.Body = txtFName.Text + "  " + "  Thank You For Registering at INk.";
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            smtp.UseDefaultCredentials = false;
            NetworkCred.UserName = "hotmailoutlook807@gmail.com";
            NetworkCred.Password = "732873abc";
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);

        }
        catch (Exception)
        {
            throw;
        }

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString))
            {
                sqlcon.Open();
                string query = @"insert into inkUser (UserFirstName, UserLastName, UserEmail, UserPassword, UserGender, UserCountry ,UserPhone,UserDoB,DateOfJoining) values
                ('" + txtFName.Text + "','" + txtLName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + ddlGender.SelectedValue.ToString() + "','" + ddlCountry.SelectedValue.ToString() + "', '" + txtPhone.Text + "','" + txtDob.Text + "','" + DateTime.Now.ToString() + "' )";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.ExecuteNonQuery();
            }
            Session["UserPassword"] = txtPassword.Text;
            Session["UserEmail"] = txtEmail.Text;
            Session.Timeout = 30;
            SendConfirmation(txtEmail.Text);
            Response.Redirect("Dashboard.aspx");
            Session.RemoveAll();
        }
        catch (Exception)
        {
            throw;
        }
    }

}