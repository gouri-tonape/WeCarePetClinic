<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="clinic_list.aspx.cs" Inherits="WeCarePetClinic.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<html>
              <div>
                  <div>
                      <center>
                          <h2>Clinics Under Us</h2>
                      </center>
                  </div>
                  <asp:DataList ID="DataList1" CellPadding="4" RepeatColumns="2" runat="server"  SelectedIndex="1" TabIndex="2" ForeColor="#333333" RepeatDirection="Horizontal">
                      
                     
                      <ItemTemplate>
                          <table>
                              <tr>
                                  <td>
                                      <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("org_img") %>' Height="200px" width="200px"/></td>
                              </tr>
                              <tr>
                                  <td>ID</td>
                                  <br />
                                  <td><%#Eval("org_id") %></td>
                              </tr>
                              <tr>
                                  <td>Name</td>
                                  <br />
                                  <td><%#Eval("org_name") %></td>
                              </tr>
                           
                              <tr>
                                  <td>Location</td>
                                  <td><%#Eval("org_address") %></td>
                              </tr>
                              <tr>
                                  <td>Time</td>
                                  <td><%#Eval("org_time") %></td>
                              </tr>
                              <hr />
                              
                              <tr>
                                  <td>Description</td>
                                  <td><%#Eval("org_desc") %></td>
                              </tr>
                          </table>

                          
                      </ItemTemplate>
                     
                  </asp:DataList>
                  <a href="doctors.aspx">Visit Doctors >></a><br><br>
              </div>
    </html>

</asp:Content>
