using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using System.Data;
using System.Net.Mail;
public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            Page.Validate();
        }
        else if (!IsPostBack)
        {
            ddlCountry.Items.Insert(0, "--Select--");
            ddlCountry.DataSource = countryList();
            ddlCountry.DataBind();
        }
    }

    public static List<string> countryList()
    {
        try
        {
            List<string> countries = new List<string>();
            CultureInfo[] getCultureInfo = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
            foreach (CultureInfo getCulture in getCultureInfo)
            {
                RegionInfo getRegionInfo = new RegionInfo(getCulture.Name);
                if (!(countries.Contains(getRegionInfo.EnglishName)))
                {
                    countries.Add(getRegionInfo.EnglishName);
                }
            }
            countries.Sort();
            return countries;
        }

        catch (ArgumentException)
        {

            throw;
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString))
                {
                    sqlcon.Open();
                    string encrypted = Encrypt(txtPassword.Text);
                    string query = @"insert into inkUser (UserFirstName, UserLastName, UserEmail, UserPassword, UserGender, UserCountry ,UserPhone,UserDoB,DateOfJoining) values
                               ('" + txtFName.Text + "','" + txtLName.Text + "','" + txtEmail.Text + "','" + encrypted + "','" + ddlGender.SelectedValue.ToString() + "','" + ddlCountry.SelectedValue.ToString() + "', '" + txtPhone.Text + "','" + txtDob.Text + "','" + DateTime.UtcNow + "' )";
                    SqlCommand cmd = new SqlCommand(query, sqlcon);
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();
                }
                //  SendMessage(txtEmail.Text);

                createEntry();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }

    public void createEntry()
    {
        int userId;
        try
        {
            DataTable dt = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString))
            {

                sqlcon.Open();

                string query1 = "select  UserId , UserFirstName ,UserLastName,UserPassword ,UserEmail from InkUser where UserId=(select MAX(UserId) as UserId from inkUser)";
                SqlCommand cmd1 = new SqlCommand(query1, sqlcon);
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(cmd1);
                sqlAdapter.Fill(dt);
                userId = Convert.ToInt32(dt.Rows[0]["UserId"]);
                cmd1.ExecuteNonQuery();

                string query = "insert into inkUserDetail (UserId , UserAboutMe, UserEducation, UserEmployement , UserSkills, UserPhoto) values( '" + userId + "' , null , null , null , null , null )";

                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }

            Session["UserId"] = userId;
            Session["UserFirstName"] = dt.Rows[0]["UserFirstName"].ToString();
            Session["UserLastName"] = dt.Rows[0]["UserLastName"].ToString();
            Session["UserPassword"] = dt.Rows[0]["UserPassword"].ToString();
            Session["UserEmail"] = dt.Rows[0]["UserEmail"].ToString();
            Session.Timeout = 30;
            Response.Redirect("Dashboard.aspx");
        }
        catch (Exception)
        {
            throw;
        }
    }

    static string Encryptionkey = "S1A2M3";

    public string Encrypt(string originalText)
    {

        byte[] originalbytes = Encoding.Unicode.GetBytes(originalText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(Encryptionkey, new Byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(originalbytes, 0, originalbytes.Length);
                    cs.Close();
                }
                originalText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return originalText;

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string UserEmail = args.Value;
        using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(@"SELECT * FROM InkUser WHERE UserEmail=@UserEmail", sqlcon);
            cmd.Parameters.AddWithValue("@UserEmail", UserEmail);
            sqlcon.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

    }

    protected void SendMessage(string UserEmail)
    {
        MailMessage mm = new MailMessage("sa.imam@hotmail.com", UserEmail);//sender reciver
        mm.IsBodyHtml = true;
        mm.Subject = "Ink Online Volunteer Academy";
        mm.Body = "<br/>" + "Dear  " + txtFName.Text + " ," + " <br/> Thank You For Using Ink." + "<br />";
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.live.com";
        smtp.EnableSsl = true;
        System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();

        smtp.UseDefaultCredentials = false;
        NetworkCred.UserName = "sa.imam@hotmail.com";
        NetworkCred.Password = "732873abC";

        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.Send(mm);

    }
}
