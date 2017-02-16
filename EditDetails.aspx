<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="EditDetails.aspx.cs" Inherits="EditDetails" %>

<%@ MasterType VirtualPath="~/Master.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">

        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-body">
                        <strong class="box-title"><i class="fa fa-file-text-o margin-r-5"></i>About Me</strong>
                        <div class="row">
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtAboutMe" runat="server" CssClass="form-control" />
                            </div>
                            <br />
                            <hr />
                        </div>
                    </div>
                    <div class="box-body">
                        <strong><i class="fa fa-book margin-r-5"></i>Education</strong>
                        <div class="row">
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtEducation" runat="server" CssClass="form-control" />
                            </div>
                            <br />
                            <hr />
                        </div>
                    </div>
                    <div class="box-body">

                        <strong><i class="fa fa-black-tie margin-r-5"></i>Employement</strong>
                        <div class="row">
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtEmployee" runat="server" CssClass="form-control" />
                            </div>
                            <br />
                            <hr />
                        </div>
                    </div>
                    <div class="box-body">
                        <strong><i class="fa fa-pencil margin-r-5"></i>Skills</strong>
                        <div class="row">
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtSkills" runat="server" CssClass="form-control" />
                                <%--placeholder=" Seperate Skills by ' , ' or ' . ' "--%>
                            </div>
                            <br />
                            <hr />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-6">

                        <asp:Button ID="btnEditDetails" OnClick="btnEditDetails_Click" Text="Update Details" runat="server" CssClass="btn btn-success" />
                        <asp:Button ID="btnCancel" OnClick="btnCancel_Click" Text="Cancel" runat="server" CssClass="btn btn-danger" />
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>

            </div>
        </div>

    </section>
</asp:Content>
