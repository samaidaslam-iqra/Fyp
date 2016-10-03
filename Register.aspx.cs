using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
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

        catch (ArgumentException )
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
                    string query = @"insert into inkUser (UserFirstName, UserLastName, UserEmail, UserPassword, UserGender, UserCountry ,UserPhone,UserDoB,DateOfJoining) values
                               ('" + txtFName.Text + "','" + txtLName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + ddlGender.SelectedValue.ToString() + "','" + ddlCountry.SelectedValue.ToString() + "', '" + txtPhone.Text + "','" + txtDob.Text + "','" + "2006" + "' )";
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
}
