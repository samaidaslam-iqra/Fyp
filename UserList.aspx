<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-body table-responsive no-padding">
                            <asp:Button ID="btnNew" Text=" New " CssClass="btn btn-two" runat="server" OnClick="btnNew_Click" Style="margin-left: 630px" /><br />

                            <asp:GridView runat="server" ID="gridList" CssClass="table table-bordered table-striped" OnPageIndexChanging="gridList_PageIndexChanging" OnRowCommand="gridList_RowCommand" AutoGenerateColumns="False" AllowPaging="true" PageSize="5">
                                <Columns>
                                    <asp:BoundField DataField="UserFirstName" HeaderText="First Name" />
                                    <asp:BoundField DataField="UserLastName" HeaderText="Last Name" />
                                    <asp:BoundField DataField="UserEmail" HeaderText="Email" />
                                    <asp:BoundField DataField="UserGender" HeaderText="Gender" />
                                    <asp:BoundField DataField="UserPhone" HeaderText="Phone" />
                                    <%--  <asp:BoundField DataField="UserPhi" HeaderText="StudentCode" />--%>

                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <span style="visibility: hidden;">..</span>
                                            <asp:ImageButton ToolTip=" Edit " ID="Edit" runat="server" CssClass="btnLink" ImageUrl="~/assets/images/edit.png" CausesValidation="False" CommandName="Edt" CommandArgument='<%# Eval("UserId") %>' Text=" Edit "></asp:ImageButton>
                                            <span style="visibility: hidden;">. .</span>
                                            &nbsp;<asp:ImageButton ToolTip=" View " ID="View" runat="server" CssClass="btnLink" ImageUrl="~/assets/images/view.png" CausesValidation="False" CommandName="View" CommandArgument='<%# Eval("UserId") %>' Text=" View "></asp:ImageButton>
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
            </div>

        </section>
  

</asp:Content>
