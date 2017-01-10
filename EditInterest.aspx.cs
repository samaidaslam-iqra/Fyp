using System;
using System.Collections.Generic;
using System.Data;
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
        //dtCurrentTable.Rows.RemoveAt(e.RowIndex);
        //gridDetail.DataSource = dtCurrentTable;
        //gridDetail.DataBind();
    }
}