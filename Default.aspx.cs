using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlCountry.Items.Insert(0, "--Select--");
            ddlCountry.DataSource = countryList();
            ddlCountry.DataBind();
            ddlMonth.DataSource =  DateTimeFormatInfo.CurrentInfo.MonthNames;
            
            ddlMonth.DataBind();
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


    public string Concate(string mm, string dd, string yyyy)
    {
        string res = mm + " - " + dd + " - " + yyyy;
        return res;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            lbl1.Text = ddlMonth.SelectedIndex.ToString();//Concate(ddlMonth.SelectedValue.ToString(), ddlDay.SelectedValue.ToString(), ddlyear.SelectedValue.ToString());
        }

        catch (Exception)
        {
            throw;
        }
    }
}