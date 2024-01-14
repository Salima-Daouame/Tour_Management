<%@ Page Title="" Language="C#" MasterPageFile="~/AdminProfile.Master" AutoEventWireup="true" CodeBehind="TourHistory.aspx.cs" Inherits="Tour_Management.TourHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="main-panel">
     <div class="content-wrapper">

    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="false"
    CssClass="table table-striped table-bordered table-hover table-responsive"
    OnRowEditing="GridView4_RowEditing" OnRowUpdating="GridView4_RowUpdating"
    OnRowCancelingEdit="GridView4_RowCancelingEdit" OnRowDeleting="GridView4_RowDeleting"
    DataKeyNames="IdTourh" SelectionMode="FullRowSelect">
    <Columns>
        <asp:BoundField DataField="IdTour" HeaderText="Tour ID" ReadOnly="true" />
        <asp:BoundField DataField="Title_tour" HeaderText="Title" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="imgTour" runat="server" ImageUrl='<%# "data:image/jpeg;base64," + Convert.ToBase64String((byte[])Eval("PicTh")) %>'  Width="100px" Height="100px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
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

       <div>

         <asp:Button ID="btnAddTourHistory" runat="server" Text="Add TourHistory"  class="btn btn-success" OnClick="btnAddTourHistory_Click" />
         <div class="popup-container" id="popupContainer" >

         <div class="popup-content"> 
           
        <asp:TextBox ID="txtTitle" runat="server" placeholder="Title"  CssClass="form-control"/><br />
        <asp:FileUpload ID="filePic1" runat="server" CssClass="form-control" /><br />
        <asp:Button ID="btnSave1" runat="server" Text="Save" OnClick="BtnSave1_Click" CssClass="btn btn-success" />
        <asp:Button ID="btnCancel1" runat="server" Text="Cancel" OnClientClick="ClosePopup();" CssClass="btn btn-danger" />

        </div>
  
       </div>

           </div>

         </div>
        </div>

     <!--Script  -->
    <script type="text/javascript">

        function OpenPopup1() {
            document.getElementById('popupContainer').style.display = 'block';
        }

        function ClosePopup1() {
            document.getElementById('popupContainer').style.display = 'none';
        }

    </script>

     <!--Script  -->
</asp:Content>
