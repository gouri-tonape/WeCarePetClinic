<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true"  CodeBehind="appointment_ownerinfo.aspx.cs" EnableEventValidation="false" Inherits="WeCarePetClinic.book_appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

    <div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3 border p-4 shadow bg-light">
            <div class="col-12">
                <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4">Appointment form<br /><p>Pet Owner Information</p></h3>
            </div>
            <form action="">
                <div class="row g-3">
                    </div>
                     <label>User ID</label>
                    <div class="col-md-6">
                    <div class="form-group">
                        <div class="input-group">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter a unique User ID"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required" Display="None" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    </div>
                    <br />
                    <label>Full Name</label>
                    <div class="col-md-6">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Owners Full Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required" Display="None" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <label>Phone Number</label>
                    <div class="col-md-6">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </div>
                <br />
                    <label>Email</label>
                    <div class="col-md-6">
                         <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <label>Time</label>
                    <div class="col-md-6">
                         <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Time"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div class="col-md-6">
                         <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Date in DD-MM-YYYY"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                    </div>
                   <br>
               
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

                        </div>
                     </div>

                    <div class="col-md-6">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
    
                        </div>
                     </div>
                    </div>
                <br />
                   
                    <div class="form-group">
                        <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        <a class="btn btn-btn-link" href="appointment_petinfo.aspx" role="button">Next</a>
                             
                    </div>
                </div>
            </form>
        </div>
    </div>


</body>
</html>

</asp:Content>
