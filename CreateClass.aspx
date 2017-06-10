<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="CreateClass.aspx.cs" Inherits="CreateClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <section class="content">

        <div class="row">
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Class Name</label>
                            <asp:TextBox ID="txtClassName" runat="server" CssClass="form-control" placeholder="Class Name" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Class Description</label>
                            <asp:TextBox runat="server" TextMode="MultiLine" Rows="3" Columns="5" ID="txtClassDescription" CssClass="form-control" placeholder="Class Description" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Class Category</label>
                            <asp:DropDownList ID="ddlClassCategory" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Class Start Date</label>
                            <asp:TextBox runat="server" ID="txtStartDate" CssClass="form-control" placeholder="Start Date" TextMode="Date" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>End Date</label>

                            <asp:TextBox runat="server" ID="txtendDate" CssClass="form-control" placeholder="End Date" TextMode="Date" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Start Time</label>

                            <asp:TextBox runat="server" ID="txtStartTime" onkeypress="CheckNumeric(event);" CssClass="form-control" placeholder="Start Time" TextMode="Time" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>End Time</label>
                            <asp:TextBox runat="server" ID="txtEndTime" onkeypress="CheckNumeric(event);" CssClass="form-control" placeholder="Start Time" TextMode="Time" />

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Class Days</label>
                            <asp:TextBox runat="server" ID="txtClassDays" CssClass="form-control" placeholder="Days" />

                        </div>
                    </div>
                    <%--                <div class="col-md-6">
                        <div class="form-group">
                            <label>Date Of Birth</label>
                            <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" TextMode="Date" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="DOB missing" ControlToValidate="txtDob" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                    </div>--%>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2"></div>
                    <div class="col-md-4 col-sm-4 col-xs-4 col-lg-4">
                        <asp:Button runat="server" ID="btnCreateClass" Text="Create Class" OnClick="btnCreateClass_Click" CssClass="btn btn-primary"></asp:Button>
                    </div>
                    <div class="col-md-2 col-sm-2 col-xs-2 col-lg-2"></div>    
                    <div class="col-md-4 col-sm-4 col-xs-4 col-lg-4">
                        <asp:Button runat="server" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" CssClass="btn btn-danger"></asp:Button>
                    </div>
                

            </div>
            <asp:HiddenField ID="hfId" runat="server" />
            <asp:HiddenField ID="hfMode" runat="server" />
        </div>
    </section>

</asp:Content>


