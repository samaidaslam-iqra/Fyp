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
        AddDefaultFirstRecord();
    }

    protected void btnAddInterest_Click(object sender, EventArgs e)
    {
        DataTable dtCurrentTable = (DataTable)ViewState["EditInterest"];
        DataRow drCurrentRow = dtCurrentTable.NewRow();
        drCurrentRow["FieldType"] = ddlFieldType.SelectedValue.ToString();
        drCurrentRow["FieldName"] = txtFeildName.Text;

        if (dtCurrentTable.Rows[0][0].ToString() == "" && gridDetail.Rows.Count != 0)
        {
            dtCurrentTable.Rows[0].Delete();
            dtCurrentTable.AcceptChanges();
        }
        dtCurrentTable.Rows.Add(drCurrentRow);
        ViewState["EditInterest"] = dtCurrentTable;
        gridDetail.DataSource = dtCurrentTable;
        gridDetail.DataBind();
    }

    private void AddDefaultFirstRecord()
    {
        if (ViewState["EditInterest"] == null)
        {

            DataRow dr;
            dtCurrentTable.TableName = "EditInterest";
            dtCurrentTable.Columns.Add(new DataColumn("FieldType", typeof(string)));
            dtCurrentTable.Columns.Add(new DataColumn("FieldName", typeof(string)));

            dr = dtCurrentTable.NewRow();
            dtCurrentTable.Rows.Add(dr);

            ViewState["EditInterest"] = dtCurrentTable;
            if (dtCurrentTable.Rows[0][0].ToString() == "" && gridDetail.Rows.Count != 0)
            {
                dtCurrentTable.Rows[0].Delete();
                dtCurrentTable.AcceptChanges();
            }
            gridDetail.DataSource = dtCurrentTable;
            gridDetail.DataBind();
        }

        else
            dtCurrentTable = (DataTable)ViewState["EditInterest"];
    }

    protected void gridDetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dtCurrentTable.Rows.RemoveAt(e.RowIndex);
        gridDetail.DataSource = dtCurrentTable;
        gridDetail.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            int id = Master.ids;
            int ind = 0;
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
            sqlConnection.Open();
            for (ind = 0; ind < gridDetail.Rows.Count; ind++)
            {
                string sql = @"Insert into inkFieldsOfInterest (FieldType ,FieldName ,UserId ) values (@FieldType , @FieldName , @UserId);";
                using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
                {
                    sqlCommand.Parameters.AddWithValue("@FieldType", gridDetail.Rows[ind].Cells[0].Text);
                    sqlCommand.Parameters.AddWithValue("@FieldName", gridDetail.Rows[ind].Cells[1].Text);
                    sqlCommand.Parameters.AddWithValue("@UserId", id);
                    sqlCommand.ExecuteNonQuery(); 
                }
            }
            Response.Redirect("UserProfile.Aspx");
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            gridDetail.DataSourceID = null;
            gridDetail.DataBind();
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserProfile.aspx");
    }

}