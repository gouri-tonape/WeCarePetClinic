<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WeCarePetClinic.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
        <body>
            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
                <link href="css/AdminDashboardStyle.css" rel="stylesheet"/>
                <div class="container">
                   <div class="row">
                       <center>
                      <div class="col-md-4 col-xl-3">
                        <div class="card bg-c-blue order-card">
                          <div class="card-block">
                    <h4 class="m-b-20">Manage Clinics</h4>
                    <a href="org_manage2.aspx">Click Here</a>
                    
                    </div>
                </div>
            </div>
                       </center>
        </div>
                    <div class="row">
                       <center>
                      <div class="col-md-4 col-xl-3">
                        <div class="card bg-c-blue order-card">
                          <div class="card-block">
                    <h4 class="m-b-20">Manage Doctors</h4>

                    <a href="manage_docs.aspx">Click Here</a>
                    </div>
                </div>
            </div>
                       </center>
        </div>
     </div>
   </body>
  </html>

</asp:Content>
