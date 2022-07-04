<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="our_services.aspx.cs" Inherits="WeCarePetClinic.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>
<html>
<head>
	<title></title>
    <link href="css/services_css.css" rel="stylesheet" />
</head>
<body>

	<div class="container">
		<h2>Welcome to Our Services</h2>
		
		<div class="row mb-5">
			<div class="col-md-4">
				<div class="card">
					<img src= "img/services_imgs/paw.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">PAW Plans</h5>
						<p class="card-text">PAW Plans provide your pet with preventive care to ensure a safe and happy life. </p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="img/services_imgs/micro.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Microchipping</h5>
						<p class="card-text">Microchip identification is the most reliable way to reunite lost pets with their owners.</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="img/services_imgs/dermitology-img.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Dermatology</h5>
						<p class="card-text">Dermatology is the branch of medicine that deals with the diagnosis and treatment of skin disorders.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- row -->
		
		<div class="row mb-5 cstm-height-card">
			<div class="col-md-4">
				<div class="card">
					<img src="img/services_imgs/pet-cleaning.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Parasite Control (Fleas, Ticks & Heartworms)</h5>
						<p class="card-text">Parasites such as fleas and ticks can be very damaging to your pet’s health. Preventive measures should be taken year-round to inhibit potential outbreaks.</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="img/services_imgs/Vaccinations.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Vaccinations</h5>
						<p class="card-text">Preventative care is an important aspect in maintaining your pet’s health. Proper vaccination is vital in protecting them against harmful diseases.</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="img/services_imgs/pet-eating.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Diet & Nutrition</h5>
						<p class="card-text">Proper diet and nutrition can help your pet fight against disease, maintain a proper weight, and promote the overall well-being of your pet.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- row -->
		<div class="row">
			<div class="col-md-6">
				<div class="card mb-3">
					<div class="row no-gutters align-items-center">
						<div class="col-md-4">
							<img src="img/services_imgs/pet-dental.jpg" class="card-img-top" alt="...">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">Dentistry</h5>
								<p class="card-text">Annual dental exams and cleanings are recommended to protect your pet from many health problems and help them maintain a healthy and clean mouth.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card mb-3">
					<div class="row no-gutters align-items-center">
						<div class="col-md-4">
							<img src="img/services_imgs/pet-a.jpg" class="card-img-top" alt="...">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">Allergies</h5>
								<p class="card-text">Allergies can make life uncomfortable for your pet. Protect them from irritation with proper testing and treatment to relieve any symptoms.</p>
								<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- row -->
</div><div class="container">
		<div class="row mb-5">
			<div class="col-md-4">
				<div class="card">
					<img src="img/services_imgs/doggos.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Boarding</h5>
						<p class="card-text">No matter where you’re going, or where you’re coming from, rest assured that our priority is keeping your furry friend happy, healthy and safe. </p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="img/services_imgs/gomming.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Grooming </h5>
						<p class="card-text">Regular grooming is essential to the maintenance of your pet's health. Keep your pet smelling and looking attractive, prevent parasites, and skin irritations.</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img src="img/services_imgs/cat.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Laser Therapye</h5>
						<p class="card-text">Laser therapy is a surgery-free, drug-free, noninvasive treatment to reduce pain, inflammation, and speed the healing process. Veterinary laser therapy has been scientifically proven to help treat post-surgical pain and many acute and chronic conditions.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

</asp:Content>
