<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">

        <div class="row">
            <div class="col-md-12">

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border"> </div>
                       <div class="box-body"> 
                       <strong class="box-title">  <i class="fa fa-file-text-o margin-r-5"></i> About Me</strong>
                         <p id="aboutMe" class="text-muted">
                            B.S. in Computer Science from the University of Tennessee at Knoxville
             
                        </p>
                   <hr /></div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <strong><i class="fa fa-book margin-r-5"></i>Education</strong>

                        <p id="Education" class="text-muted">
                            B.S. in Computer Science from the University of Tennessee at Knoxville
             
                        </p>

                        <hr />

                        <strong><i class="fa fa-map-marker margin-r-5"></i>Location</strong>

                        <p id="location" class ="text-muted">Malibu, California</p>

                        <hr />

                        <strong><i class="fa fa-pencil margin-r-5"></i>Skills</strong>

                        <p id="Skills">
                            <span class="label label-danger">UI Design</span>
                            <span class="label label-success">Coding</span>
                            <span class="label label-info">Javascript</span>
                            <span class="label label-warning">PHP</span>
                            <span class="label label-primary">Node.js</span>
                        </p>

                        <hr />

                        <strong><i class="fa fa-file-text-o margin-r-5"></i>Notes</strong>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

