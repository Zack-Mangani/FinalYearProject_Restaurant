<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpeningForm.aspx.cs" Inherits="FinalYearProject_FusionRestaurant.OpeningForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Veranda Fusion Restaurant</title>
    <link rel="website icon" type="png" href="Assets/Logo/logoRestaurant.png">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <style>
        body, html {
            font-family: 'Raleway', sans-serif;
            background-color: #F6F6F6; 

        }

        .img-fluid {
            max-height: 100px;
            width: auto;
        }

        .navbar {
            background-color: #363435;
        }

        .navbar-brand, .nav-link {
            color: #F6F6F6 !important;
        }

        .nav-link:hover {
            color: #cccccc !important;
        }

        #welcome-section {
            background-image: url('Assets/Images/testimage.jpg');
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #363435;
        }

        

        #welcome-section h1, #welcome-section h2 {
            -webkit-text-stroke: 1px #F6F6F6;
            text-shadow: -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff, 1px 1px 0 #fff;
        }

        #welcome-section h1 {
            font-size: 2.5rem; 
            font-weight: 300;
            line-height: 1.2;
        }

        #welcome-section h2 {
            font-size: 1.5rem; 
            font-weight: 300;
        }

        @media (min-width: 768px) {
            #welcome-section h1 {
                font-size: 4.5rem;
            }

            #welcome-section h2 {
                font-size: 2.5rem;
            }
        }

                /* Search form styling */
        .form-inline .form-control {
            background-color: transparent;
            border: 1px solid #F6F6F6;
            color: #F6F6F6;
            border-radius: 0;
        }

        .form-inline .form-control::-webkit-input-placeholder {
            color: #F6F6F6;
        }

        .form-inline .form-control:focus {
            box-shadow: none;
            background-color: transparent;
            border-color: #cccccc;
        }

        .navbar .btn-outline-success {
            border: 1px solid #F6F6F6;
            margin-right: 10px; /* Adjust the value as needed */
            color: #F6F6F6;
            background-color: transparent;
        }

        .navbar .btn-outline-success:hover {
            border-color: #cccccc;
            color: #cccccc;
        }

        .about-section {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            min-height: 100vh;
            background-color: #f6f6f6; /* Your desired background color */
        }

        #aboutUsSection {
            min-height: 100vh;
            /* Other styles */
        }

        .about-content {
            max-width: 50%;
        }

        .about-icon {
            font-size: 3rem; /* Adjust size as needed */
            color: #363435; /* The color you want for your icon */
            margin-bottom: 15px;
        }

        .social-media {
            margin: 20px 0;
        }

        .social-media a {
            display: inline-flex; /* Use flexbox for centering */
            align-items: center; /* Center align items vertically */
            justify-content: center; /* Center align items horizontally */
            margin-right: 10px; /* Adjust spacing as needed */
            text-decoration: none;
            font-size: 45px; /* Adjust the size of the icon */
            color: #f6f6f6; /* Icon color */
            border: 2px solid #f6f6f6; /* Adjust border size and color as needed */
            border-radius: 40%; /* Circular border */
            width: 60px; /* Adjust width for bigger size */
            height: 60px; /* Adjust height for bigger size */
            background-color: #363435; /* Grey background */
            transition: all 0.3s ease;
        }

        .social-media a:hover {
            background-color: #a9a9a9; /* Slightly lighter grey on hover */
            border-color: #a9a9a9;
        }



        .about-images {
            max-width: 50%;
        }

        .about-images img {
            max-width: 100%;
            height: auto;
            display: block;
        }

        .btn-primary {
            background-color: #B01F21; /* Change to match your design */
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border: #B01F21;
            border-radius: 5px;
            display: inline-block;
        }

        .btn-primary:hover {
            background-color: #333; /* Change to match your design */
        }

        .fab {
            font-size: 30px; /* Change as per your design */
        }

        @media (max-width: 768px) {
        .about-section {
            flex-direction: column;
        }

        .about-content, .about-images {
            width: 100%;
            max-width: none;
        }

    }

        .about-images {
            position: relative;
            width: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .img-rotate {
            position: absolute;
            width: 33%; /* Adjust the width as necessary */
            transition: transform 0.3s ease;
        }

        .img-1 {
            transform: rotate(-10deg);
            left: 10%; /* Adjust as necessary */
            top: -20%; /* Adjust as necessary */
            z-index: 2;
        }

        .img-2 {
            transform: rotate(5deg);
            left: 15%; /* Adjust as necessary */
            top: 10%; /* Adjust as necessary */
        }

        .img-3 {
            transform: rotate(-5deg);
            left: 35%; /* Adjust as necessary */
            top: 5%; /* Adjust as necessary */
        }

        .search-box {
            position: relative;
            width: fit-content;
            margin-right: 10px; /* Adjust as necessary */
        }

        .form-inline .form-control {
            background-color: transparent;
            border: 1px solid #F6F6F6;
            color: #F6F6F6;
            border-radius: 0;
            padding-right: 50px; /* Make padding to fit the button inside */
        }

        .form-inline .btn-outline-success {
            position: absolute;
            top: 0;
            right: 0;
            border: 1px solid #F6F6F6;
            color: #F6F6F6;
            background-color: transparent;
            border-top-right-radius: 0.25rem; /* Match the border-radius of the form-control */
            border-bottom-right-radius: 0.25rem; /* Match the border-radius of the form-control */
        }



    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <a class="navbar-brand" href="#">
        <img src="Assets/Logo/logoRestaurant.png" alt="MyApp Logo" class="img-fluid">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#welcome-section">HOME</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#viewMenuSection">VIEW MENU</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#gallerySection">GALLERY</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#contactSection">CONTACT</a>
            </li>
            <li class="nav-item">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">BOOK</button>
            </li>

            <li class="nav-item">
               <form class="form-inline my-2 my-lg-0">
                   <div class="search-box">
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                        <i class="fas fa-microphone"></i>

                  </div>
               </form>  
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#settingsSection">
                    <i class="fas fa-cog"></i> SETTINGS
                </a>
            </li>
        </ul>
    </div>
</nav>


    <div id="welcome-section">
        <h1>Veranda Fusion Restaurant</h1>
        <h2>Pizza, Pasta & Grill</h2>
        <button type="button" class="btn btn-primary mt-3" onclick="location.href='#aboutUsSection'">ABOUT US</button>
    </div>



       
      
        
    <div id="aboutUsSection" class="about-section">
        <div class="about-images">
                 <img src="Assets\Images\AboutImage1.jpg" alt="First Image Description" class="img-rotate img-1">
                 <img src="Assets\Images\AboutImage2.jpg" alt="Second Image Description" class="img-rotate img-2">
                 <img src="Assets\Images\AboutImage3.jpg" alt="Third Image Description" class="img-rotate img-3">
         </div>

        <div class="about-content">
            <div class="about-icon">
                <i class="fas fa-utensils"></i> <!-- Change to your desired icon -->
            </div>
            <h2>ABOUT US</h2>
               <p>A new concept and eatery in the heart of St. Julian's, the Veranda Fusion Restaurant is your next food destination.</p>
               <p>The menu is a mix of local pizza, pasta and grill Mediterranean cuisine favourites, together with choices real charcoal grilled meats and concepts from Eastern Europe.</p>
               <p>There is an ample choice of both alfresco dining and welcoming stylish airconditioned interiors. Set just off Balluta Bay, the Veranda Fusion Restaurant is ideally located right between the hustle and bustle of central St. Julian's and the more family friendly seafront promenade. </p>
               <p>So whatever your mood, be it a divine pizza, tasty pasta or genuine BBQ experience, check us out and we will repay you with welcoming service and great dining.</p>       
       
                <!-- Add more paragraphs as needed -->
                 <div class="social-media">
                    <a href="https://www.facebook.com/verandagillandwine" target="_blank"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://www.instagram.com/verandamalta/" target="_blank"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.tripadvisor.com/Restaurant_Review-g227101-d25252242-Reviews-Veranda_Fusion_Restaurant-Saint_Julian_s_Island_of_Malta.html" target="_blank"><i class="fab fa-tripadvisor"></i></a>
                </div>
            <a href="#viewMenuSection" class="btn btn-primary">VIEW MENU</a>
        </div>
    </div>

      

    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function(event) { 
            document.querySelectorAll('a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function (e) {
                    e.preventDefault();
                    document.querySelector(this.getAttribute('href')).scrollIntoView({
                        behavior: 'smooth'
                    });
                });
            });
        });
    </script>
    
    </body>
</html>
