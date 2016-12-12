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
            }
            aboutMe.InnerText = dt.Rows[0]["UserAboutMe"].ToString();
            Education.InnerText = dt.Rows[0]["UserEducation"].ToString();
            Employee.InnerText = dt.Rows[0]["UserEmployement"].ToString();
            // sp1.InnerText = dt.Rows[0]["UserSkills"].ToString();
            string value;

            value = dt.Rows[0]["UserSkills"].ToString();

            string[] separators = { "," };
            string[] words = value.Split(separators, StringSplitOptions.RemoveEmptyEntries);
            int q = words.Length + 1;
            ////if (words[0] == null || words[0] == "")
            ////{
            ////    sp1.InnerText = sp2.InnerText = sp3.InnerText = sp4.InnerText = sp5.InnerText = "Skills";
            ////}
            foreach (var word in words)
            {
                if (q > 1)
                {
                    sp1.InnerText = word;
                    q--;
                }
                if (q > 1)
                {
                    sp2.InnerText = words[1];
                    q--;
                }
                if (q > 1)
                {
                    sp3.InnerText = words[2];
                    q--;
                }
                if (q > 1)
                {
                    sp4.InnerText = words[3];
                    q--;
                }
                if (q > 1)
                {
                    sp5.InnerText = words[4];
                    q--;
                }
                else if (q == 0)
                {
                    Response.Redirect("about.aspx");
                }
                else
                {

                }
            }


            //  sp2.InnerText = dt.Rows[0]["UserSkills"].ToString().Substring(1, dt.Rows[0]["UserSkills"].ToString().IndexOf(",") + 2);
            //sp1.InnerText = dt.Rows[0]["UserSkills"].ToString().Split(',').First();
            //sp2.InnerText = dt.Rows[0]["UserSkills"].ToString().Split(',').Last();
            //}//


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
    protected void linkbtnEdit1_Click(object sender, EventArgs e)
    {
        Server.Transfer("EditDetails.aspx");
    }
}
