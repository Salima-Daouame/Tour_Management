<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Tour_Management.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" href="vendors/feather/feather.css"/>
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css"/>
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css"/>
 
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css"/>
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css"/>
  <link rel="stylesheet" type="text/css" href="js2/select.dataTables.min.css"/>
 
  <link rel="stylesheet" href="css2/vertical-layout-light/style.css"/>
   <link href="https://fonts.googleapis.com/css2?family=Inter:wght@200;400;600&display=swap" rel="stylesheet"/>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link href="https://cdn.rawgit.com/HemantNegi/jquery.sumoselect/6c94c948/sumoselect.css" rel="stylesheet" />
    <script src="https://cdn.rawgit.com/HemantNegi/jquery.sumoselect/master/jquery.sumoselect.js"></script>
     

    

      <!-- Links -->
     <style>
         .menu-icon {
             margin-right: 1rem
         }
         .date-input {
        width: 120px; 
    }
       .date-picker-icon {
        background-image: url('path/to/calendar-icon.png');
        background-size: 16px 16px; 
        width: 16px;
        height: 16px;
        display: inline-block;
        vertical-align: middle;
        cursor: pointer;
    }
        .popup-container {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    z-index: 9999;
    }

.popup-content {
    background-color: white;
    width: 400px;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

.popup-input {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.btn {
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    font-weight: bold;
}

.btn-success {
    background-color: #28a745;
    color: white;
}

.btn-danger {
    background-color: #dc3545;
    color: white;
}
.content-wrapper {
        overflow-x: auto;
    }
   
.alert-message {
   
    color: white; 
    padding: 10px 20px; 
    border-radius: 5px; 
    font-weight: bold; 
    position: fixed; 
    top: 20px; 
    left: 50%; 
    transform: translateX(-50%); 
    z-index: 9999; 
}

.navbar {
    font-family: 'Inter', sans-serif; 
    font-size: 16px; 
}

.nav-link {
    color: #333; 
    text-decoration: none; 
    transition: color 0.3s; 
}

.nav-link:hover {
    color: #28a745; 
}


.dropdown-menu {
    background-color: #fff; 
    border: 1px solid #ccc; 
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); 
}


.dropdown-item {
    color: #333;
    padding: 10px 20px; 
    transition: background-color 0.3s; 

.dropdown-item:hover {
    background-color: #28a745;
    color: #fff; 
}



     </style>


</head>
<body>
    <form id="form1" runat="server">

        
        <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="#"><img src="images/Tour.png" class="mr-2" style=" height: 70px; width : 70px "/></a>
      
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        
        <ul class="navbar-nav mr-lg-2">

          <li class="nav-item nav-search d-none d-lg-block">

          <a class="nav-link" id="MakeOrder" href="#popupContainer" onclick="OpenPopup();">Make Order</a>

            
                <!-- PopUp -->

            <div>
     
        <div class="popup-container" id="popupContainer" >
         <div class="popup-content"> 
        <asp:TextBox ID="txtFN" runat="server" placeholder="First Name"  CssClass="form-control"/><br />
        <asp:TextBox ID="txtLN" runat="server" placeholder="Last Name"  CssClass="form-control" /><br /> 
        <asp:ListBox ID="TourList" runat="server"  CssClass="test" ControlToValidate="TourList" ErrorMessage="Please Choose The Tour" style="margin-top : 15px; width:180%">
         </asp:ListBox> 
         <br />
         <br />
             <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Enter phone number" CssClass="form-control"></asp:TextBox><br />
    <asp:RegularExpressionValidator ID="regexPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber"
    ValidationExpression="^\d{10}$"
    ErrorMessage="Please enter a valid 10-digit phone number."
    ForeColor="Red"
    Display="Dynamic"
    ValidationGroup="SaveValidationGroup" />
             <br />
             
        <asp:Button ID="btnSave1" runat="server" Text="Save" OnClick="BtnSave1_Click" CssClass="btn btn-success" ValidationGroup="SaveValidationGroup"/>
        <asp:Button ID="btnCancel1" runat="server" Text="Cancel" OnClientClick="ClosePopup();" CssClass="btn btn-danger" />

        </div>
  
       </div>

    
                </div>
          </li>
        </ul>
            
        <ul class="navbar-nav navbar-nav-right">

             

         
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
               <asp:Image ID="imgUser" runat="server"/>
                <asp:label runat="server" ID = "nomPrenom"></asp:label> 
            </a>
            
          </li>
          

        </ul>
       
      </div>
    </nav> 
       
     <div style="display: flex; justify-content: center; align-items: center;">
    <div style="margin-top: 80px; margin-left: 10px; margin-right: 10px;">
            
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false"
         CssClass="table table-striped table-bordered table-hover table-responsive"
          SelectionMode="FullRowSelect"  style="display: inline">

      <Columns>
        <asp:BoundField DataField="IdOrderT" HeaderText="Order ID" ReadOnly="true" />
        <asp:BoundField DataField="FirstName" HeaderText="First Name" />
        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
        <asp:BoundField DataField="TourName" HeaderText=" Tour Name" />
        <asp:BoundField DataField="NumPhone" HeaderText="Phone Number" />
        
          <asp:TemplateField HeaderText="Cancel Order">
            <ItemTemplate>
                <asp:Button ID="btnCancelOrder" runat="server" Text="Cancel" OnClientClick='<%# "OpenCancellationPopup(\"" + Eval("FirstName") + "\", \"" + Eval("LastName") + "\"); return false;" %>' />
            </ItemTemplate>
        </asp:TemplateField>
        
     </Columns>
   
              <HeaderStyle BackColor="#5585b5" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center"  />
    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#848384" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
        </div>

     </div>
  

        <asp:HiddenField ID="hdnFirstName" runat="server" />
        <asp:HiddenField ID="hdnLastName" runat="server" />
         <asp:HiddenField ID="hdnTime" runat="server" />

   <div class="popup-container" id="popupCancelOrder">
    <div class="popup-content">
        <asp:TextBox ID="txtCancelCause" runat="server" placeholder="Cancellation Cause" CssClass="form-control" /><br />
    <asp:RequiredFieldValidator ID="rfvCancelCause" runat="server" ControlToValidate="txtCancelCause"
    InitialValue="" ErrorMessage="Remplire le cause." ForeColor="Red" Display="Dynamic" />
        <asp:Button ID="btnConfirmCancel" runat="server" Text="Confirm" OnClick="btnConfirmCancel_Click" CssClass="btn btn-success" />
        <asp:Button ID="btnCancelCancel" runat="server" Text="Cancel" OnClientClick="CloseCancellationPopup();" CssClass="btn btn-danger" />
    </div>
      </div>

     </form>

    <script type="text/javascript">
        function OpenPopup() {
            document.getElementById('popupContainer').style.display = 'block';
        }

        function ClosePopup() {
            document.getElementById('popupContainer').style.display = 'none';
        }

        // permet de selecter all students
        $(document).ready(function () {
            $('#<%= TourList.ClientID %>').SumoSelect({
                placeholder: "Select Tour",
              //  selectAll: true // Enable the select all functionality
            });

        });

        //

        function OpenCancellationPopup(firstName, lastName, timen) {
            document.getElementById('<%= hdnFirstName.ClientID %>').value = firstName;
            document.getElementById('<%= hdnLastName.ClientID %>').value = lastName;
            document.getElementById('<%= hdnTime.ClientID %>').value = timen;
            document.getElementById('popupCancelOrder').style.display = 'block';
        }


    </script>
</body>
</html>
