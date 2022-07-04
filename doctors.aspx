<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="doctors.aspx.cs" Inherits="WeCarePetClinic.doctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
        <div>
            <div>
                      <center>
                          <h2>Doctors Details</h2>
                      </center>
                  </div>
                  <asp:DataList ID="DataList1" CellPadding="4" RepeatColumns="2" runat="server"  SelectedIndex="1" TabIndex="2" ForeColor="#333333" RepeatDirection="Horizontal">
                      
                     
                      <ItemTemplate>
                          <table>
                              <tr>
                                  <td>
                                      <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("doctor_img") %>' Height="200px" width="200px"/></td>
                              </tr>
                              <tr>
                                  <td>ID</td>
                                  <br />
                                  <td><%#Eval("doctor_id") %></td>
                              </tr>
                              <tr>
                                  <td>Name</td>
                                  <br />
                                  <td><%#Eval("doctor_name") %></td>
                              </tr>
                           
                              <tr>
                                  <td>Qualification</td>
                                  <td><%#Eval("doctor_qualification") %></td>
                              </tr>
                              <tr>
                                  <td>Specialist Of:</td>
                                  <td><%#Eval("doctor_specialization") %></td>
                              </tr>
                              <hr />
                          </table>
                      </ItemTemplate>
                     
                  </asp:DataList>
             <a href="clinic_list.aspx"><< View clinics available</a><br><br>
            <a href="appointment_ownerinfo.aspx">Book Appointment >></a><br><br>
              </div>
    </html>
</asp:Content>
