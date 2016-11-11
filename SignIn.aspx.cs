using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserEmail"] != null && Session["UserFirstName"] != null)
        {
            Response.Redirect("Dashboard.aspx",false);
        }
    }

    public DataTable Login(string UserEmail, string UserPassword)
    {
        DataTable dt = new DataTable();
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            string query = @"Select UserId, UserFirstName,UserLastName, UserEmail , UserPassword from InkUser where UserEmail=@Email and UserPassword=@Password";
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            sqlcon.Open();
            string encrypted = Encrypt(UserPassword);
            cmd.Parameters.AddWithValue("@Email", UserEmail);
            cmd.Parameters.AddWithValue("@Password", encrypted);
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
                    Session["UserId"] = dt.Rows[0]["UserId"].ToString();
                    Session["UserFirstName"] = dt.Rows[0]["UserFirstName"].ToString();
                    Session["UserLastName"] = dt.Rows[0]["UserLastName"].ToString();
                    Session["UserPassword"] = dt.Rows[0]["UserPassword"].ToString();
                    Session["UserEmail"] = dt.Rows[0]["UserEmail"].ToString();
                    Session.Timeout = 30;
                    Response.Redirect("Dashboard.aspx");
                    Response.Write("<Script>alert('Welcome')</Script>");
                }

                else
                {
                    lbl.Text = "invalid username or password";
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

    string Encryptionkey = "S1A2M3";

    public string Decrypt(string cipherText)
    {

        Byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pbd = new Rfc2898DeriveBytes(Encryptionkey, new Byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x76 });
            encryptor.Key = pbd.GetBytes(32);
            encryptor.IV = pbd.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }

        }

        return cipherText;
    }

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
}
