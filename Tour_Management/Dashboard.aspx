<%@ Page Title="" Language="C#" MasterPageFile="~/AdminProfile.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Tour_Management.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
         <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                  <h3 class="font-weight-bold">Welcome Admin</h3>
                </div>
                <div class="col-12 col-xl-4">
                 <div class="justify-content-end d-flex">
                  <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                    <button class="btn btn-sm btn-light bg-white" type="button" id="dropdownMenuDate2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                   <%-- Date of today--%>
                         <span id="currentDateLabel"></span>
                    </button>
                  </div>
                 </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card tale-bg">
                <div class="card-people mt-auto">
                  <img src="images2/dashboard/people.svg" alt="people">
                  <div class="weather-info">
                    <div class="d-flex">
                      <div>
                        <h2 class="mb-0 font-weight-normal"><i class="icon-sun mr-2"></i>31<sup>C</sup></h2>
                      </div>
                      <div class="ml-2">
                        <h4 class="location font-weight-normal">CasaBlanca</h4>
                        <h6 class="font-weight-normal">Morroco</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-6 grid-margin transparent">
              <div class="row">
                <div class="col-md-6 mb-4 stretch-card transparent">
                  <div class="card card-tale">
                    <div class="card-body">
                      <p class="mb-4">Nombre De Tour </p>
                       
                      <p class="fs-30 mb-2"> <asp:Label  ID="Label1" runat="server" class="fs-30 mb-2"></asp:Label></p> 
                        <img src="images/tour_icon1.png" >
                    </div>
                  </div>
                </div>
                <div class="col-md-6 mb-4 stretch-card transparent">
                  <div class="card card-dark-blue">
                    <div class="card-body">
                      <p class="mb-4">Nomber de Users</p>
                      <p class="fs-30 mb-2"> <asp:Label  ID="Label2" runat="server" class="fs-30 mb-2"></asp:Label></p>
                      <img src="images/user.png" >
                    </div>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
                  <div class="card card-light-blue">
                    <div class="card-body">
                      <p class="mb-4">Nomber Des Orders</p>
                      <p class="fs-30 mb-2"><asp:Label  ID="Label3" runat="server" class="fs-30 mb-2"></asp:Label></p>
                       <img src="images/order.png" >
                    </div>
                  </div>
                </div>
<%--<div class="col-md-6 stretch-card transparent">
                  <div class="card card-light-danger">
                    <div class="card-body">
                      <p class="mb-4"> Totale Des Orders</p>
                      <p class="fs-30 mb-2">15</p>
                    <img src="images/order1.png" >
                    </div>
                  </div>
                </div>--%>
                

              </div>
            </div>
          </div>
         </div>
         </div>

    <script>


    var currentDate = new Date();
    var formattedDate = currentDate.toISOString().split('T')[0];
     document.getElementById("currentDateLabel").textContent = formattedDate;

    </script>

</asp:Content>
