using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            getData();
        }

    }

    protected void btnEditDetails_Click(object sender, EventArgs e)
    {
        try
        {
            int id = Master.ids;
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
            string sql = @"Update inkUserDetail set UserId=@UserId, UserAboutMe=@UserAboutMe, UserEducation=@UserEducation, UserEmployement=@UserEmp ,Userskills=@UserSkills WHERE inkUserDetail.UserId = @UserId";
            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                sqlCommand.Parameters.AddWithValue("@UserId", id);
                sqlCommand.Parameters.AddWithValue("@UserAboutMe", txtAboutMe.Text);
                sqlCommand.Parameters.AddWithValue("@UserEducation", txtEducation.Text);
                sqlCommand.Parameters.AddWithValue("@UserEmp", txtEmployee.Text);
                sqlCommand.Parameters.AddWithValue("@UserSkills", txtSkills.Text);
                sqlCommand.ExecuteNonQuery();
                Server.Transfer("UserProfile.Aspx");
            }
        }
        catch (Exception)
        {

            throw;
        }
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
            txtAboutMe.Text = dt.Rows[0]["UserAboutMe"].ToString();
            txtEducation.Text = dt.Rows[0]["UserEducation"].ToString();
            txtEmployee.Text = dt.Rows[0]["UserEmployement"].ToString();
            txtSkills.Text = dt.Rows[0]["UserSkills"].ToString();
        }
        catch (Exception)
        {
            throw;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Server.Transfer("UserProfile.aspx");
    }
}