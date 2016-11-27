<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>
<%@ MasterType VirtualPath="~/Master.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">

        <div class="row">
            <div class="col-md-12">

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border"></div>

                    <div class="box-body">
                        <strong class="box-title"><i class="fa fa-file-text-o margin-r-5"></i>About Me</strong>
                        <p id="aboutMe" runat="server" class="text-muted">
                            
                        </p>
                        <hr />
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <strong onclick="showtxt()"><i class="fa fa-book margin-r-5"></i>Education</strong>
                        <p id="Education" runat="server" class="text-muted">
                            </p>
                        <hr />
                    </div>

                    <div class="box-body">
                        <strong><i class="fa fa-black-tie margin-r-5"></i>Employement</strong>

                        <p id="Employee" runat="server" class="text-muted"></p>

                        <hr />
                    </div>

                    <div class="box-body">
                        <strong><i class="fa fa-pencil margin-r-5"></i>Skills</strong>

                        <p id="Skills" runat="server">
                            <span id="sp1" runat="server" class="label label-danger"></span>
                            <span id="sp2" runat="server" class ="label label-success"></span>
                            <span id="sp3" runat="server" class="label label-info"></span>
                            <span id="sp4" runat="server" class="label label-warning"></span>
                            <span id="sp5" runat="server" class="label label-primary"></span>
                        </p>

                        <hr />
                    </div>

             
                    <!-- /.box-body -->
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

