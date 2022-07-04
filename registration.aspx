<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WeCarePetClinic.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img
                src="img/regImg1.jpeg"
                alt="Sample photo"
                class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;"
               />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">New User Registeration</h3>
                  <p>By registaring you can get a free consultant service on a call.</p>

                <div class="row">
                  <div class="col-md-6">
                    <label>Full Name</label>
                    <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox1" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                </div>

                <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox2" CssClass="text-danger"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone Number" ControlToValidate="TextBox2" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                            </div>
                     </div> 
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox3" CssClass="text-danger"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                         </div>
                     </div>
                  </div>

                <div class="row">
                  <div class="col-md-6">
                        <label>Area</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="North-Solapur" Value="North-Solapur" />
                              <asp:ListItem Text="South-Solapur" Value="South-Solapur" />
                              <asp:ListItem Text="Barshi" Value="Barshi" />
                              <asp:ListItem Text="Akkalkot" Value="Akkalkot" />
                              <asp:ListItem Text="Pandharpur" Value="Pandharpur" />
                              <asp:ListItem Text="Mangalvedha" Value="Mangalvedha" />
                              <asp:ListItem Text="Sangola" Value="Sangola" />
                              <asp:ListItem Text="Mohol" Value="Mohol" />
                              <asp:ListItem Text="Madha" Value="Madha" />
                              <asp:ListItem Text="Malshiras" Value="Malshiras" />
                           </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This field is required" ControlToValidate="DropDownList1" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>
                     </div>

                    <div class="col-md-6">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox7" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                    </div>
                 
                
                  <div class="row">
                  <div class="col-md-8">
                        <label>Pet Species</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Bird" Value="North-Bird" />
                              <asp:ListItem Text="Cat" Value="Cat" />
                              <asp:ListItem Text="Dog" Value="Dog" />
                              <asp:ListItem Text="Horse" Value="Horse" />
                              <asp:ListItem Text="Rabbit" Value="Rabbit" />
                              <asp:ListItem Text="Reptile" Value="Reptile" />
                              <asp:ListItem Text="Other" Value="Other" />
                              </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This field is required" ControlToValidate="DropDownList2" CssClass="text-danger"></asp:RequiredFieldValidator>

                        </div>
                     </div>
                </div>

                <div class="row">
                  <div class="col-md-8">
                    <label>Breed</label>
                    <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Breed"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox5" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-8">
                    <label>Pet Name</label>
                    <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Pet Name"></asp:TextBox>                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox6" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                </div>


                <div class="row">
                  <div class="col-md-6">
                    <label>User ID</label>
                    <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Create a unique ID"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox4" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                    <div class="col-md-6">
                    <label>Password</label>
                    <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="This field is required." ControlToValidate="TextBox8" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>
                  </div>
                </div>
                  <br>
                  <br>
             <div class="form-group">
                <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />


             </div>
                  <br>

                  <a href="clinic_list.aspx">Request a service >></a><br><br>
                  <a href="homepage1.aspx"><< Back to Home</a><br><br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>
