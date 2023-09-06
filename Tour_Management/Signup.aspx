<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Tour_Management.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign up</title>
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
       <section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                <div class="mx-1 mx-md-4">

                     <!-- DIV 1 -->
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      
                        <asp:TextBox runat="server"  ID="boxFN"  class="form-label" for="form3Example1c"  placeholder="First Name " style="padding: 5px;border: 1px solid #ccc;width: 100%"></asp:TextBox>
                       
                     
                    </div>
                  </div>
                     <!-- DIV 1 : FN  -->


                     <!-- DIV 2 : LN -->
                     <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        
                       <asp:TextBox runat="server"  ID="boxLN"  class="form-label" for="form3Example2c"  placeholder="Last Name " style="padding: 5px;border: 1px solid #ccc;width: 100%"></asp:TextBox>
              
                    </div>
                  </div>
                      <!-- DIV 2 -->


                   <!-- DIV 3 : Pic -->
                    <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fa-regular fa-image  fa-lg me-3 fa-fw" style="color: #050505;"></i>
                     
                     <div class="form-outline flex-fill mb-0">
                          
                    <asp:FileUpload ID="fileUploadControl" runat="server" CssClass="form-control" style="padding: 5px;border: 1px solid #ccc;width: 100%" />
                  
                       </div>
                    </div>

                      <!-- DIV 3 -->


                      <!-- DIV 4 : Email -->
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                   
                         
                     <asp:TextBox runat="server"  ID="boxemail"  class="form-label" for="form3Example4c"  placeholder="Your Email "  style="padding: 5px;border: 1px solid #ccc;width: 100%"></asp:TextBox>
                    </div>
                  </div>
                      <!-- DIV 4 -->


                      <!-- DIV 5: Password -->
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                     

                    <asp:TextBox runat="server"  ID="boxpassword"  class="form-label" for="form3Example5c"  placeholder="Your PassWord "  style="padding: 5px;border: 1px solid #ccc;width: 100%" ></asp:TextBox>
                    </div>
                  </div>

                      <!-- DIV 5 -->

                  <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label" for="form2Example3">
                      I agree all statements in <a href="#!">Terms of service</a>
                    </label>
                  </div>

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <asp:Button  runat="server" ID="BtnRegister" OnClick="BtnRegister_Click" Text="Register" class="btn btn-primary btn-lg" />
                    
                  </div>

                </div>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid"/>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </form>
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>
</html>
