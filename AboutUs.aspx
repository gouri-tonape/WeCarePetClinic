<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WeCarePetClinic.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
    <head>
        <title>About Us</title>
 <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="css/AboutUsDemo.css" rel="stylesheet" />
    </head>
    <body>
      <div class="about"> 
        <div class="inner-section">
           
            <h1>About Us</h1>
            <p class="text">
                
               We are a full-service veterinary medical facility, offering a complete range of services to help keep our patients happy and healthy over the course of their lives. While we focus primarily on wellness and preventative care, we’re also well equipped and prepared to deal with any medical need that may arise for your pet. We offer advanced diagnostic testing, a full range of surgical services, routine and advanced pet dentistry, and more.<br /> We also provide laser therapy as an additional treatment option to help manage our patients’ pain, assist with rehabilitation, and speed healing following surgery or injury. Along with our medical services, we also provide full-service boarding and professional grooming to provide our clients with one-stop-shopping for their pets in one convenient location.
            </p>
            <div >
                <asp:Button ID="Button1" CssClass="skills" runat="server" Text="Services" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
    <div class="about2">
        <div class="inner-section">
            <h1>Pets We Care For</h1>
           <p class="text">
               Over the years, we’ve worked hard to develop lifelong relationships with our clients, and to establish bonds with the animals that they love. We believe that these connections provide the foundation for quality veterinary care, and allow us to deliver the most customized, effective care available to each patient we serve. The more we know and understand you and your pet, the better we’ll be able to provide you both with the exceptional care and service you deserve.
           </p>
           <div >
               
                    <asp:Button ID="Button2" CssClass="skills" runat="server" Text="Services" OnClick="Button2_Click" />
                
            </div>
        </div>
    </div>
</body>
    </html>

</asp:Content>
