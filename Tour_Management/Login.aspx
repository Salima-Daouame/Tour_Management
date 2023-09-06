<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tour_Management.Login" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title></title>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
  <!-- MDB -->
  <link rel="stylesheet" href="css/bootstrap-login-form.min.css" />
     <style>
   .divider:after,
   .divider:before {
  content: "";
  flex: 1;
  height: 1px;
  background: #eee;
  }
   .h-custom {
  height: calc(100% - 73px);
   }
   @media (max-width: 450px) {
  .h-custom {
    height: 100%;
  }
  }
  </style>

</head>

<body>
<form id="form1" runat="server">
  <section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form>
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <p class="lead fw-normal mb-0 me-3">Sign in with</p>
            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-facebook-f"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-twitter"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-linkedin-in"></i>
            </button>
          </div>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">Or</p>
          </div>

          <!-- Email input -->

          <div class="form-outline mb-4"> 
               
             <asp:TextBox ID="txtemail" TextMode="Email" class="form-control form-control-lg" placeholder="Enter Email" runat="server" > </asp:TextBox>
            <label class="form-label" for="form3Example3">Email address</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
              <asp:TextBox  ID="txtpassword" TextMode="Password" class="form-control form-control-lg"  placeholder="Enter password" runat="server" > </asp:TextBox>
            <label class="form-label" for="form3Example4">Password</label>
          </div>

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                <asp:Label class="form-check-label" for="form2Example3" runat="server"> Remember me</asp:Label>
             
                 <!--  <label class="form-check-label" for="form2Example3"> Remember me </label>-->
            </div>
            <a href="#!" class="text-body">Forgot password?</a>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
                
              <asp:Button ID="BtnLogin" runat="server" class="btn btn-primary btn-lg" Text="Login" style="padding-left: 2.5rem; padding-right: 2.5rem;" OnClick="BtnLogin_Click" />

            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="Signup.aspx"
                class="link-danger">Register</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>
  
</section>
    </form>
     <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>
