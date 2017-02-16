<%@ Page Title="" Language="C#" EnableViewState="false" EnableSessionState="ReadOnly" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="UserDetail.aspx.cs" Inherits="UserDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <script type="text/javascript">
          function CheckNumeric(e) {

              if (window.event) // IE 
              {
                  if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
                      event.returnValue = false;
                      return false;

                  }
              }
              else { // Fire Fox
                  if ((e.which < 48 || e.which > 57) & e.which != 8) {
                      e.preventDefault();
                      return false;

                  }
              }
          }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">

        <div class="col-md-6">

            <div runat="server" class="form-light mt-20" role="form">

                <h3 class="section-title"></h3>
                <p>
                </p>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>First Name</label>
                            <asp:TextBox ID="txtFName" runat="server" CssClass="form-control" placeholder="Your name" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First name missing" ControlToValidate="txtFName" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Last Name</label>
                            <asp:TextBox runat="server" ID="txtLName" CssClass="form-control" class="form-control" placeholder="Your name" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last name missing" ControlToValidate="txtLName" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Email</label>

                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Email address" TextMode="Email" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Email missing" ControlToValidate="txtEmail" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email format invalid" ControlToValidate="txtEmail" EnableClientScript="False" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Phone</label>

                            <asp:TextBox runat="server" ID="txtPhone" onkeypress="CheckNumeric(event);" CssClass="form-control" placeholder="Phone number" TextMode="Phone" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone no missing" ControlToValidate="txtPhone" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Gender</label>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" placeholder="Gender">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                                <asp:ListItem Selected="True">Gender</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Country</label>
                            <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control" placeholder="Country">
                                <asp:ListItem Selected="True">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Date Of Birth</label>
                            <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" placeholder="mm/dd/yyyy" TextMode="Date" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="DOB missing" ControlToValidate="txtDob" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Date Of Joininig</label>
                            <asp:TextBox ID="txtDoJoining" CssClass="form-control" runat="server" placeholder="" Enabled="False"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <%-- <asp:Button runat="server" ID="btnRegister" Text="Register" class="btn btn-two" OnClick="btnRegister_Click"></asp:Button>--%>
                <p>
                    <br />
                </p>

                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-two" Text="Save" Style="margin-left: 150px" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" CssClass=" btn btn-two" Text="Cancel" OnClick="btnCancel_Click" Style="margin-left: 100px" />

                <br />

                <asp:HiddenField ID="hfId" runat="server" />
                <asp:HiddenField ID="hfMode" runat="server" />
            </div>

        </div>

    </div>
</asp:Content>

