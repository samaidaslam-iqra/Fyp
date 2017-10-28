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
    String profileId;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserId"] == null || Session["UserEmail"] == null || Session["UserFirstName"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
        else
        {
            if (Request.QueryString["profileId"] != null)
            {
                profileId = Request.QueryString["profileId"].ToString();
            }
            else
            {
                profileId = Session["UserId"].ToString();
            }
            title.InnerText = Session["UserFirstName"].ToString().ToUpper() + " " + Session["UserLastName"].ToString().ToUpper();
            getGridData();
            getData();
            getDetail();
        }
    }
    public void getDetail()
    {
        DataTable dt = new DataTable();

        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        string sql = "select * from inkUserStat WHERE inkUserStat.UserId =" + profileId + " ";

        using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
        {
            sqlConnection.Open();
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
            sqlAdapter.Fill(dt);
            sqlCommand.ExecuteNonQuery();
        }
        if(dt.Rows.Count != 0){
        lblNoOfActivity.InnerText = dt.Rows[0]["NoOfLinks"].ToString();
        lblNoOfFiles.InnerText = dt.Rows[0]["ExperineceLevel"].ToString();
        lblNoOfLinks.InnerText = dt.Rows[0]["Ranks"].ToString();
        lblRank.InnerText = dt.Rows[0]["Remarks"].ToString();
        }
        sqlConnection.Dispose();
        sqlConnection.Close();
        SqlConnection.ClearPool(sqlConnection);

    }
    public void getData()
    {
        int pid = Convert.ToInt32(profileId);
        String imagepath = ClassHelper.ImageLoader(pid);
        imgCard.Src = imagepath;
        try
        {
            //int id = Master.ids;
            DataTable dt = new DataTable();

            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
            string sql = @"select * from inkUserDetail  WHERE inkUserDetail.UserId =" + profileId + "";

            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                sqlCommand.Parameters.AddWithValue("@UserId", profileId);
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
                sqlAdapter.Fill(dt);
                sqlCommand.ExecuteNonQuery();
            }
            aboutMe.InnerText = dt.Rows[0]["UserAboutMe"].ToString();
            edu.InnerText = Education.InnerText = dt.Rows[0]["UserEducation"].ToString();
            emp.InnerText = dt.Rows[0]["UserEmployement"].ToString();
            string value;

            value = dt.Rows[0]["UserSkills"].ToString();

            string[] separators = { "," };
            string[] words = value.Split(separators, StringSplitOptions.RemoveEmptyEntries);
            int q = words.Length + 1;

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
                }
                else
                {
                }
            }
        }
        catch (Exception)
        {
            throw;
        }
    }
    public void getGridData()
    {
        try
        {
            // int id = Master.ids;
            DataTable dt = new DataTable();

            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
            string sql = "select * from inkFieldsOfInterest  WHERE inkFieldsOfInterest.UserId =" + profileId + "";

            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                sqlCommand.Parameters.AddWithValue("@UserId", profileId);
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
                sqlAdapter.Fill(dt);
                sqlCommand.ExecuteNonQuery();
                gridDetail.DataSource = dt;
                gridDetail.DataBind();
                sqlConnection.Close();
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
    protected void linkbtnEdit1_Click(object sender, EventArgs e)
    {
        Server.Transfer("EditInterest.aspx");
    }
    protected void File_Click(object sender, EventArgs e)
    {
        Response.Redirect("FileServer.aspx?pathId=" + profileId);
    }
}
