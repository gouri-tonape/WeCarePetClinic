<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="appointment_petinfo.aspx.cs" Inherits="WeCarePetClinic.book_appointment_petinfo" %>
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
                <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4">Appointment form<br /><p>Pet Information</p></h3>
            </div>
            <form action="">
                <div class="row g-3">
                    </div>
                    <div class="col-md-6">
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Pet's ID"></asp:TextBox>
                         
                    </div>
                    <br />
                    <div class="col-md-6">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Pet's Name"></asp:TextBox>
                       
                    </div>
                <br />
                    <div class="row">
                  <div class="col-md-8">
                        <label>Pet Species</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Bird" Value="Bird" />
                              <asp:ListItem Text="Cat" Value="Cat" />
                              <asp:ListItem Text="Dog" Value="Dog" />
                              <asp:ListItem Text="Horse" Value="Horse" />
                              <asp:ListItem Text="Rabbit" Value="Rabbit" />
                              <asp:ListItem Text="Reptile" Value="Reptile" />
                              <asp:ListItem Text="Other" Value="Other" />
                              </asp:DropDownList>
                             
                        </div>
                     </div>
                </div>

                    <br />

                    <div class="col-md-6">
                         <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Pet's Breed"></asp:TextBox>
                        
                    </div>
                <br />
                    <div class="col-md-6">
                         <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Pet's weight in kgs"></asp:TextBox>
                        
                    </div>
                <br />
                    <div class="col-md-6">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Pet's age"></asp:TextBox>
                       
                                               
                    </div>
                <br />
                <div class="form-group">
                       <label>Pet's gender</label>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                       
                   </div>
                <br />
                <div class="col-12">
                        <label>Purpose of visit</label>
                         <div class="form-group">
                            <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                <asp:ListItem Text="Select" Value="select" />
                                <asp:ListItem Text="Wellness Exam" Value="select" />
                                <asp:ListItem Text="Vaccination" Value="select" />
                                <asp:ListItem Text="New Client/Patient Visit" Value="New Client/Patient Visit" />
                                <asp:ListItem Text="Sick Pet Exam" Value="Sick Pet Exam" />
                                <asp:ListItem Text="Surgery or Dental" Value="Surgery or Dental" />
                                <asp:ListItem Text="Medication Refill" Value="Medication Refill" />
                                <asp:ListItem Text="Bath or Grooming" Value="Bath or Grooming" />
                            </asp:DropDownList>
                            
                        </div>
                    </div>

                   
                   <br>
                  
                    <div class="col-12">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" class="form-control" placeholder="Message"></asp:TextBox>
                        
                    </div>
                <br />
                  <div class="form-group">
                      <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                      <a class="btn btn-btn-link" href="homepage1.aspx" role="button">Back to Home</a>
                    </div>
                </div>
            </form>
        </div>
    </div>


</body>
</html>

</asp:Content>
