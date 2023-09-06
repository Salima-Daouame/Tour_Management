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
    
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="js/jquery.sumoselect.min.js"></script>
    <link href="css/sumoselect.css" rel="stylesheet" />

      <!-- Links -->
     <style>
         .menu-icon {
             margin-right: 1rem
         }
         .date-input {
        width: 120px; /* Ajustez la largeur selon vos besoins */
    }
       .date-picker-icon {
        background-image: url('path/to/calendar-icon.png');
        background-size: 16px 16px; /* Taille de l'icône */
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
   
     </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
             <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="images/Tour.png" class="mr-2" style=" height: 70px; width : 70px "/></a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/Tour.png" alt="logo" style=" height: 50px; width : 50px "/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        
        <ul class="navbar-nav mr-lg-2">
          <li class="nav-item nav-search d-none d-lg-block">
      
       
      
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
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav> 

        </div>
        

         <!-- PopUp -->
            <div>
              <asp:Button ID="MakeOrder" runat="server" Text="Make Order"  class="btn btn-success" OnClick="MakeOrder_Click" />
        <div class="popup-container" id="popupContainer" >
         <div class="popup-content"> 
        <asp:TextBox ID="txtFN" runat="server" placeholder="First Name"  CssClass="form-control"/><br />
        <asp:TextBox ID="txtLN" runat="server" placeholder="Last Name"  CssClass="form-control" /><br /> 
        <asp:ListBox ID="TourList" runat="server"  CssClass="test" ControlToValidate="TourList" ErrorMessage="Please Choose The Tour" style="margin-top : 15px">
         </asp:ListBox> 
         
             <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Enter phone number" CssClass="form-control"></asp:TextBox><br />
     <asp:RegularExpressionValidator ID="regexPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber"
    ValidationExpression="^\d{10}$"
    ErrorMessage="Please enter a valid 10-digit phone number."
    ForeColor="Red"
    Display="Dynamic" />

      
        <asp:Button ID="btnSave1" runat="server" Text="Save" OnClick="BtnSave1_Click" CssClass="btn btn-success" />
        <asp:Button ID="btnCancel1" runat="server" Text="Cancel" OnClientClick="ClosePopup();" CssClass="btn btn-danger" />

        </div>
  
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
    </script>
</body>
</html>
