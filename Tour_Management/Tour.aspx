<%@ Page Title="" Language="C#" MasterPageFile="~/AdminProfile.Master" AutoEventWireup="true" CodeBehind="Tour.aspx.cs" Inherits="Tour_Management.Tour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <!--GridView  -->
      <div class="main-panel">
     <div class="content-wrapper">
         
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
    CssClass="table table-striped table-bordered table-hover table-responsive"
    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
    OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
    DataKeyNames="IdTour" SelectionMode="FullRowSelect">
    <Columns>
        <asp:BoundField DataField="IdTour" HeaderText="Tour ID" ReadOnly="true" />
        <asp:BoundField DataField="Title_tour" HeaderText="Title" />
        <asp:BoundField DataField="Description" HeaderText="Description" />
        <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
        <asp:BoundField DataField="EndDate" HeaderText="End Date" />
        <asp:BoundField DataField="Price" HeaderText="Price" />
        <asp:BoundField DataField="Days" HeaderText="Days" />
        <asp:BoundField DataField="Location" HeaderText="Location" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="imgTour" runat="server" ImageUrl='<%# "data:image/jpeg;base64," + Convert.ToBase64String((byte[])Eval("PicLocation")) %>'  Width="100px" Height="100px" />
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


            <br />
           <div>

         <asp:Button ID="btnAdd" runat="server" Text="Add Tour"  class="btn btn-success" OnClick="BtnAdd_Click" />
         <div class="popup-container" id="popupContainer" >

         <div class="popup-content"> 
           
        <asp:TextBox ID="txtTitle" runat="server" placeholder="Title"  CssClass="form-control"/><br />
        <asp:TextBox ID="txtDescription" runat="server" placeholder="Description" TextMode="MultiLine" CssClass="form-control" /><br /> 
        <asp:TextBox ID="txtStartDate" runat="server" placeholder="Start Date" CssClass="form-control date-time-input" type="datetime-local"></asp:TextBox><br />
        <asp:TextBox ID="txtEndDate" runat="server" placeholder="End Date" CssClass="form-control date-time-input" type="datetime-local"></asp:TextBox><br/>
        <asp:TextBox ID="txtPrice" runat="server" placeholder="Price" CssClass="form-control" /><br/>
        <asp:TextBox ID="txtDays" runat="server" placeholder="Days" CssClass="form-control" /><br/>
        <asp:TextBox ID="txtLocation" runat="server" placeholder="Location" CssClass="form-control" /><br/>
        <asp:FileUpload ID="filePic" runat="server" CssClass="form-control" /><br />
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="BtnSave_Click" CssClass="btn btn-success" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClientClick="ClosePopup();" CssClass="btn btn-danger" />

        </div>
  
       </div>

           </div>

        </div>
        </div>
     <!--GridView  -->

    <!--Script  -->
    <script type="text/javascript">

        function OpenPopup() {
            document.getElementById('popupContainer').style.display = 'block';
        }

        function ClosePopup() {
            document.getElementById('popupContainer').style.display = 'none';
        }

    </script>

     <!--Script  -->
</asp:Content>