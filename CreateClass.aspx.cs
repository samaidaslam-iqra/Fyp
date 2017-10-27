using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateClass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserEmail"] == null && Session["UserPassword"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                ClassCateogry();
                if (Request.QueryString["Mode"] != null || Request.QueryString["Mode"] != "")
                {
                    if (Request.QueryString["Mode"].ToString() == "Edit")
                    {
                        btnCreateClass.Text = "Update";
                        hfMode.Value = Request.QueryString["Mode"];
                        hfId.Value = Request.QueryString["ClassId"].ToString();
                        GetData(Convert.ToInt32(hfId.Value));
                    }
                    else if (Request.QueryString["Mode"].ToString() == "New")
                    {
                        //btnCreateClass.Text = "Update";
                        hfMode.Value = Request.QueryString["Mode"];
                        //hfId.Value = Request.QueryString["ClassId"].ToString();
                        //GetData(Convert.ToInt32(hfId.Value));
                    }
                    else if (Request.QueryString["Mode"].ToString() == "View")
                    {
                        btnCreateClass.Visible = false;
                        hfId.Value = Request.QueryString["ClassId"].ToString();
                        hfMode.Value = Request.QueryString["Mode"];
                        GetData(Convert.ToInt32(hfId.Value));
                        btnCancel.Text = "Back";
                        disableFields();
                    }
                    else
                    {
                        Response.Write("<Script>'Invalid Url'</Script>");
                    }
                }
            }
        }
    }

    public void ClassCateogry()
    {
        string str = "Accounts, Finance, Architecture / Interior Design, Banking / Insurance, Content / Journalism, Corporate Planning / Consulting, Engineering Design / R&D, Export / Import / Merchandising, Fashion / Garments , Hotels / Restaurants, HR / Administration / IR, IT Software ,IT Hardware , DBA / Datawarehousing, Marketing / Advertising , Pharma / Biotech / Healthcare / Medical / R&D, Production / Maintenance / Quality, Purchase / Logistics / Supply Chain , Consultants, Site Engineering / Project Management, Teaching / Education, Ticketing / Travel / Airlines, TV / Films / Production, Web / Graphic Design / Visualiser";
        string[] separators = { "," };
        string[] words = str.Split(separators, StringSplitOptions.RemoveEmptyEntries);
        ddlClassCategory.DataSource = words;
        ddlClassCategory.DataBind();

    }

    private void GetData(int id)
    {
        DataTable getDataTable = new DataTable();

        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);

        try
        {
            string sql = @" select * from inkClass where ClassId= '" + id + "'";

            using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
            {
                sqlConnection.Open();
                // sqlCommand.Parameters.Add();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
                sqlAdapter.Fill(getDataTable);
                //sqlAdapter.Dispose();

                if (getDataTable.Rows.Count > 0)
                {
                    txtClassName.Text = getDataTable.Rows[0]["ClassName"].ToString();
                    txtClassDescription.Text = getDataTable.Rows[0]["ClassDescription"].ToString();
                    ddlClassCategory.SelectedValue = getDataTable.Rows[0]["ClassCategory"].ToString();
                    txtStartDate.Text = Convert.ToDateTime(getDataTable.Rows[0]["ClassStartDate"]).ToShortDateString();
                    txtendDate.Text = getDataTable.Rows[0]["ClassEndDate"].ToString();
                    txtClassDays.Text = getDataTable.Rows[0]["ClassDays"].ToString();
                    txtStartTime.Text = getDataTable.Rows[0]["ClassTiming"].ToString();
                    txtEndTime.Text = getDataTable.Rows[0]["ClassTiming"].ToString();
                    //  txtDoJoining.Text = getDataTable.Rows[0]["DateOfJoining"].ToString();
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
    }

    protected void InsertRecord()
    {
        if (Page.IsValid)
        {
            try
            {
                using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString))
                {

                    sqlcon.Open();
                    DateTime date = Convert.ToDateTime(txtStartDate.Text);
                    string s = date.ToShortDateString().ToString();
                    string query = @"insert into inkClass (ClassName, ClassDescription, ClassCategory, ClassCreatedby, ClassStartDate, ClassEndDate , ClassDays ,ClassTiming ) values
                               ('" + txtClassName.Text + "','" + txtClassDescription.Text + "','" + ddlClassCategory.SelectedValue.ToString() + "','" + Session["UserId"] + "','" + txtStartDate.Text + "','" + txtendDate.Text + "', '" + "days " + "','" + txtStartTime.Text + " - " + txtEndTime.Text + "' )";
                    SqlCommand cmd = new SqlCommand(query, sqlcon);
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();
                }

                Response.Write("<Script>alert('Class Created Successully') </Script>");
                txtClassName.Text = txtClassDescription.Text = txtStartDate.Text = txtendDate.Text = txtStartTime.Text = txtEndTime.Text = "";
                ddlClassCategory.ClearSelection();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }

    protected void UpdateRecord(string ClassName, string ClassDescription, string ClassCategory, string ClassStartDate, string ClassEndDate, string ClassDays, string ClassTiming, int ClassId)
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        try
        {
            {
                string sql = @"update inkClass set ClassName=@ClassName, ClassDescription=@ClassDescription, ClassCategory=@ClassCategory, 
                 ClassStartDate=@ClassStartDate, ClassEndDate=@ClassEndDate, ClassDays=@ClassDays, 
                ClassTiming=@ClassTiming where ClassId=@ClassId";
                using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
                {
                    sqlConnection.Open();
                    //sqlCommand.Parameters.AddWithValue("@StudentId", id);
                    sqlCommand.Parameters.AddWithValue("@ClassName", ClassName);
                    sqlCommand.Parameters.AddWithValue("@ClassDescription", ClassDescription);
                    sqlCommand.Parameters.AddWithValue("@ClassCategory", ClassCategory);
                    sqlCommand.Parameters.AddWithValue("@ClassStartDate", ClassStartDate);
                    sqlCommand.Parameters.AddWithValue("@ClassEndDate", ClassEndDate);
                    sqlCommand.Parameters.AddWithValue("@ClassDays", ClassDays);
                    sqlCommand.Parameters.AddWithValue("@ClassTiming", ClassTiming);
                    sqlCommand.Parameters.AddWithValue("@ClassId", ClassId);
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
            //  ClearFields();
        }
    }

    protected void btnCreateClass_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtClassName.Text == "" || txtClassDescription.Text == "" || txtStartDate.Text == "" || txtendDate.Text == "" || txtStartTime.Text == "")
            {
                Response.Write("<Script>'Empty Fields***'</Script>");
            }
            else
            {
                if (hfMode.Value == "New")
                {
                    if (!txtClassName.Text.Equals("") || !txtClassDescription.Text.Equals(""))
                    {
                        InsertRecord();
                        Response.Write("<Script>'Class Created Successfully'</Script>");
                        Response.Redirect("ClassList.aspx?Mode=ClassList");
                    }
                }
                else if (hfMode.Value == "Edit")
                {
                    UpdateRecord(txtClassName.Text, txtClassDescription.Text, ddlClassCategory.SelectedValue, txtStartDate.Text, txtendDate.Text, txtClassDays.Text, txtStartTime.Text + " - " + txtEndTime.Text, Convert.ToInt32(hfId.Value));
                    Response.Write("<Script>'Updated'</Script>");
                    Response.Redirect("ClassList.aspx?Mode=ClassList");
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
        Response.Redirect("ClassList.aspx?Mode=ClassList");
    }

    protected void disableFields()
    {
        btnCreateClass.Enabled = false;
        txtClassDays.Enabled = false;
        txtClassDescription.Enabled = false;
        txtClassName.Enabled = false;
        txtendDate.Enabled = false;
        txtEndTime.Enabled = false;
        txtStartDate.Enabled = false;
        txtStartTime.Enabled = false;
        ddlClassCategory.Enabled = false;
    }
    protected void ClearFields()
    {
        txtClassDays.Text = txtClassDescription.Text =
        txtClassName.Text = txtendDate.Text =
        txtEndTime.Text = txtStartDate.Text =
        txtStartTime.Text = "";
        ddlClassCategory.SelectedIndex =0;
    }
}