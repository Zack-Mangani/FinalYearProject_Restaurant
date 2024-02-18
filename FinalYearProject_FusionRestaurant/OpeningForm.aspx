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
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhwVhIgOouv6YNuQvEZe-kJhIuYxl6KjDmju8_Hkcenw&s');
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

        .about-section {
            display: flex;
            flex-direction: row; /* Changed to row to align items horizontally */
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #f2f2f2;
            min-height: 100vh; /* This will make it the same height as the welcome-section */
        }

        /* Ensure content within about-section is also centered */
        .about-content, .about-images {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        /* Add this to make sure images do not stretch beyond their natural size */
        .about-images img {
            max-width: 100%;
            height: auto;
            max-height: 100%; /* Add this line */
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
            color: #F6F6F6;
            background-color: transparent;
        }

        .navbar .btn-outline-success:hover {
            border-color: #cccccc;
            color: #cccccc;
        }

        .about-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #f6f6f6; 
        }

        .about-content {
            max-width: 50%;
        }

        .social-media {
            margin: 20px 0;
        }

        .social-media a {
            margin-right: 10px;
            text-decoration: none;
            color: #000; /* Change to match your design */
        }

        .social-media a:hover {
            color: #555; /* Change to match your design */
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
            background-color: #000; /* Change to match your design */
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
        }

        .btn-primary:hover {
            background-color: #333; /* Change to match your design */
        }

        /* Font Awesome Icons */
        .fab {
            font-size: 24px; /* Change as per your design */
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
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
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
        <button type="button" class="btn btn-primary mt-3">ABOUT US</button>
    </div>



       
           <h2>ABOUT US</h2>
        
    <div class="about-section">

             <div class="about-images">
            <img src="path-to-your-image.jpg" alt="Image description">
            <!-- Add more images as needed -->
        </div>

         <div class="about-content">
           <p>A new concept and eatery in the heart of St. Julian's, the Veranda Fusion Restaurant is your next food destination.</p>
           <p>The menu is a mix of local pizza, pasta and grill Mediterranean cuisine favourites, together with choices real charcoal grilled meats and concepts from Eastern Europe.</p>
           <p>There is an ample choice of both alfresco dining and welcoming stylish airconditioned interiors. Set just off Balluta Bay, the Veranda Fusion Restaurant is ideally located right between the hustle and bustle of central St. Julian's and the more family friendly seafront promenade. </p>
           <p>So whatever your mood, be it a divine pizza, tasty pasta or genuine BBQ experience, check us out and we will repay you with welcoming service and great dining.</p>       
       
            <!-- Add more paragraphs as needed -->
             <div class="social-media">
                <a href="https://www.facebook.com/verandagillandwine" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://www.instagram.com/verandamalta/" target="_blank"><i class="fab fa-instagram"></i></a>
                <a href="https://www.tripadvisor.com/Restaurant_Review-g227101-d25252242-Reviews-Veranda_Fusion_Restaurant-Saint_Julian_s_Island_of_Malta.html" target="_blank"><i class="fab fa-tripadvisor"></i></a>

                <a href="your-other-social-media" target="_blank"><i class="social-icon-class"></i></a>
            </div>
            <a href="#viewMenuSection" class="btn btn-primary">VIEW MENU</a>
      </div>
       
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
