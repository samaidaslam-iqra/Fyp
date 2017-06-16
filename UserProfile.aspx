<%@ Page Title="" EnableViewState="false" EnableSessionState="ReadOnly" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<%@ MasterType VirtualPath="~/Master.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">

       
        <div class="row">
            <div class="col-md-12">

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border"><strong class="box-title">Stats <i class="fa fa-bar-chart"></i></strong></div>
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">


                            <div class="info-box">
                                <span class="info-box-icon bg-aqua"><i class="fa fa-bar-chart-o"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">No. Of Activities</span>
                                    <span class="info-box-number">90<small></small></span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <!-- /.col -->


                        <div class="col-md-3 col-sm-6 col-xs-12">

                            <div class="info-box">
                                <span class="info-box-icon bg-red"><i class="fa fa-star-half-empty"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Rank</span>
                                    <span class="info-box-number">Advance</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <!-- /.col -->

                        <!-- fix for small devices only -->
                        <div class="clearfix visible-sm-block"></div>

                        <div class="col-md-3 col-sm-6 col-xs-12">

                            <div class="info-box">
                                <span class="info-box-icon bg-green"><i class="fa fa-tasks"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Files Uploaded</span>
                                    <span class="info-box-number"> <asp:LinkButton ID="LinkButton1" runat="server" OnClick="File_Click"> <i class="fa fa-pencil"></i> File Server </asp:LinkButton>
                    
                                    </span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->

                        </div>

                        <!-- /.col -->
                        <div class="col-md-3 col-sm-6 col-xs-12">

                            <div class="info-box">
                                <span class="info-box-icon bg-yellow"><i class="fa fa-users"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">No. Of Links</span>
                                    <span class="info-box-number">2,000</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <!-- /.col -->
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <strong class="box-title">About </strong>
                        <asp:LinkButton ID="linkbtnEdit" runat="server" OnClick="linkbtnEdit_Click" Text=" Edit Details"> <i class="fa fa-pencil"></i> Edit </asp:LinkButton>
                    </div>

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
                            <span id="sp2" runat="server" class="label label-success"></span>
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

        <div class="row">
            <div class="col-md-12">

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <strong class="box-title">Interests </strong>
                        <asp:LinkButton ID="linkbtnEdit1" runat="server" OnClick="linkbtnEdit1_Click" Text=" Edit Interests"> <i class="fa fa-pencil"></i> Edit </asp:LinkButton>
                    </div>

                    <div class="box-body">
                        <asp:GridView ID="gridDetail" runat="server" HeaderStyle-CssClass="header" CssClass="table table-bordered table-striped" RowStyle-CssClass="rows" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="FieldType" HeaderText="FieldType" SortExpression="FieldType" />
                                <asp:BoundField DataField="FieldName" HeaderText="FieldName" SortExpression="FieldName" />

                            </Columns>

                            <HeaderStyle />
                            <RowStyle />

                        </asp:GridView>
                        <hr />
                    </div>
                    <!-- /.box-header -->



                    <%-- <div class="box-body">
                        <strong><i class="fa fa-pencil margin-r-5"></i>Skills</strong>

                        <p id="P4" runat="server">
                            <span id="Span1" runat="server" class="label label-danger"></span>
                            <span id="Span2" runat="server" class="label label-success"></span>
                            <span id="Span3" runat="server" class="label label-info"></span>
                            <span id="Span4" runat="server" class="label label-warning"></span>
                            <span id="Span5" runat="server" class="label label-primary"></span>
                        </p>--%>

                    <hr />
                </div>


                <!-- /.box-body -->
            </div>
        </div>

    </section>
</asp:Content>

