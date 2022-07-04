 <%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="testimonials.aspx.cs" Inherits="WeCarePetClinic.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>
<head>
    <title>card-bootstrap</title>
    <link rel="stylesheet" type="text/css" href="css/StyleSheet_cards.css">
</head>
<body>

<section class="py-5">
    <div class="container">
        <!-- FOR DEMO PURPOSE -->
        <div class="row">
            <div class="col-lg-6 mx-auto">
                <header class="text-center pb-5">
                    <h1 class="h2">What Our Clients Says</h1>
                </header>
            </div>
        </div><!-- END -->


        <div class="row">
            <div class="col-lg-6 mx-auto">

                <!-- CUSTOM BLOCKQUOTE -->
                <blockquote class="blockquote blockquote-custom bg-white p-5 shadow rounded">
                    <div class="blockquote-custom-icon bg-info shadow-sm"><i class="fa fa-quote-left text-white"></i></div>
                    <p class="mb-0 mt-2 font-italic">They always take such great care of my babies. They really genuinely care about animals here and they go above and beyond to help them.I have been coming here for a few years now and I just love them so much. <a href="#" class="text-info">@wecare</a>."</p>
                    <footer class="blockquote-footer pt-4 mt-4 border-top">North Solapur,
                        <cite title="Source Title">Sunny K</cite>
                    </footer>
                </blockquote><!-- END -->

            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 mx-auto">

                <!-- CUSTOM BLOCKQUOTE -->
                <blockquote class="blockquote blockquote-custom bg-white p-5 shadow rounded">
                    <div class="blockquote-custom-icon bg-info shadow-sm"><i class="fa fa-quote-left text-white"></i></div>
                    <p class="mb-0 mt-2 font-italic">The best group of caring professionals you will find.  They are so respectful of their patients and the humans. Thank you Preeti, Dr. Disha and Dr. Ashish <a href="#" class="text-info">@wecare</a>."</p>
                    <footer class="blockquote-footer pt-4 mt-4 border-top">Madha,
                        <cite title="Source Title">Raj Manik</cite>
                    </footer>
                </blockquote><!-- END -->

            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 mx-auto">

                <!-- CUSTOM BLOCKQUOTE -->
                <blockquote class="blockquote blockquote-custom bg-white p-5 shadow rounded">
                    <div class="blockquote-custom-icon bg-info shadow-sm"><i class="fa fa-quote-left text-white"></i></div>
                    <p class="mb-0 mt-2 font-italic">The staff at WeCare Veterinary Hospital are top of the line. They are kind, caring individuals who went above and beyond in my pet Mom crisis with my Robby. I couldn’t have had a better experience with this group of absolute Angels<a href="#" class="text-info">@wecare</a>."</p>
                    <footer class="blockquote-footer pt-4 mt-4 border-top">Solapur,
                        <cite title="Source Title">Sakshi N</cite>
                    </footer>
                </blockquote><!-- END -->

            </div>
        </div>
       
    </div>
</section>

</body>
</html>

</asp:Content>
