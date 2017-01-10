<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="EditInterest.aspx.cs" Inherits="EditInterest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">

        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-body">
                        <strong class="box-title"><i class="fa fa-Edit"></i>Field Type</strong>
                        <div class="row">
                            <div class="col-lg-8">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 35%;">
                                            <asp:Label ID="lblFeildType" runat="server" Text="Feild Type"></asp:Label>
                                            &nbsp;
              <asp:DropDownList runat="server" ID="ddlFieldType" CssClass="form-control">
                  <asp:ListItem>--Select--</asp:ListItem>
                  <asp:ListItem>Computer</asp:ListItem>
                  <asp:ListItem>Science</asp:ListItem>
                  <asp:ListItem>Electronics</asp:ListItem>
                  <asp:ListItem>Electrical</asp:ListItem>
                  <asp:ListItem>Medical</asp:ListItem>
                  <asp:ListItem>Mathmatics</asp:ListItem>
                  <asp:ListItem>History</asp:ListItem>
              </asp:DropDownList>
                                        </td>
                                        <td style="width: 35%;">
                                            <asp:Label ID="lblFeildName" runat="server" Text="Feild Name"></asp:Label>
                                            &nbsp;
            <asp:TextBox ID="txtFeildName" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:Button ID="btnAddInterest" runat="server" Text="Add Interest" OnClick="btnAddInterest_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </div>

                            <hr />
                        </div>
                    </div>
                    <asp:GridView ID="gridDetail" runat="server" HeaderStyle-CssClass="header" CssClass="grid" RowStyle-CssClass="rows" AutoGenerateColumns="False" Width="830px" OnRowDeleting="gridDetail_RowDeleting" ToolTip="Delete">
                        <Columns>
                            <asp:BoundField DataField="FieldType" HeaderText="FieldType" SortExpression="FieldType" />
                            <asp:BoundField DataField="FieldName" HeaderText="FieldName" SortExpression="FieldName" />
                        </Columns>

                        <HeaderStyle />
                        <RowStyle />

                    </asp:GridView>

                    <%--        <div class="box-body">
                        <strong class="box-title"><i class="fa fa-file-text-o margin-r-5"></i>Field Name</strong>
                        <div class="row">
                            <div class="col-lg-8">
                            </div>
                            <br />
                            <hr />
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

