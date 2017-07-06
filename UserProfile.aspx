<%@ Page Title="" EnableViewState="false" EnableSessionState="ReadOnly" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<%@ MasterType VirtualPath="~/Master.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">

     
        <style>
            

.card {
    padding-top: 20px;
    margin: 10px 0 20px 0;
    background-color: rgba(214, 224, 226, 0.2);
    border-top-width: 0;
    border-bottom-width: 2px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.card .card-heading {
    padding: 0 20px;
    margin: 0;
}

.card .card-heading.simple {
    font-size: 20px;
    font-weight: 300;
    color: #777;
    border-bottom: 1px solid #e5e5e5;
}

.card .card-heading.image img {
    display: inline-block;
    width: 46px;
    height: 46px;
    margin-right: 15px;
    vertical-align: top;
    border: 0;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
}

.card .card-heading.image .card-heading-header {
    display: inline-block;
    vertical-align: top;
}

.card .card-heading.image .card-heading-header h3 {
    margin: 0;
    font-size: 14px;
    line-height: 16px;
    color: #262626;
}

.card .card-heading.image .card-heading-header span {
    font-size: 12px;
    color: #999999;
}

.card .card-body {
    padding: 0 20px;
    margin-top: 20px;
}

.card .card-media {
    padding: 0 20px;
    margin: 0 -14px;
}

.card .card-media img {
    max-width: 100%;
    max-height: 100%;
}

.card .card-actions {
    min-height: 30px;
    padding: 0 20px 20px 20px;
    margin: 20px 0 0 0;
}

.card .card-comments {
    padding: 20px;
    margin: 0;
    background-color: #f8f8f8;
}

.card .card-comments .comments-collapse-toggle {
    padding: 0;
    margin: 0 20px 12px 20px;
}

.card .card-comments .comments-collapse-toggle a,
.card .card-comments .comments-collapse-toggle span {
    padding-right: 5px;
    overflow: hidden;
    font-size: 12px;
    color: #999;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.card-comments .media-heading {
    font-size: 13px;
    font-weight: bold;
}

.card.people {
    position: relative;
    display: inline-block;
    width: 170px;
    height: 300px;
    padding-top: 0;
    margin-left: 20px;
    overflow: hidden;
    vertical-align: top;
}

.card.people:first-child {
    margin-left: 0;
}

.card.people .card-top {
    position: absolute;
    top: 0;
    left: 0;
    display: inline-block;
    width: 170px;
    height: 150px;
    background-color: #ffffff;
}

.card.people .card-top.green {
    background-color: #53a93f;
}

.card.people .card-top.blue {
    background-color: #427fed;
}

.card.people .card-info {
    position: absolute;
    top: 150px;
    display: inline-block;
    width: 100%;
    height: 101px;
    overflow: hidden;
    background: #ffffff;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.card.people .card-info .title {
    display: block;
    margin: 8px 14px 0 14px;
    overflow: hidden;
    font-size: 16px;
    font-weight: bold;
    line-height: 18px;
    color: #404040;
}

.card.people .card-info .desc {
    display: block;
    margin: 8px 14px 0 14px;
    overflow: hidden;
    font-size: 12px;
    line-height: 16px;
    color: #737373;
    text-overflow: ellipsis;
}

.card.people .card-bottom {
    position: absolute;
    bottom: 0;
    left: 0;
    display: inline-block;
    width: 100%;
    padding: 10px 20px;
    line-height: 29px;
    text-align: center;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.card.hovercard {
    position: relative;
    padding-top: 0;
    overflow: hidden;
    text-align: center;
    background-color: rgba(214, 224, 226, 0.2);
}

.card.hovercard .cardheader {
    background: url("http://cdn.wall-pix.net/albums/art-abstract/00000505.jpg");
    background-size: cover;
    height: 250px;
}

.card.hovercard .avatar {
    position: relative;
    top: -50px;
    margin-bottom: -50px;
}

.card.hovercard .avatar img {
    width: 150px;
    height: 150px;
    max-width: 100px;
    max-height: 100px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
    border: 5px solid rgba(255,255,255,0.5);
}

.card.hovercard .info {
    padding: 4px 8px 10px;
}

.card.hovercard .info .title {
    margin-bottom: 4px;
    font-size: 24px;
    line-height: 1;
    color: #262626;
    vertical-align: middle;
}

.card.hovercard .info .desc {
    overflow: hidden;
    font-size: 12px;
    line-height: 20px;
    color: #737373;
    text-overflow: ellipsis;
}

.card.hovercard .bottom {
    padding: 0 20px;
    margin-bottom: 17px;
}

/*.btn{ border-radius: 50%; width:32px; height:32px; line-height:18px;  }*/



        </style>
<div class="container">
	<div class="row">
		<div class="col-md-11 col-sm-11">

            <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img id="imgCard" runat="server" alt="" src="#"/>
                </div>
                <div class="info">
                    <div class="title">
                        <p runat="server" id="title">__________</p>
                    </div>
                    <div runat="server" class="desc" id="edu">__________</div>
                    <div runat="server" class="desc" id="emp">___________</div>
                   
                </div>
              <%--  <div class="bottom">
                    <a class="btn btn-primary btn-twitter btn-sm" href="https://twitter.com/webmaniac">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a class="btn btn-danger btn-sm" rel="publisher"
                       href="https://plus.google.com/+ahmshahnuralam">
                        <i class="fa fa-google-plus"></i>
                    </a>
                    <a class="btn btn-primary btn-sm" rel="publisher"
                       href="https://plus.google.com/shahnuralam">
                        <i class="fa fa-facebook"></i>
                    </a>
                    <a class="btn btn-warning btn-sm" rel="publisher" href="https://plus.google.com/shahnuralam">
                        <i class="fa fa-behance"></i>
                    </a>
                </div>--%>
            </div>

        </div>

	</div>
</div>

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
                                    <span class="info-box-number" id="lblNoOfActivity" runat="server">*<small></small></span>
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
                                    <span class="info-box-number" id="lblRank" runat="server">Advance</span>
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
                                    <span class="info-box-text" id="lblNoOfFiles" runat="server">No of files</span>

                                    <span class="info-box-number"> 
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="File_Click"> <i class="fa fa-pencil"></i> File Server </asp:LinkButton>
                    
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
                                    <span class="info-box-number" id="lblNoOfLinks" runat="server">2,000</span>
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

