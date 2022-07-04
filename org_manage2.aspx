<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="org_manage2.aspx.cs" Inherits="WeCarePetClinic.org_manage2" %>
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
                           <h4>Clinic Details</h4>
                        </center>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" Height="150px" Width="100px" src="img/clinic_imgs/3.png" />
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
                     <div class="col-md-4">
                        <label>Clinic ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Clinic ID"></asp:TextBox>
                               <asp:Button ID="Button4" class="form control btn btn-primary" runat="server" Text="Go" OnClick="Button4_Click" />
                              
                           </div>
                        </div>
                     </div>

                     <div class="col-md-8">
                        <label>Clinic Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Clinic Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-4">
                        <label>location</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Location"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-4">
                        <label>Time</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Time"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-12">
                        <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-3">
                        <asp:Button ID="Button1" class="btn btn-outline-secondary" runat="server" Text="Add"  Onclick="Button1_Click" />
                     </div>
                     <div class="col-3">
                        <asp:Button ID="Button3" class="btn btn-outline-secondary" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-3">
                       <asp:Button ID="Button2" class="btn btn-outline-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                     </div>
                      <br>
                      <br>
                      <div class="col-3">
                          <a class="btn btn-btn-link btn-outline-secondary" href="clinic_list.aspx" role="button">View Clinics</a>
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
