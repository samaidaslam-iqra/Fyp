﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="ClassList.aspx.cs" Inherits="ManageClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="content">
        <div class="row">
            <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2"></div>
            <div class="col-md-10 col-sm-10 col-xs-10 col-lg-10">
                <asp:Button ID="btnMyClasses" Text=" Manage My Classes " CssClass="btn btn-two" runat="server" OnClick="btnMyClasses_Click" />
                <asp:Button ID="btnMyEnrolledClasses" Text=" My Enrolled Classes " CssClass="btn btn-two" runat="server" OnClick="btnMyEnrolledClasses_Click" />
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2"></div>
        </div>
        <div class="row">
            <br />
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="box-body table-responsive no-padding">

                    <asp:GridView runat="server" ID="gridList" CssClass="table table-bordered table-striped" OnRowCommand="gridList_RowCommand" OnPageIndexChanging="gridList_PageIndexChanging" AutoGenerateColumns="False" AllowPaging="true" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="ClassName" HeaderText="Class Name" />
                            <asp:BoundField DataField="ClassDescription" HeaderText="Class Description" />
                            <asp:BoundField DataField="ClassCategory" HeaderText="Class Category" />
                            <asp:BoundField DataField="ClassStartDate" HeaderText="Class StartDate" />
                            <asp:BoundField DataField="ClassEndDate" HeaderText="Class EndDate" />
                            <asp:BoundField DataField="ClassDays" HeaderText="Class Days" />
                            <asp:BoundField DataField="ClassTiming" HeaderText="Class Timings" />

                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <span style="visibility: hidden;">..</span>
                                    <asp:ImageButton ToolTip=" Join Class " ID="Join" runat="server" CssClass="btnLink btn-success"  CausesValidation="False" CommandName="join" CommandArgument='<%# Eval("ClassId") %>' Text=" join "></asp:ImageButton>
                                   </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle />
                        <RowStyle />
                        <PagerSettings FirstPageText="&amp;lt; &amp;lt;" LastPageText="&amp;gt; &amp;gt;" />
                        <PagerStyle Font-Underline="False" />
                    </asp:GridView>
                </div>
            </div>
        </div>


    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

