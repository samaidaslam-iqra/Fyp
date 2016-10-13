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
public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlCountry.Items.Insert(0, "--Select--");
        ddlCountry.DataSource = countryList();
        ddlCountry.DataBind();
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
                               ('" + txtFName.Text + "','" + txtLName.Text + "','" + txtEmail.Text + "','" + encrypted + "','" + ddlGender.SelectedValue.ToString() + "','" + ddlCountry.SelectedValue.ToString() + "', '" + txtPhone.Text + "','" + txtDob.Text + "','" + "2006" + "' )";
                    SqlCommand cmd = new SqlCommand(query, sqlcon);
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();
                }
                Response.Redirect("Dashboard.aspx");
            }
            catch (Exception)
            {
                throw;
            }
        }
    }

    string Encryptionkey = "S1A2M3";

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


}
