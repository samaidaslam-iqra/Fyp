<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="FileServer.aspx.cs" Inherits="FileServer" %>

<%@ MasterType VirtualPath="~/Master.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="content">
    <div class="container">
          <div class="jumbotron">
            <h2 id="userName" runat="server"></h2> 
            <p>File sharing,You can upload/download file here </p> 
          </div>
      
    </div>
     <div class="container">
           <div class="row">
            <div class="col-lg-5" >
             <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn btn-info"  />
            </div>
           </div>
        </div>
        <div class="container">
        <div class="row">
            <div class="col-lg-4 ">
               <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" class="btn btn-warning"/>
            </div>
        </div>
      </div>
      <div class="container">     
        <div class="row">     
          <div class="col-lg-10">     
      
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  OnRowCommand="GridView1_RowCommand" CssClass="table table-bordered table-striped">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File")%>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="File" HeaderText="File Name" />
                <asp:BoundField DataField="Size" HeaderText="Size" />
                  <asp:BoundField DataField="Type" HeaderText="Type" />
                <%--<asp:BoundField DataField="FileUrl" HeaderText="" />--%>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </div>
      </div>
    </div>

    </section>
</asp:Content>
