<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="plugins/chosen_v1.6.1/docsupport/style.css" rel="stylesheet" />
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
            $("#<%=ddlMultiSelect.ClientID%>").change(function () {
                var arr = $(this).val();
                console.log(arr)
            })
        });</script>

</head>
<body>
    <form id="form1" runat="server">

        <div class="form-group">
            <br />
            <asp:Label ID="lblFeildType" runat="server" Text="Feild Type"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlMultiSelect" data-placeholder="Choose a Country…" class="chosen-select" multiple Style="width: 350px;" runat="server">
                <asp:ListItem Text="Java" Value="1" />
                <asp:ListItem Text="C#" Value="2" />
                <asp:ListItem Text="Asp.net" Value="3" />
                <asp:ListItem Text="SQL" Value="4" />
                <asp:ListItem Text="Jquery" Value="5" />
            </asp:DropDownList>
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



        </div>
    </form>
</body>
</html>
