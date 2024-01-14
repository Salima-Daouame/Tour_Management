<%@ Page Title="" Language="C#" MasterPageFile="~/AdminProfile.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Tour_Management.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main-panel">
     <div class="content-wrapper">
         
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="true"
    CssClass="table table-striped table-bordered table-hover table-responsive"
    OnRowDeleting="GridView3_RowDeleting"  >
    <Columns>
 
        <asp:CommandField ShowDeleteButton="true" />
    </Columns>
    <HeaderStyle BackColor="#5585b5" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#848384" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>


        </div>
        </div>
</asp:Content>

