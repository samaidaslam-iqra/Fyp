<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="EditInterest.aspx.cs" Inherits="EditInterest" %>

<%@ MasterType VirtualPath="~/Master.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">
        <%--k--%>
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-body"> 
                        <strong class="box-title"><i class="fa fa-Edit"></i>Field Type</strong>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <br />
                                    <asp:Label ID="lblFeildType" runat="server" Text="Feild Type"></asp:Label>
                                    <br />
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
                                </div>
                                <br />
                                <asp:Label ID="lblFeildName" runat="server" Text="Feild Name"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtFeildName" CssClass="form-control" runat="server"></asp:TextBox>
                                <br />
                                <asp:Button ID="btnAddInterest" runat="server" Text="Add Interest" CssClass="btn btn-info" OnClick="btnAddInterest_Click" />
                                <br />
                            </div>
                        </div>
                    </div>
                    <asp:GridView ID="gridDetail" runat="server" HeaderStyle-CssClass="header" CssClass="table table-bordered table-striped" RowStyle-CssClass="rows" AutoGenerateColumns="False" OnRowDeleting="gridDetail_RowDeleting" ToolTip="Delete">
                        <Columns>
                            <asp:BoundField DataField="FieldType" HeaderText="FieldType" SortExpression="FieldType" />
                            <asp:BoundField DataField="FieldName" HeaderText="FieldName" SortExpression="FieldName" />
                            <asp:CommandField HeaderText="Action" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/assets/images/delete.png" />

                        </Columns>

                        <HeaderStyle />
                        <RowStyle />

                    </asp:GridView>

                    <div class="box-body">
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" Style="margin-left: 150px" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="btnCancel_Click" Style="margin-left: 100px" />

                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

