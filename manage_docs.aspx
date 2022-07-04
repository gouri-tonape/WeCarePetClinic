<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="manage_docs.aspx.cs" Inherits="WeCarePetClinic.docs_org1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });

       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };

               reader.readAsDataURL(input.files[0]);
           }
       }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
      <div class="row">
          <center>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Doctor Details</h4>
                        </center>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" Height="150px" Width="100px" src="img/doc_imgs/doc_logo.jpg" />
                        </center>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-3"> 
                        <label>Doctor's ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Doctor's ID"></asp:TextBox>
                              <asp:Button ID="Button4" class="form control btn btn-primary" runat="server" Text="Go" OnClick="Button4_Click"/>
                           </div>
                        </div>
                     </div>

                     <div class="col-md-9">
                        <label>Doctor's Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Doctor's Name"></asp:TextBox>
                           
                       </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-4">
                        <label>Doctor's Qualification</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Doctor's Qualification"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-4">
                        <label>Doctor's Specialization</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Doctor's Specialization"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  
                  <div class="row">
                     <div class="col-3">
                        <asp:Button ID="Button1" class="btn btn-outline-primary" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                     <div class="col-3">
                        <asp:Button ID="Button3" class="btn btn-outline-secondary" runat="server" Text="Update" />
                     </div>
                     <div class="col-3">
                       <asp:Button ID="Button2" class="btn btn-outline-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                     </div>
                      <br>
                      <br>
                      <div class="col-3">
                          <a class="btn btn-btn-link btn-outline-info" href="doctors.aspx" role="button">View Doctors</a>
                      </div>
                  </div>
               </div>
            </div>
            <a href="homepage1.aspx"><< Back to Home</a><br>
            <br>
         </div>
              </center>
       </div>
    </div>


</asp:Content>
