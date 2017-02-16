using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditInterest : System.Web.UI.Page
{
    DataTable dtCurrentTable = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

        //     AddDefaultFirstRecord();
        //   getGridData();
        if (!IsPostBack)
    
        {
            //   getGridData();
            FeildOfinterst();
        }
    }

    //public DataTable getGridData()
    //{
    //    try
    //    {
    //        int id = Master.ids;
    //        DataTable dt = new DataTable();

    //        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
    //        string sql = @"select * from inkFieldsOfInterest  WHERE inkFieldsOfInterest.UserId = @UserId";

    //        using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
    //        {
    //            sqlConnection.Open();
    //            sqlCommand.Parameters.AddWithValue("@UserId", id);
    //            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommand);
    //            sqlAdapter.Fill(dt);
    //            sqlCommand.ExecuteNonQuery();
    //            gridDetail.DataSource = dt;
    //            gridDetail.DataBind();
    //            return dt;
    //        }
    //    }

    //    catch (Exception)
    //    {
    //        throw;
    //    }
    //}

    protected void btnAddInterest_Click(object sender, EventArgs e)
    {
        btnCancel.Text = hf1.Value.ToString();
       // btnCancel.Text= result.InnerText.ToString() ;
        //    DataTable dtCurrentTable = (DataTable)ViewState["EditInterest"];
        //    DataRow drCurrentRow = dtCurrentTable.NewRow();
        ////    drCurrentRow["FieldType"] = ddlFieldType.SelectedValue.ToString();
        //    //  drCurrentRow["FieldName"] = txtFeildName.Text;

        //    if (dtCurrentTable.Rows[0][0].ToString() == "" && gridDetail.Rows.Count != 0)
        //    {
        //        dtCurrentTable.Rows[0].Delete();
        //        dtCurrentTable.AcceptChanges();
        //    }
        //    dtCurrentTable.Rows.Add(drCurrentRow);
        //    ViewState["EditInterest"] = dtCurrentTable;
        //    gridDetail.DataSource = dtCurrentTable;
        //    gridDetail.DataBind();
    }

    //private void AddDefaultFirstRecord()
    //{
    //    if (ViewState["EditInterest"] == null)
    //    {

    //        DataRow dr;
    //        dtCurrentTable.TableName = "EditInterest";
    //        dtCurrentTable.Columns.Add(new DataColumn("FieldType", typeof(string)));
    //        //  dtCurrentTable.Columns.Add(new DataColumn("FieldName", typeof(string)));

    //        dr = dtCurrentTable.NewRow();
    //        dtCurrentTable.Rows.Add(dr);

    //        ViewState["EditInterest"] = dtCurrentTable;
    //        if (dtCurrentTable.Rows[0][0].ToString() == "" && gridDetail.Rows.Count != 0)
    //        {
    //            dtCurrentTable.Rows[0].Delete();
    //            dtCurrentTable.AcceptChanges();
    //        }
    //        gridDetail.DataSource = dtCurrentTable;
    //        gridDetail.DataBind();
    //    }

    //    else
    //        dtCurrentTable = (DataTable)ViewState["EditInterest"];
    //}

    protected void gridDetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //    dtCurrentTable.Rows.RemoveAt(e.RowIndex);
        //    gridDetail.DataSource = dtCurrentTable;
        //    gridDetail.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    int id = Master.ids;
        //    int ind = 0;
        //    SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        //    sqlConnection.Open();
        //    for (ind = 0; ind < gridDetail.Rows.Count; ind++)
        //    {
        //        string sql = @"insert into inkFieldsOfInterest(FieldType    ,UserId) values(@FieldType,     @UserId)";
        //        using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
        //        {
        //            sqlCommand.Parameters.AddWithValue("@FieldType", gridDetail.Rows[ind].Cells[0].Text);
        //            //sqlCommand.Parameters.AddWithValue("@FieldName", gridDetail.Rows[ind].Cells[1].Text);
        //            sqlCommand.Parameters.AddWithValue("@UserId", id);
        //            sqlCommand.ExecuteNonQuery();
        //        }
        //    }
        //    Response.Redirect("UserProfile.Aspx");
        //}
        //catch (Exception)
        //{
        //    throw;
        //}
        //finally
        //{
        //    gridDetail.DataSourceID = null;
        //    gridDetail.DataBind();
        //}
    }

    public void FeildOfinterst()
    {
        string str = "Accounts, Finance, Architecture / Interior Design, Banking / Insurance, Content / Journalism, Corporate Planning / Consulting, Engineering Design / R&D, Export / Import / Merchandising, Fashion / Garments , Hotels / Restaurants, HR / Administration / IR, IT Software ,IT Hardware , DBA / Datawarehousing, Marketing / Advertising , Pharma / Biotech / Healthcare / Medical / R&D, Production / Maintenance / Quality, Purchase / Logistics / Supply Chain , Consultants, Site Engineering / Project Management, Teaching / Education, Ticketing / Travel / Airlines, TV / Films / Production, Web / Graphic Design / Visualiser";
        // listboxFieldType.SelectionMode = ListSelectionMode.Multiple;

        string[] separators = { "," };
        string[] words = str.Split(separators, StringSplitOptions.RemoveEmptyEntries);
        ddlFeildType.DataSource = words;
        ddlFeildType.DataBind();

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserProfile.aspx");
    }

}