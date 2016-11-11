<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ink 'Online Volunteer Academy'" />
    <meta name="author" content="Ink" />

    <title>Ink 'Online Volunteer Academy'</title>


    <link rel="shortcut icon" runat="server" href="~/assets/images/favicon.ico" type="image/x-icon" />
    <link href="assets/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" />
    <link rel="stylesheet" href="assets/css/style.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
    
         <div class="col-md-6">
                        <div class="form-group">
                            <label>Country</label>
                            <asp:DropDownList ID="ddlCountry" runat="server" cssclass="form-control" >
                                <asp:ListItem Selected="True">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
            <div class="col-md-6">
                        <div class="form-group">
                            <label>Month</label>
                            <asp:DropDownList ID="ddlMonth" runat="server" cssclass="form-control" >
                      
                                <asp:ListItem Selected="True">--Select--</asp:ListItem>
                              
                            </asp:DropDownList>
                        </div>
                  <div class="form-group">
                            <label>Day</label>
                            <asp:DropDownList ID="ddlDay" runat="server" cssclass="form-control" >                               
                                     <asp:ListItem Selected="True">Day</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                  <div class="form-group">
                            <label>Year</label>
                            <asp:DropDownList ID="ddlyear" runat="server" cssclass="form-control" >
                                 <asp:ListItem Selected="True">Year</asp:ListItem>
                                <asp:ListItem>1900</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                                <asp:ListItem>2000</asp:ListItem>
                                <asp:ListItem>2005</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

       <asp:Button runat="server" ID="btnRegister" Text="Register" cssclass="btn btn-two" OnClick="btnRegister_Click"></asp:Button>
                <p>
                    <br />
                    <asp:Label Id="lbl1" runat="server"></asp:Label>
                </p>



    </div>
    </div>
    </form>
       <script src="assets/js/custom.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/3.2.0/js/bootstrap.min.js"></script>


</body>
</html>
