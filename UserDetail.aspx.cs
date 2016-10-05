using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserEmail"] == null && Session["UserPassword"] == null)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("SignIn.aspx");
        }
        else
        {
            // AddDefaultFirstRecord();
            if (!IsPostBack)
            {

                int temp = GetMaxRecord();
                if (Request.QueryString["Mode"] != null || Request.QueryString["Mode"] != "")
                {
                    if (Request.QueryString["Mode"].ToString() == "Edit")
                    {
                        //if (dtCurrentTable.Rows[0][0].ToString() == "" && gridDetail.Rows.Count != 0)
                        //{
                        //    dtCurrentTable.Rows[0].Delete();
                        //    dtCurrentTable.AcceptChanges();
                        //}
                        btnSave.Text = "Update";
                        hfMode.Value = Request.QueryString["Mode"];
                        hfId.Value = Request.QueryString["UserId"].ToString();
                        GetData(Convert.ToInt32(hfId.Value));
                    }
                    else if (Request.QueryString["Mode"].ToString() == "View")
                    {
                        //if (dtCurrentTable.Rows[0][0].ToString() == "" && gridDetail.Rows.Count != 0)
                        //{
                        //    dtCurrentTable.Rows[0].Delete();
                        //    dtCurrentTable.AcceptChanges();
                        //}
                        btnSave.Visible = false;
                        hfId.Value = Request.QueryString["UserId"].ToString();
                        hfMode.Value = Request.QueryString["Mode"];
                        GetData(Convert.ToInt32(hfId.Value));
                        btnCancel.Text = "Back";
                        //  gridDetail.Columns[2].Visible = false;

                        //  disable(); //text Fields

                    }

                    else
                    {
                        Response.Write("<Script>'Invalid Url'</Script>");
                    }
                }

            }
        }

    }
    public int GetMaxRecord()
    {
        int MaxId = 0;
        DataTable getDataTable = new DataTable();
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            string sql = @"select  ISNULL(MAX(UserId),0)MaxId from inkUser";
            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
                sqlAdapter.Fill(getDataTable);
                MaxId = Convert.ToInt32(getDataTable.Rows[0]["MaxId"]);
                if (MaxId != 0)
                    MaxId++;
                else
                    MaxId = 1;
                sqlAdapter.Dispose();
            }
        }
        catch (Exception exception)
        {
            throw new Exception(string.Format("Error occured while getting User Login: {0}", exception.Message), exception);
        }
        finally
        {
            sqlConnection.Close();
            sqlConnection.Dispose();
        }
        return MaxId;
    }
    public void GetData(int id)
    {
        DataTable getDataTable = new DataTable();

        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);

        try
        {
            string sql = @" select * from inkUser where UserId= '"+id+"'";

            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                // sqlCommand.Parameters.Add();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
                sqlAdapter.Fill(getDataTable);
                //sqlAdapter.Dispose();

                if (getDataTable.Rows.Count > 0)
                {
                    txtFName.Text = getDataTable.Rows[0]["UserFirstName"].ToString();
                    txtLName.Text = getDataTable.Rows[0]["UserLastName"].ToString();
                    txtEmail.Text = getDataTable.Rows[0]["UserEmail"].ToString();
                    ddlGender.SelectedValue = getDataTable.Rows[0]["UserGender"].ToString();
                    ddlCountry.SelectedValue = getDataTable.Rows[0]["UserCountry"].ToString();
                    txtPhone.Text = getDataTable.Rows[0]["UserPhone"].ToString();
                    txtDob.Text = getDataTable.Rows[0]["UserDoB"].ToString();
                    txtDoJoining.Text = getDataTable.Rows[0]["DateOfJoining"].ToString();


                }
            }

        }
        catch (Exception exception)
        {
            throw new Exception(string.Format("Error occured while getting User Login: {0}", exception.Message), exception);
        }
        finally
        {
            sqlConnection.Close();
            sqlConnection.Dispose();
        }
        //return getDataTable;
    }

    public int InsertRecord(string FName, string LName, string Email, string Gender, string Country, string Phone, string DoB)
    {

        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);

        int id = GetMaxRecord();
        try
        {
            {
                // string StudentCode = DateTime.Now.ToString("MM") + DateTime.Now.ToString("yy") + id.ToString("00000");

                string sql = @"insert into inkUser ( UserFirstName, UserLastName, userEmail, UserGender, UserCountry, UserPhone , USerDoB, DateOfJoining) values (@FName,@LName,@Email,@Gender,@Country, @Phone,@DoB,'" + DateTime.Now.ToString() + "')";
                using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
                {
                    sqlConnection.Open();
                    //sqlCommand.Parameters.AddWithValue("@StudentId", id);
                    sqlCommand.Parameters.AddWithValue("@FName", FName);
                    sqlCommand.Parameters.AddWithValue("@LName", LName);
                    sqlCommand.Parameters.AddWithValue("@Email", Email);
                    sqlCommand.Parameters.AddWithValue("@Gender", Gender);
                    sqlCommand.Parameters.AddWithValue("@Country", Country);
                    sqlCommand.Parameters.AddWithValue("@Phone", Phone);
                    sqlCommand.Parameters.AddWithValue("@DoB", DoB);
                    sqlCommand.ExecuteNonQuery();
                }
            }

        }
        catch (Exception)
        {

            throw;
        }
        sqlConnection.Close();

        return id;

    }

    public void UpdateRecord(int UserId, string FName, string LName, string Email, string Gender, string Country, string Phone, string DoB)
    {

        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);

        //   int id = GetMaxRecord();
        try
        {
            {
                // string StudentCode = DateTime.Now.ToString("MM") + DateTime.Now.ToString("yy") + id.ToString("00000");

                string sql = @"update inkUser set UserFirstName =@FName, UserLastName =@LName, userEmail=@Email, UserGender=@Gender, UserCountry=@Country, UserPhone = @Phone, USerDoB= @DoB where UserId=@UserId";
                using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
                {
                    sqlConnection.Open();
                    //sqlCommand.Parameters.AddWithValue("@StudentId", id);
                    sqlCommand.Parameters.AddWithValue("@FName", FName);
                    sqlCommand.Parameters.AddWithValue("@LName", LName);
                    sqlCommand.Parameters.AddWithValue("@Email", Email);
                    sqlCommand.Parameters.AddWithValue("@Gender", Gender);
                    sqlCommand.Parameters.AddWithValue("@Country", Country);
                    sqlCommand.Parameters.AddWithValue("@Phone", Phone);
                    sqlCommand.Parameters.AddWithValue("@DoB", DoB);
                    sqlCommand.ExecuteNonQuery();
                }
            }

        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            sqlConnection.Close();
            ClearFields();
        }




    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        try
        {
            if (txtFName.Text == "" || txtLName.Text == "" || txtPhone.Text == "" || txtEmail.Text == "" || txtDob.Text == "")
            {
                Response.Write("<Script>'Empty Fields***'</Script>");
            }
            else
            {
                if (hfMode.Value == "New")
                {

                    int id = GetMaxRecord();
                    if (!txtFName.Text.Equals("") || !txtEmail.Text.Equals(""))
                    {
                        int StudentId = InsertRecord(txtFName.Text, txtLName.Text, txtEmail.Text, ddlGender.SelectedValue, ddlCountry.SelectedValue, txtPhone.Text, txtDob.Text);


                        Response.Write("<Script>'Inserted'</Script>");
                        Response.Redirect("UserList.aspx");

                    }
                }
                else if (hfMode.Value == "Edit")
                {
                    UpdateRecord(Convert.ToInt32(hfId.Value), txtFName.Text, txtLName.Text, txtEmail.Text, ddlGender.SelectedValue, ddlCountry.SelectedValue, txtPhone.Text, txtDob.Text);
                    //DeleteRecord(Convert.ToInt32(hfId.Value));

                    Response.Write("<Script>'Updated'</Script>");
                    Response.Redirect("UserList.aspx");

                }
                else
                {
                    Response.Write("<Script>'Invalid'</Script>");
                }

            }
        }
        catch (Exception)
        {
            throw;
        }

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ClearFields();
        Response.Redirect("UserList.aspx");
    }

    public void ClearFields()
    {

        txtFName.Text = txtLName.Text = txtEmail.Text = txtPhone.Text = txtDob.Text = txtDoJoining.Text = "";
        ddlCountry.SelectedValue = "-- Country --";
        ddlGender.SelectedValue = "- Gender -";
    }
}

