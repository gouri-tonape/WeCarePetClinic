<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="homepage1.aspx.cs" Inherits="WeCarePetClinic.homepage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
    <head>
        <title>Home</title>
 <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/AboutUsDemo.css" rel="stylesheet" />
        </head>
        <body>
<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="4000">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    
  </ol>
    
    <!-- Indicators -->
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active" "w-100">
      <img src="img/21.jpg" alt="first slide">
        <div class="carousel-caption d-none d-md-block">
    <h2>Loving pet care in your neighborhood</h2>
    <p>...</p>
  </div>
    </div>

    <div class="item" "w-100">
      <img src="img/s-5.jpg" alt="second slide">
        <div class="carousel-caption d-none d-md-block">
    <h2>Caring For Your Pet ALWAYS "in ALL WAYS"</h2>
    <p>...</p>
  </div>
    </div>

    <div class="item" "w-100">
      <img src="img/s-9.jpg" alt="third slide">
        <div class="carousel-caption d-none d-md-block">
    <h2>WE CARE - A LOT</h2>
    <p>...</p>
  </div>
    </div>
      
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
            <!--about us-->
            
    <div class="about"> 
        <div class="inner-section">
           
            <h1>About Us</h1>
            <p class="text">
                
               We are a full-service veterinary medical facility, offering a complete range of services to help keep our patients happy and healthy over the course of their lives. While we focus primarily on wellness and preventative care, we’re also well equipped and prepared to deal with any medical need that may arise for your pet. We offer advanced diagnostic testing, a full range of surgical services, routine and advanced pet dentistry, and more.<br /> We also provide laser therapy as an additional treatment option to help manage our patients’ pain, assist with rehabilitation, and speed healing following surgery or injury. Along with our medical services, we also provide full-service boarding and professional grooming to provide our clients with one-stop-shopping for their pets in one convenient location.
            </p>
            <div class="skills">
                <asp:Button ID="Button2" runat="server" Text="Services" OnClick="Button2_Click" />
            </div>
        </div>
    </div>
    <div class="about2">
        <div class="inner-section">
            <h1>Pets We Care For</h1>
           <p class="text">
               Over the years, we’ve worked hard to develop lifelong relationships with our clients, and to establish bonds with the animals that they love. We believe that these connections provide the foundation for quality veterinary care, and allow us to deliver the most customized, effective care available to each patient we serve. The more we know and understand you and your pet, the better we’ll be able to provide you both with the exceptional care and service you deserve.
           </p>
            <div class="skills">
                
                    <asp:Button ID="Button1" runat="server" Text="Services" OnClick="Button1_Click" />
                
            </div>
        </div>
    </div>
        </body>
        </html>

</asp:Content>
