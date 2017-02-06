<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="EditInterest.aspx.cs" Inherits="EditInterest" %>

<%@ MasterType VirtualPath="~/Master.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%-- <link href="plugins/chosen_v1.6.1/docsupport/style.css" rel="stylesheet" />--%>
    <link href="plugins/chosen_v1.6.1/docsupport/prism.css" rel="stylesheet" />
    <link href="plugins/chosen_v1.6.1/chosen.min.css" rel="stylesheet" />
    <style type="text/css" media="all">
        /* fix rtl for demo */
        .chosen-rtl .chosen-drop {
            left: -9000px;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    <script src="plugins/chosen_v1.6.1/chosen.jquery.min.js"></script>
    <script src="plugins/chosen_v1.6.1/docsupport/prism.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=ddlFeildType.ClientID%>").change(function () {
                var arr = $(this).val();
                console.log(arr)
            })
        });

    </script>

    <script type="text/javascript">
        $('#ddlFeildType').chosen();

        // then, declare how you handle the change event
        $('#ddlFeildType').chosen().change(function () {
            var myValues = $('.chosen-select :selected').text();
            // then do stuff with the array
            alert(myValues);
            
        });
        function test() {
          //  var selID = document.getElementById("#ddlFeildType");
           // var text = selID.options[selID.selectedIndex].text();
        //    var s = s + $('.chosen-select :selectedIndex').val();
   //  var s=       $("#<%=ddlFeildType.ClientID%>").children("option").filter(":selected").text‌​();
            var s = s + $('.chosen-select :selected').text() + ' , ';// then do stuff with the array
            alert(s +' s s ');
        }
        //$(document).ready(function () {
        //    var ss = $('.chosen-select :updated').val;
        //    // var cc = $('.chosen-select :selected').text() + ',';
        //    var cc = ss;
        //    alert(cc+'sss');
        //});
        //$('.my_select_box').trigger('chosen:updated');
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">


        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-body">
                        <strong class="box-title"><i class="fa fa-Edit"></i>Field Type</strong>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <br />
                                    <asp:Label runat="server" ID="lblFeildType"></asp:Label>
                                    <br />

                                    <select id="ddlFeildType" name="ddl" data-placeholder="Choose a Country…" class="chosen-select" multiple style="width: 350px;" runat="server">
                                        <%--  <asp:ListItem Text="Java" Value="1" />
                                        <asp:ListItem Text="C#" Value="2" />
                                        <asp:ListItem Text="Asp.net" Value="3" />
                                        <asp:ListItem Text="SQL" Value="4" />
                                        <asp:ListItem Text="Jquery" Value="5" />--%>
                                    </select>
                                    <script type="text/javascript">
                                        var config = {
                                            '.chosen-select': {},
                                            '.chosen-select-deselect': { allow_single_deselect: true },
                                            '.chosen-select-no-single': { disable_search_threshold: 10 },
                                            '.chosen-select-no-results': { no_results_text: 'Oops, nothing found! ' },
                                            '.chosen-select-width': { width: "95%" }

                                        }
                                        for (var selector in config) {
                                            $(selector).chosen(config[selector]);
                                        }

                                    </script>


                                    <p id="ss"></p>
                                </div>
                                <br />

                                <asp:Button ID="btnAddInterest" runat="server" Text="Add Interest" CssClass="btn btn-info" OnClientClick="test()" OnClick="btnAddInterest_Click" />
                                <input type="button" id="btnt" class="btn btn-info" value="ss" onclick="test()" />
                                <br />
                            </div>
                        </div>
                    </div>
                    <asp:GridView ID="gridDetail" runat="server" HeaderStyle-CssClass="header" CssClass="table table-bordered table-striped" RowStyle-CssClass="rows" AutoGenerateColumns="False" OnRowDeleting="gridDetail_RowDeleting" ToolTip="Delete">
                        <Columns>
                            <asp:BoundField DataField="FieldType" HeaderText="FieldType" SortExpression="FieldType" />
                            <%--       <asp:BoundField DataField="FieldName" HeaderText="FieldName" SortExpression="FieldName" />--%>
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

