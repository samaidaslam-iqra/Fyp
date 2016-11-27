using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getData();
    }

    public void getData()
    {
        try
        {
            int id = Master.ids;
            DataTable dt = new DataTable();

            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
            string sql = @"select * from inkUserDetail  WHERE inkUserDetail.UserId = @UserId";
            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                sqlCommand.Parameters.AddWithValue("@UserId", id);
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
                sqlAdapter.Fill(dt);
                sqlCommand.ExecuteNonQuery();
                aboutMe.InnerText = dt.Rows[0]["UserAboutMe"].ToString();
                Education.InnerText = dt.Rows[0]["UserEducation"].ToString();
                Employee.InnerText = dt.Rows[0]["UserEmployement"].ToString();

                string[] separators = { ",", ".", "!", "?", ";", ":" ," "};
                string value = dt.Rows[0]["UserSkills"].ToString();
                string[] words = value.Split(separators, StringSplitOptions.RemoveEmptyEntries);
                foreach (var word in words)
                {
                    if (!words.Equals("") || words != null)
                    {
                        sp1.InnerText = words[0];

                        if (!words.Equals("") || words != null)
                        {
                            sp2.InnerText = words[1];
                        }
                        if (!words.Equals("") || words != null)
                        {
                            sp3.InnerText = words[2];
                        }
                        if (!words.Equals("") || words != null)
                        {
                            sp4.InnerText = words[3];
                        }
                        if (!words.Equals("") || words != null)
                        {
                            sp5.InnerText = words[4];
                        }
                    }
                    else
                    {
                    }
                }

                //sp1.InnerText = dt.Rows[0]["UserSkills"].ToString().Substring(0, dt.Rows[0]["UserSkills"].ToString().IndexOf(",") + 1);
                //  sp2.InnerText = dt.Rows[0]["UserSkills"].ToString().Substring(1, dt.Rows[0]["UserSkills"].ToString().IndexOf(",") + 2);
                //sp1.InnerText = dt.Rows[0]["UserSkills"].ToString().Split(',').First();
                //sp2.InnerText = dt.Rows[0]["UserSkills"].ToString().Split(',').Last();
            }

        }
        catch (Exception)
        {
            throw;
        }
    }
    protected void linkbtnEdit_Click(object sender, EventArgs e)
    {
        Server.Transfer("EditDetails.aspx");
    }
}