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
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: fit-content;
        }

        .social-media {
            margin: 20px 0;
            display: flex;
            align-items: center;
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
                    background-color: #B01F21; /* Slightly lighter grey on hover */
                    border-color: #B01F21;
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

        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }

        .header {
            text-align: center;
            padding: 5px;
        }

        .content {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .left-column, .right-column {
            width: 48%;
        }

        .image-gallery {
            display: flex;
            justify-content: space-between;
        }

        .icon {
            justify-content: center;
        }

        .image-gallery div {
            width: 32%;
        }

        .image-gallery img {
            width: 100%;
            height: auto;
        }

        .menu-section {
            text-align: center; /* Centers the menu title */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            min-height: 100vh;
            background-color: #f6f6f6; /* Your desired background color */
        }


        /* Styles for each individual category item */
        #bar-menu-categories li, #menu-categories li {
            background-color: #333;
            border: none;
            color: white;
            text-align: center;
            padding: 10px 20px;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            border-radius: 20px;
            display: inline-block; /* Use inline-block for horizontal layout */
            margin: 0 10px; /* Adjust as needed for spacing between items */
            flex: 0 0 auto; /* Do not grow or shrink */
            min-width: calc(25% - 20px); /* Adjust the width to fit 4 items, subtract the total margin space */
        }


            #menu-categories li:hover, #menu-categories li.active {
                background-color: #B01F21; /* blue background for active/hover state */
            }

            #bar-menu-categories li:hover, #bar-menu-categories li.active {
                background-color: #B01F21; /* blue background for active/hover state */
            }

        .menu-item {
            display: none;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin: 10px;
            padding: 10px;
            width: 250px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Add shadow for depth */
            background-color: #363435; /* Ensure background is white */
        }

            .menu-item img {
                width: 100%;
                border-radius: 8px;
            }

            .menu-item h3 {
                margin: 0;
                color: #f3f3f3;
            }

            .menu-item p {
                color: #f3f3f3;
            }

            .menu-item .price {
                color: #B01F21;
                font-weight: bold;
            }

        .menu-container {
            display: flex;
            flex-direction: column; /* Stacks items vertically */
            align-items: center; /* Centers items horizontally */
            justify-content: center;
        }

        .bar-menu-categories, .menu-categories {
            order: 1;
            flex: 1; /* Adjust as needed */
            padding-right: 20px; /* Spacing between categories and items */
        }

        .menu-items {
            order: 2; /* Ensures that items are below the categories */
            width: 100%;
            flex: 3; /* Adjust as needed */
        }

        #bar-menu-categories, #menu-categories {
            display: flex;
            overflow-x: hidden;
            white-space: nowrap;
            scroll-behavior: smooth;
            list-style: none;
            padding-left: 0;
            margin-bottom: 0;
            flex-wrap: nowrap;
        }

        /* Custom styles for the carousel control (arrows) */
        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            height: 50px; /* increase the size of the icons */
            width: 50px; /* increase the size of the icons */
            outline: black;
            background-size: 50%, 50%;
            border-radius: 50%;
            border: 1px solid black; /* add border color */
            background-color: black; /* change background color */
        }

        .menu-navigation {
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative; /* Ensure that the navigation arrows are positioned relative to this container */
        }



        /* Adjust arrow button positioning */
        .menu-control-prev, .menu-control-next {
            position: absolute; /* Position arrows absolutely within the parent */
            top: 50%; /* Center vertically */
            transform: translateY(-50%); /* Adjust alignment to the middle */
            z-index: 10; /* Ensure arrows are above other content */
            cursor: pointer;
            flex: 0 0 auto; /* Do not grow or shrink */
        }

        .menu-control-prev {
            left: 0; /* Position at the start of the categories */
        }

        .menu-control-next {
            right: 0; /* Position at the end of the categories */
        }

        /* Use SVG or Font Awesome icons for the arrows */
        .menu-control-prev-icon:before,
        .menu-control-next-icon:before {
            content: '\f104'; /* FontAwesome left arrow */
            font-family: 'Font Awesome 5 Free';
            font-weight: 900;
        }

        .menu-control-next-icon:before {
            content: '\f105'; /* FontAwesome right arrow */
        }

        .menu-control-prev-icon, .menu-control-next-icon {
            font-size: 24px;
        }

        .container.menu-navigation {
            display: flex;
            align-items: center;
            justify-content: space-between;
            /* Add more styling here */
        }

        .menu-categories-scroll {
            overflow-x: auto;
            flex: 1; /* Allow this to take up available space */
            min-width: 0; /* Allows this element to shrink as needed */
        }

        .row.align-items-center.justify-content-between {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%; /* Ensure the row takes full width */
        }

        .about-icon .icon {
            width: 80px; /* Adjust width as needed */
            height: auto; /* This will maintain the aspect ratio of the image */
            display: block; /* This can center the image in the div if needed */
            margin: 0 auto; /* This centers the image horizontally within the div */
        }


        .menu-toggle {
            /* Add styling for your toggle switch container */
        }

        .toggle-button {
            /* Add styling for your toggle buttons */
        }

            .toggle-button.active {
                /* Add styling for the active toggle button */
            }

        .menu-content {
            display: none;
            /* Add styling for your menu content */
        }

            .menu-content.active {
                display: block;
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
                    <a class="nav-link" href="#menu-section">VIEW MENU</a>
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

                        </div>
                    </form>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#settingsSection">
                        <i class="fas fa-cog"></i>SETTINGS
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
        <div class="container">
            <div class="about-icon">
                <img src="Assets\Images\about-us.png" alt="About Us Icon" class="icon">
            </div>
            <div class="header">
                <h1>ABOUT US</h1>
            </div>

            <div class="content">
                <div class="left-column">
                    <!-- Image gallery -->
                    <div class="image-gallery">
                        <div>
                            <img src="Assets\Images\AboutImage1.jpg" alt="First Image Description" class="img-rotate img-1">
                        </div>
                        <div>
                            <img src="Assets\Images\AboutImage2.jpg" alt="Second Image Description" class="img-rotate img-2">
                        </div>
                        <div>
                            <img src="Assets\Images\AboutImage3.jpg" alt="Third Image Description" class="img-rotate img-3">
                        </div>
                    </div>
                </div>
                <div class="right-column">
                    <!-- Text content -->
                    <p>A new concept and eatery in the heart of St. Julian's, the Veranda Fusion Restaurant is your next food destination.</p>
                    <p>The menu is a mix of local pizza, pasta and grill Mediterranean cuisine favourites, together with choices real charcoal grilled meats and concepts from Eastern Europe.</p>
                    <p>There is an ample choice of both alfresco dining and welcoming stylish airconditioned interiors. Set just off Balluta Bay, the Veranda Fusion Restaurant is ideally located right between the hustle and bustle of central St. Julian's and the more family friendly seafront promenade. </p>
                    <p>So whatever your mood, be it a divine pizza, tasty pasta or genuine BBQ experience, check us out and we will repay you with welcoming service and great dining.</p>

                    <div class="social-media">
                        <a href="https://www.facebook.com/verandagillandwine" target="_blank"><i class="fab fa-facebook-f"></i></a>
                        <a href="https://www.instagram.com/verandamalta/" target="_blank"><i class="fab fa-instagram"></i></a>
                        <a href="https://www.tripadvisor.com/Restaurant_Review-g227101-d25252242-Reviews-Veranda_Fusion_Restaurant-Saint_Julian_s_Island_of_Malta.html" target="_blank"><i class="fab fa-tripadvisor"></i></a>
                    </div>
                    <div class="menu-button">
                        <a href="#viewMenuSection" class="btn btn-primary" target="_blank">VIEW MENU</a>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div id="menu-section" class="menu-section">


        <div class="container">

            <div class="about-icon">
                <img src="Assets\Images\FoodMenuIcon.png" alt="Food Menu Icon" class="icon">
            </div>




            <div class="header">
                <h1>FOOD MENU</h1>
            </div>
            <div class="menu-container">

                <!-- Toggle Switch -->
                <div class="menu-toggle">
                    <button id="foodMenuButton" class="toggle-button active">FOOD MENU</button>
                    <button id="barMenuButton" class="toggle-button">BAR MENU</button>
                </div>

                <!-- Food Menu Content -->
                <div id="foodMenuContent" class="menu-content active">
                    <!-- Neeeeeeeew -->

                    <div class="container menu-navigation">
                        <div class="row align-items-center justify-content-between">
                            <!-- Previous Arrow -->
                            <div class="col-auto">
                                <div class="menu-control-prev" role="button">
                                    <img src="Assets\Images\leftArrow.png" alt="Previous" class="menu-control-prev-icon">
                                </div>
                            </div>

                            <!-- Menu Categories -->
                            <div class="col overflow-hidden">
                                <div class="d-flex justify-content-center menu-categories-scroll">
                                    <ul id="menu-categories" class="list-unstyled d-flex mb-0">
                                        <li class="active" onclick="showMenu('starters', this)">Starters</li>
                                        <li onclick="showMenu('salad', this)">Salads</li>
                                        <li onclick="showMenu('platters', this)">Platters</li>
                                        <li onclick="showMenu('fusionmaindishes', this)">Fusion Main Dishes</li>
                                        <li onclick="showMenu('maindishes', this)">Main Dishes</li>
                                        <li onclick="showMenu('burgers', this)">Burgers</li>
                                        <li onclick="showMenu('glutenFree', this)">Gluten Free</li>
                                        <li onclick="showMenu('maindishes', this)">Pasta</li>
                                        <li onclick="showMenu('maindishes', this)">Pizza</li>
                                        <li onclick="showMenu('maindishes', this)">Risotto</li>
                                        <li onclick="showMenu('deserts', this)">Desserts</li>
                                        <!-- Add more categories as needed -->
                                    </ul>
                                </div>
                            </div>

                            <!-- Next Arrow -->
                            <div class="col-auto">
                                <div class="menu-control-next" role="button">
                                    <img src="Assets\Images\rightArrow.png" alt="Next" class="menu-control-next-icon">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Neeeeeeeew -->
                </div>

                <div class="menu-items">
                    <section class="menu">
                        <!-- Starterss Items -->
                        <div id="startersCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item starters">
                                            <img src="Assets\Images\Bruschetta.jpg" alt="Bruschetta">
                                            <h3>Bruschetta</h3>
                                            <p>with tomatoes, mus of cheese and home made pesto</p>
                                            <p class="price">€6.98</p>
                                        </div>

                                        <div class="menu-item starters">
                                            <img src="Assets\Images\BruschettaVeranda.jpg" alt="Bruschetta Veranda">
                                            <h3>Bruschetta "Veranda"</h3>
                                            <p>with lukanka and Ajvar</p>
                                            <p class="price">€6.98</p>
                                        </div>

                                        <div class="menu-item starters">
                                            <img src="Assets\Images\ChickenWings.jpeg" alt="Chicken Wings">
                                            <h3>Chicken Wings</h3>
                                            <p>with french fries and BBQ sauce</p>
                                            <p class="price">€11.98</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item starters">
                                            <img src="Assets\Images\Mushrooms.jpeg" alt="Stuffed mushrooms">
                                            <h3>Stuffed mushrooms</h3>
                                            <p>charcoal grilled, stuffed with butter, bacon and cheese</p>
                                            <p class="price">€8.78</p>
                                        </div>

                                        <div class="menu-item starters">
                                            <img src="Assets\Images\shrimpss.jpeg" alt="Shrimps">
                                            <h3>Shrimps with Pernod and cherry tomatoes</h3>
                                            <p>glazed with butter and dill</p>
                                            <p class="price">€14.78</p>
                                        </div>

                                        <div class="menu-item starters">
                                            <img src="Assets\Images\freshVegtables.jpg" alt="Fresh vegetables">
                                            <h3>Fresh vegetables</h3>
                                            <p>charcoal grilled with aromatic marinate and mozzarella di'Bufala</p>
                                            <p class="price">€11.98</p>
                                        </div>

                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item starters">
                                            <img src="Assets\Images\KingPrawns.jpeg" alt="King Prawns">
                                            <h3>King Prawns</h3>
                                            <p>6 king prawns fried in garlic oil, sweet chilli and fresh herbs served with special dip</p>
                                            <p class="price">€11.78</p>
                                        </div>

                                        <div class="menu-item starters">
                                            <img src="Assets\Images\fistomisto.jpg" alt="Frito Mistos">
                                            <h3>Frito Misto</h3>
                                            <p>with home made tzatziki sauce, breaded calamari, lanterini, shrimps and mussel meat</p>
                                            <p class="price">€15.98</p>
                                        </div>

                                        <div class="menu-item starters">
                                            <img src="Assets\Images\muscels.jpg" alt="Veranda Mussels">
                                            <h3>Veranda Mussels</h3>
                                            <p>fresh mussels, butter sauce, white wine with garlic and lemon slices, onions and parsley</p>
                                            <p class="price">€10.98</p>
                                        </div>

                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item starters">
                                            <img src="Assets\Images\starters5.jpg" alt="Sicilian Mussels ~ spicy">
                                            <h3>Sicilian Mussels ~ spicy</h3>
                                            <p>fresh mussels, tomato sauce with peeled tomatoes, garlic, onions and parsley</p>
                                            <p class="price">€10.98</p>
                                        </div>

                                        <div class="menu-item starters">
                                            <img src="Assets\Images\starters1.jpg" alt="Shrimp with dill">
                                            <h3>Shrimp with dill</h3>
                                            <p>garlic and white wine</p>
                                            <p class="price">€13.58</p>
                                        </div>

                                        <div class="menu-item starters">
                                            <img src="Assets\Images\starters2.jpg" alt="Sweet potatoes fries">
                                            <h3>Sweet potatoes fries</h3>
                                            <p>with tzatziki sauce</p>
                                            <p class="price">€7.78</p>
                                        </div>

                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item starters">
                                            <img src="Assets\Images\starters3.jpg" alt="Onion rings">
                                            <h3>Onion rings</h3>
                                            <p>with tzatziki sauce</p>
                                            <p class="price">€7.78</p>
                                        </div>

                                        <div class="menu-item starters">
                                            <img src="Assets\Images\starters4.jpg" alt="Breaded Calamari">
                                            <h3>Breaded Calamari</h3>
                                            <p>with home made tzatziki sauce</p>
                                            <p class="price">€14.98</p>
                                        </div>



                                    </div>
                                </div>

                                <!-- Add more .carousel-item as needed -->
                            </div>
                            <a class="carousel-control-prev" href="#startersCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#startersCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>


                        <!-- Salad Items -->


                        <div id="saladCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item salad">
                                            <img src="Assets\Images\salad1.jpg" alt="Misto mare salad VERANDA" class="menu-img" data-toggle="modal" data-target="#imageModal">>
                                            <h3>Misto mare salad "VERANDA"</h3>
                                            <p>with seafood calamari, octopus, shrimps, on a fresh salad mix, avocado, cherry tomatoes, olives slices, mediterranean sauce</p>
                                            <p class="price">€16.78</p>
                                        </div>

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\salad2.jpeg" alt="Mix fresh salads with backed goat cheese">
                                            <h3>Mix fresh salads with backed goat cheese</h3>
                                            <p>cherry tomatoes, walnuts and balsamic dressing</p>
                                            <p class="price">€13.98</p>
                                        </div>

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\salad3.jpg" alt="Burrata with Avocado Salad">
                                            <h3>Burrata with Avocado Salad</h3>
                                            <p>mozzarella BURRATA, tomatoes, cherry tomatoes, avocado, pesto, rucola, balsamic reduction</p>
                                            <p class="price">€14.98</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item salad">
                                            <img src="Assets\Images\salad4.jpeg" alt="Veranda Caesar Salad">
                                            <h3>"Veranda" Caesar Salad</h3>
                                            <p>with Caesar dressing, grilled chicken, crunchy bacon, fresh iceberg, green salad, cherry tomatoes, parmesan, croutons</p>
                                            <p class="price">€14.98</p>
                                        </div>

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\salad5.jpg" alt="Greek Salad">
                                            <h3>Greek Salad</h3>
                                            <p>from Greece with love, tomatoes, cucumbers, fresh peppers, feta cheese, red onions, olives, olive oil, oregano</p>
                                            <p class="price">€9.98</p>
                                        </div>

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\salad6.jpeg" alt="Shopska Salad">
                                            <h3>Shopska Salad</h3>
                                            <p>traditional Bulgarian salad with tomatoes, cucumbers, fresh pepper, white Bulgarian cheese, onion, parsley</p>
                                            <p class="price">€9.98</p>
                                        </div>

                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item salad">
                                            <img src="Assets\Images\salad7.jpeg" alt="Vitamin Salad">
                                            <h3>Vitamin Salad</h3>
                                            <p>beetroot, carrots, apple, backed walnuts, special dressing and grilled chicken fillet</p>
                                            <p class="price">€12.98</p>
                                        </div>

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\salad8.jpg" alt="Balkan Salad">
                                            <h3>Balkan Salad</h3>
                                            <p>traditional Bulgarian salad, charcoal grilled peppers, charcoal grilled eggplant, tomatoes, white Bulgarian cheese and parsley</p>
                                            <p class="price">€11.98</p>
                                        </div>

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\salad9.jpg" alt="Caprese Salad">
                                            <h3>Caprese Salad</h3>
                                            <p>sliced tomatoes, mozzarella di'buffalo, home made pesto, arugula and olive oil</p>
                                            <p class="price">€11.90</p>
                                        </div>

                                    </div>
                                </div>

                                <!-- Add more .carousel-item as needed -->
                            </div>
                            <a class="carousel-control-prev" href="#saladCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#saladCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>



                        <!-- Platters Items -->


                        <div id="plattersCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item platters">
                                            <img src="Assets\Images\platters1.jpeg" alt="VERANDA sea food hot patter" class="menu-img" data-toggle="modal" data-target="#imageModal">>
                                            <h3>"VERANDA" sea food hot patter</h3>
                                            <p>octopus, calamari, shrimps, fresh mussels with shells, olives, Frito misto, mixed greens and tzatziki sauce</p>
                                            <p class="price">€64.98</p>
                                        </div>

                                        <div class="menu-item platters">
                                            <img src="Assets\Images\platters2.jpeg" alt="VERANDA mix meat hot platter">
                                            <h3>"VERANDA" mix meat hot platter</h3>
                                            <p>BBQ grilled gurmanska pljeskavica, pork neck steak, chicken nozeti, chicken fillet greek style, homemade flat sausage, karnache served with French fries, mix salads and bruschetta</p>
                                            <p class="price">€54.98</p>
                                        </div>

                                        <div class="menu-item platters">
                                            <img src="Assets\Images\platters3.jpeg" alt="Cold cuts Antipasta platter">
                                            <h3>Cold cuts Antipasta platter</h3>
                                            <p>selection, of dry meats and cheese, served with bruschetta</p>
                                            <p class="price">€25.78</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item platters">
                                            <img src="Assets\Images\platters4.jpeg" alt="LOCAL Platter">
                                            <h3>LOCAL Platter</h3>
                                            <p>octopus in butter and garlic, shrimps, buratta, rucola with cherry served with garlic bruschetta and home made pesto</p>
                                            <p class="price">€32.98</p>
                                        </div>


                                    </div>
                                </div>

                                <!-- Add more .carousel-item as needed -->
                            </div>
                            <a class="carousel-control-prev" href="#plattersCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#plattersCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>









                        <!-- Fusion Main Dishes Items -->


                        <div id="fusionmaindishesCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item fusionmaindishes">
                                            <img src="Assets\Images\Fmain1.jpeg" alt="Gurmanska Pleskavica" class="menu-img" data-toggle="modal" data-target="#imageModal">>
                                            <h3>Gurmanska Pleskavica</h3>
                                            <p>charcoal grilled minced meat, with fresh spices, bacon and cheese, served with french fries and ajvar</p>
                                            <p class="price">€14.78</p>
                                        </div>

                                        <div class="menu-item fusionmaindishes">
                                            <img src="Assets\Images\Fmain2.jpeg" alt="Chevapi 10pices">
                                            <h3>Chevapi 10pices</h3>
                                            <p>traditional, charcoal grilled minced meat rolls, served with french fries and ajvar</p>
                                            <p class="price">€14.78</p>
                                        </div>

                                        <div class="menu-item fusionmaindishes">
                                            <img src="Assets\Images\Fmain3.jpg" alt="Chicken Noisette">
                                            <h3>Chicken Noisette</h3>
                                            <p>charcoal grilled chicken skewer wrapped in bacon and filled with cheese, served with french fries and ajvar</p>
                                            <p class="price">€15.98</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item fusionmaindishes">
                                            <img src="Assets\Images\Fmain4.jpeg" alt="Stuffed Eggplant Karniyarik">
                                            <h3>Stuffed Eggplant Karniyarik</h3>
                                            <p>eggplants, ground beef filling, mozzarella and tomato sauce</p>
                                            <p class="price">€13.98</p>
                                        </div>

                                        <div class="menu-item fusionmaindishes">
                                            <img src="Assets\Images\Fmain5.jpeg" alt="Karnache">
                                            <h3>Karnache</h3>
                                            <p>traditional Bulgarian charcoal grilled meat sausage, served with french fries and ajvar</p>
                                            <p class="price">€13.78</p>
                                        </div>

                                        <div class="menu-item fusionmaindishes">
                                            <img src="Assets\Images\Fmain6.jpeg" alt="Beef Olives">
                                            <h3>Beef Olives</h3>
                                            <p>bacon, eggs, cheddar cheese and parsley wrapped in slice beef, slow cooked in red wine, served with roasted potatoes</p>
                                            <p class="price">€24.78</p>
                                        </div>

                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item fusionmaindishes">
                                            <img src="Assets\Images\Fmain7.jpeg" alt="Chicken Masala">
                                            <h3>Chicken Masala</h3>
                                            <p>Rich and creamy flavoursome chicken in a incredible curry sauce served with cashew nut rice</p>
                                            <p class="price">€15.78</p>
                                        </div>


                                        <div class="menu-item fusionmaindishes">
                                            <img src="Assets\Images\Fmain8.jpg" alt="Cashew Nut Rice">
                                            <h3>Cashew Nut Rice</h3>
                                            <p>basmati rice boiled with 12 herbs, fried cashews, fried onions, fresh parsley</p>
                                            <p class="price">€10.98</p>
                                        </div>


                                        <div class="menu-item fusionmaindishes">
                                            <img src="Assets\Images\Fmain9.jpg" alt="Homemade charcoal Grilled Flat Sausage">
                                            <h3>Homemade charcoal Grilled Flat Sausage</h3>
                                            <p>Served with French fries and ajar</p>
                                            <p class="price">€14.78</p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Add more .carousel-item as needed -->
                            </div>
                            <a class="carousel-control-prev" href="#fusionmaindishesCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#fusionmaindishesCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>





                        <!-- Main Dishes Items -->


                        <div id="maindishesCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main1.jpeg" alt="Sea Bass Fillet" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Sea Bass Fillet</h3>
                                            <p>Charcoal Grilled and garnish with Ratatouille and who'll charcoal backed potato with tzatziki sauce</p>
                                            <p class="price">€22.78</p>
                                        </div>

                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main2.jpeg" alt="Sea Bream Fillet" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Sea Bream Fillet</h3>
                                            <p>Charcoal Grilled(Dorada) garnish with Ratatouille and whole charcoal backed potato with tzatziki sauce</p>
                                            <p class="price">€22.78</p>
                                        </div>

                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main3.jpeg" alt="Octopus" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Octopus</h3>
                                            <p>with butter and garlic, garnished with whole charcoal backed potato with tzatziki sauce and salsa Verde</p>
                                            <p class="price">€22.78</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main4.jpeg" alt="Fresh Tuna Fillet" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Fresh Tuna Fillet</h3>
                                            <p>Charcoal Grilled, served with Ratatouille whole charcoal backed potato with tzatziki sauce</p>
                                            <p class="price">€17.98</p>
                                        </div>

                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main5.jpg" alt="Salmon Steak" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Salmon Steak</h3>
                                            <p>with aromatic fresh herbs, topped with Hollandaise sauce and garnished with charcoal grilled fresh vegetables</p>
                                            <p class="price">€21.78</p>
                                        </div>

                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main6.jpeg" alt="Beef Tomahawk for two" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Beef Tomahawk for two</h3>
                                            <p>Charcoal grilled with whole charcoal baked potato with tzatziki sauce, grilled vegetables, mix of fresh salads and chips</p>
                                            <p class="price">€63.98</p>
                                        </div>

                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main7.jpeg" alt="BEEF Fillet STEAK" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>BEEF Fillet STEAK</h3>
                                            <p>Charcoal Grilled with whole charcoal backed potato with tzatziki sauce and grilled vegetables</p>
                                            <p class="price">€23.98</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main8.jpeg" alt="Orata" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Orata</h3>
                                            <p>Oven baked, served with cherry tomatoes whole charcoal baked potato with tzatziki sauce and fresh herbs</p>
                                            <p class="price">€25.98</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main9.jpeg" alt="BEEF SKEWER" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>BEEF SKEWER</h3>
                                            <p>charcoal grilled in a special charcoal oven from beef fillet, portion of French fries and special sauce</p>
                                            <p class="price">€29.98</p>
                                        </div>
                                    </div>
                                </div>




                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main10.jpeg" alt="BEEF Ribeye STEAK" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>BEEF Ribeye STEAK</h3>
                                            <p>Charcoal Grilled served with whole charcoal backed potato with tzatziki sauce and charcoal grilled fresh vegetables</p>
                                            <p class="price">€31.98</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main11.jpeg" alt="BEEF Tagliata" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>BEEF Tagliata</h3>
                                            <p>Charcoal Grilled served with cherry tomatoes, rucola, parmigiano cheese and French fries</p>
                                            <p class="price">€26.98</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main12.jpeg" alt="BEEF T-Bone STEAK" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>BEEF T-Bone STEAK</h3>
                                            <p>Charcoal Grilled served with grilled vegetables who'll charcoal backed potato with tzatziki sauce</p>
                                            <p class="price">€33.98</p>
                                        </div>
                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main13.jpeg" alt="CHICKEN Caprese" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>CHICKEN Caprese</h3>
                                            <p>charcoal grilled garnished with mix of fresh greens, cherry tomatoes and whole charcoal baked potato with tzatziki sauce</p>
                                            <p class="price">€18.97</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main14.jpeg" alt="CHICKEN SKEWER" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>CHICKEN SKEWER</h3>
                                            <p>charcoal grilled in a special charcoal oven, portion of French fries and special sauce / Ajvar/</p>
                                            <p class="price">€21.98</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main15.jpeg" alt="CHICKEN Piri-Piri" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>CHICKEN Piri-Piri</h3>
                                            <p>garnished with French fries or sricy</p>
                                            <p class="price">€16.98</p>
                                        </div>
                                    </div>
                                </div>



                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main16.jpeg" alt="CHICKEN fillet Greek style" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>CHICKEN fillet Greek style</h3>
                                            <p>Charcoal Grilled garnished with French fries and salsa Verde</p>
                                            <p class="price">€15.78</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main17.jpeg" alt="Pork Spare Ribs" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Pork Spare Ribs</h3>
                                            <p>charcoal grilled garnished with fried potatoes and BBQ sauce</p>
                                            <p class="price">€18.98</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main18.jpg" alt="Juicy PORK Neck STEAK" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Juicy PORK Neck STEAK</h3>
                                            <p>charcoal Grilled garnished with soft-fried egg, mushrooms, fried potatoes and Ajvar</p>
                                            <p class="price">€16.98</p>
                                        </div>
                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main19.jpg" alt="PORK bally bacon on grill" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>PORK bally bacon on grill</h3>
                                            <p>with BBQ sauce served with fried potatoes and fresh tomatoes</p>
                                            <p class="price">€16.78</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main20.jpeg" alt="PORK SKEWER" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>PORK SKEWER</h3>
                                            <p>with vegetables, served with French fries and Ajvar</p>
                                            <p class="price">€21.98</p>
                                        </div>


                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main21.jpeg" alt="LAMB French Rack CUTLETS" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>LAMB French Rack CUTLETS</h3>
                                            <p>served with whole charcoal backed potato and grilled vegetables</p>
                                            <p class="price">€28.98</p>
                                        </div>
                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item maindishes">
                                            <img src="Assets\Images\main22.jpg" alt="BBQ Grilled Danish PORK Chop" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>BBQ Grilled Danish PORK Chop</h3>
                                            <p>with BBQ sauce served with fried potatoes and fresh tomatoes</p>
                                            <p class="price">€18.98</p>
                                        </div>
                                    </div>


                                    <!-- Add more .carousel-item as needed -->
                                </div>
                                <a class="carousel-control-prev" href="#maindishesCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#maindishesCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>












                            <!-- Burgers Items -->


                            <div id="burgersCarousel" class="carousel slide" data-interval="false">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item burgers">
                                                <img src="Assets\Images\burger1.jpeg" alt="Chicken Burger" class="menu-img" data-toggle="modal" data-target="#imageModal">>
                                            <h3>Chicken Burger</h3>
                                                <p>grilled chicken fillet, cheddar cheese, lettuce, pickles, tomatoes, dressing, French fries</p>
                                                <p class="price">€14.98</p>
                                            </div>

                                            <div class="menu-item burgers">
                                                <img src="Assets\Images\burger2.jpeg" alt="Veranda BEEF Burger" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>"Veranda" BEEF Burger</h3>
                                                <p>beef burger, cheddar cheese, tomatoes, onion rings, bacon, pickles, honey-mustard dressing, French fries and salad</p>
                                                <p class="price">€16.78</p>
                                            </div>

                                            <div class="menu-item burgers">
                                                <img src="Assets\Images\burger3.jpeg" alt="Avocado Burger vegetarian">
                                                <h3>Avocado Burger vegetarian</h3>
                                                <p>Avocado burger fried with avocado slices, cheddar, fresh greens, salsa tomatoes special mideterian sauce served with French fries</p>
                                                <p class="price">€11.98</p>
                                            </div>


                                        </div>
                                    </div>


                                    <!-- Add more .carousel-item as needed -->
                                </div>
                                <%--  <a class="carousel-control-prev" href="#burgersCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#burgersCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>--%>
                            </div>


                            <!-- Gluten Free Items -->
                            <div id="glutenFreeCarousel" class="carousel slide" data-interval="false">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item glutenFree">
                                                <img src="Assets\Images\glutenFree1.jpg" alt="Ricotta Ravioli" class="menu-img" data-toggle="modal" data-target="#imageModal">>
                                            <h3>Ricotta Ravioli</h3>
                                                <p>with tomato sauce and parsley</p>
                                                <p class="price">€15.98</p>
                                            </div>

                                            <div class="menu-item glutenFree">
                                                <img src="Assets\Images\glutenFree2.jpg" alt="Tortellini Spinach" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>Tortellini Spinach</h3>
                                                <p>creamy sauce, fresh tomatoes</p>
                                                <p class="price">€15.98</p>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Add more .carousel-item as needed -->
                                </div>
                                <a class="carousel-control-prev" href="#glutenFreeCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#glutenFreeCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>



                            <!-- Pizza Items -->
                            <div id="pizzaCarousel" class="carousel slide" data-interval="false">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\glutenFree1.jpg" alt="PIZZA Pepperoni" class="menu-img" data-toggle="modal" data-target="#imageModal">>
                                            <h3>PIZZA Pepperoni</h3>
                                                <p>tomato sauce, mozzarella, pepperoni salami</p>
                                                <p class="price">€13.98</p>
                                            </div>

                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\glutenFree2.jpg" alt="PIZZA Parma Ham" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>PIZZA Parma Ham</h3>
                                                <p>tomato sauce, capers, parma ham, rucola, cherry and grana padano shavings</p>
                                                <p class="price">€15.78</p>
                                            </div>


                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\glutenFree2.jpg" alt="PIZZA Tuna" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>PIZZA Tuna</h3>
                                                <p>with capers, onion, mozzarella and tomato sauce</p>
                                                <p class="price">€15.78</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\main19.jpg" alt="PIZZA Margarita" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>PIZZA Margarita</h3>
                                                <p>tomato sauce, mozzarella, basil, olive oil</p>
                                                <p class="price">€9.98</p>
                                            </div>


                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\main20.jpeg" alt="PIZZA Quattro Formaggi" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>PIZZA Quattro Formaggi</h3>
                                                <p>mozzarella, Gozo pepper cheese, blue cheese, baby mozzarella and cream</p>
                                                <p class="price">€13.98</p>
                                            </div>


                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\main21.jpeg" alt="Al Prosciutto e Funghi PIZZA" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>Al Prosciutto e Funghi PIZZA</h3>
                                                <p>tomato sauce, olive oil, oregano, mozzarella, prosciutto, funghi</p>
                                                <p class="price">€14.98</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\main19.jpg" alt="PIZZA VERANDA" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>PIZZA "VERANDA"</h3>
                                                <p>Ajvar, mozzarella, Bulgarian salami lukanka, white Bulgarian cheese, pickles, olives</p>
                                                <p class="price">€15.98</p>
                                            </div>


                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\main20.jpeg" alt="PIZZA Capricciosa" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>PIZZA Capricciosa</h3>
                                                <p>tomato sauce, mozzarella, fresh mushrooms, ham, eggs, olives and oregano</p>
                                                <p class="price">€14.98</p>
                                            </div>


                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\main21.jpeg" alt="PIZZA Calzone" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>PIZZA Calzone</h3>
                                                <p>tomato sauce, mozzarella, Beef mince, jalapeno, peppers, onion, mushrooms, rucola and grana padano shavings</p>
                                                <p class="price">€15.78</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item pizza">
                                                <img src="Assets\Images\main19.jpg" alt="Carbonara Pizza" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>Carbonara Pizza</h3>
                                                <p>mozzarella, pancetta, parmigiano, eggs, spices, touch of cream</p>
                                                <p class="price">€15.98</p>
                                            </div>



                                        </div>
                                    </div>



                                    <!-- Add more .carousel-item as needed -->
                                </div>
                                <a class="carousel-control-prev" href="#pizzaCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#pizzaCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>








                            <!-- Deserts Items -->
                            <div id="desertsCarousel" class="carousel slide" data-interval="false">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item deserts">
                                                <img src="Assets\Images\desert1.jpg" alt="Home made Biscuit cake with Nutella" class="menu-img" data-toggle="modal" data-target="#imageModal">>
                                            <h3>Home made Biscuit cake with Nutella</h3>
                                                <p>ingredients is a secret, delicious</p>
                                                <p class="price">€5.58</p>
                                            </div>

                                            <div class="menu-item deserts">
                                                <img src="Assets\Images\desert2.jpg" alt="Set of ice cream" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>Set of ice cream</h3>
                                                <p>chocolate, vanilla or strawberry</p>
                                                <p class="price">€15.98</p>
                                            </div>

                                            <div class="menu-item deserts">
                                                <img src="Assets\Images\desert3.jpeg" alt="Soufflé chocolate" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                                <h3>Soufflé chocolate</h3>
                                                <p>with scoop of ice-cream</p>
                                                <p class="price">€4.98</p>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item deserts">
                                                <img src="Assets\Images\desert4.jpeg" alt="Fresh Sweets From Our Display">
                                                <h3>Fresh Sweets From Our Display</h3>
                                                <p class="price">€5.78</p>
                                            </div>
                                        </div>

                                        <!-- Add more .carousel-item as needed -->
                                    </div>
                                    <a class="carousel-control-prev" href="#desertsCarousel" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#desertsCarousel" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>













                            <!-- Beer Items -->
                            <div class="menu-item beer">
                                <img src="lager_beer.jpg" alt="Lager Beer">
                                <h3>Lager Beer</h3>
                                <p>Smooth and crisp with a clean finish</p>
                                <p class="price">$6.00</p>
                            </div>

                            <div class="menu-item beer">
                                <img src="ipa_beer.jpg" alt="IPA Beer">
                                <h3>IPA Beer</h3>
                                <p>Bold and hoppy with a citrus kick</p>
                                <p class="price">$7.00</p>
                            </div>
                    </section>
                </div>


                <!-- Bar Menu Content -->
                <div id="barMenuContent" class="menu-content">
                    <!-- Bar menu items go here -->

                    <div class="container menu-navigation">
                        <div class="row align-items-center justify-content-between">
                            <!-- Previous Arrow -->
                            <div class="col-auto">
                                <div class="menu-control-prev" role="button">
                                    <img src="Assets\Images\leftArrow.png" alt="Previous" class="menu-control-prev-icon">
                                </div>
                            </div>

                            <!-- Menu Categories -->
                            <div class="col overflow-hidden">
                                <div class="d-flex justify-content-center menu-categories-scroll">
                                    <ul id="bar-menu-categories" class="list-unstyled d-flex mb-0">
                                        <li data-category="hello" class="active" onclick="showMenu('hello', this)">Beers</li>
                                        <li data-category="tt" onclick="showMenu('tt', this)">Coctails</li>
                                        <li onclick="showMenu('platters', this)">Soft Drinks</li>
                                        <li onclick="showMenu('fusionmaindishes', this)">Hot Drinks</li>
                                        <li onclick="showMenu('maindishes', this)">White Wines</li>
                                        <li onclick="showMenu('burgers', this)">Red Wines</li>
                                        <li onclick="showMenu('glutenFree', this)">Rose Wines</li>
                                        <li onclick="showMenu('maindishes', this)">Champagne,Prosecco & Sparkling</li>
                                        <li onclick="showMenu('maindishes', this)">Spirits, Liqueurs, Apertifs</li>
                                        <li onclick="showMenu('maindishes', this)">Milkshakes</li>
                                        <!-- Add more categories as needed -->
                                    </ul>
                                </div>
                            </div>

                            <!-- Next Arrow -->
                            <div class="col-auto">
                                <div class="menu-control-next" role="button">
                                    <img src="Assets\Images\rightArrow.png" alt="Next" class="menu-control-next-icon">
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="menu-items">
                        <section class="menu">
                            <!-- Starterss Items -->
                            <div id="helloCarousel" class="carousel slide" data-interval="false">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item hello">
                                                <img src="Assets\Images\Bruschetta.jpg" alt="Bruschetta">
                                                <h3>Bruschetta</h3>
                                                <p>with tomatoes, mus of cheese and home made pesto</p>
                                                <p class="price">€6.98</p>
                                            </div>

                                            <div class="menu-item hello">
                                                <img src="Assets\Images\BruschettaVeranda.jpg" alt="Bruschetta Veranda">
                                                <h3>Bruschetta "Veranda"</h3>
                                                <p>with lukanka and Ajvar</p>
                                                <p class="price">€6.98</p>
                                            </div>

                                            <div class="menu-item lol">
                                                <img src="Assets\Images\ChickenWings.jpeg" alt="Chicken Wings">
                                                <h3>Chicken Wings</h3>
                                                <p>with french fries and BBQ sauce</p>
                                                <p class="price">€11.98</p>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item hello">
                                                <img src="Assets\Images\Mushrooms.jpeg" alt="Stuffed mushrooms">
                                                <h3>Stuffed mushrooms</h3>
                                                <p>charcoal grilled, stuffed with butter, bacon and cheese</p>
                                                <p class="price">€8.78</p>
                                            </div>

                                            <div class="menu-item lol">
                                                <img src="Assets\Images\shrimpss.jpeg" alt="Shrimps">
                                                <h3>Shrimps with Pernod and cherry tomatoes</h3>
                                                <p>glazed with butter and dill</p>
                                                <p class="price">€14.78</p>
                                            </div>

                                            <div class="menu-item lol">
                                                <img src="Assets\Images\freshVegtables.jpg" alt="Fresh vegetables">
                                                <h3>Fresh vegetables</h3>
                                                <p>charcoal grilled with aromatic marinate and mozzarella di'Bufala</p>
                                                <p class="price">€11.98</p>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item lol">
                                                <img src="Assets\Images\KingPrawns.jpeg" alt="King Prawns">
                                                <h3>King Prawns</h3>
                                                <p>6 king prawns fried in garlic oil, sweet chilli and fresh herbs served with special dip</p>
                                                <p class="price">€11.78</p>
                                            </div>

                                            <div class="menu-item lol">
                                                <img src="Assets\Images\fistomisto.jpg" alt="Frito Mistos">
                                                <h3>Frito Misto</h3>
                                                <p>with home made tzatziki sauce, breaded calamari, lanterini, shrimps and mussel meat</p>
                                                <p class="price">€15.98</p>
                                            </div>

                                            <div class="menu-item lol">
                                                <img src="Assets\Images\muscels.jpg" alt="Veranda Mussels">
                                                <h3>Veranda Mussels</h3>
                                                <p>fresh mussels, butter sauce, white wine with garlic and lemon slices, onions and parsley</p>
                                                <p class="price">€10.98</p>
                                            </div>

                                        </div>
                                    </div>

                                    <!-- Add more .carousel-item as needed -->
                                </div>
                                <a class="carousel-control-prev" href="#helloCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#helloCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>

                            <!-- tet-->


                            <div id="ttCarousel" class="carousel slide" data-interval="false">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="d-flex justify-content-around">
                                            <div class="menu-item tt">
                                                <img src="Assets\Images\Bruschetta.jpg" alt="Bruschetta">
                                                <h3>Bruschetta</h3>
                                                <p>with tomatoes, mus of cheese and home made pesto</p>
                                                <p class="price">€6.98</p>
                                            </div>

                                            <div class="menu-item tt">
                                                <img src="Assets\Images\BruschettaVeranda.jpg" alt="Bruschetta Veranda">
                                                <h3>Bruschetta "Veranda"</h3>
                                                <p>with lukanka and Ajvar</p>
                                                <p class="price">€6.98</p>
                                            </div>

                                            <div class="menu-item tt">
                                                <img src="Assets\Images\ChickenWings.jpeg" alt="Chicken Wings">
                                                <h3>Chicken Wings</h3>
                                                <p>with french fries and BBQ sauce</p>
                                                <p class="price">€11.98</p>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>

                </div>


            </div>

                 <div class="feedback-wrapper">

                <div class="feedback-container">
                      <div class="about-icon">
                <img src="Assets\Images\FoodMenuIcon.png" alt="Feedback Icon" class="icon">
            </div>

                    <div class="feedback-header">OUR CLIENTS FEEDBACK</div>
                    <div class="feedback-navigation left" onclick="changeFeedback(-1)">&lt;</div>
                    <div id="feedback-box" class="feedback-box">
                        <div class="stars">★★★★★</div>
                        <div class="feedback-title"></div>
                        <div class="feedback-text"></div>
                        <div class="feedback-author"></div>
                    </div>
                    <div class="feedback-navigation right" onclick="changeFeedback(1)">&gt;</div>
                </div>
  </div>



            <!-- Image Modal -->
            <div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="imageModalLabel">Image Preview</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <img src="" id="imagePreview" alt="Menu Item" style="width: 100%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!-- jQuery and Bootstrap JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                // Configure the click listeners for scrolling the menu categories
                document.querySelectorAll('.menu-control-next').forEach(function (button) {
                    button.addEventListener('click', function () {
                        // Determine which menu is active
                        if (document.getElementById('foodMenuContent').classList.contains('active')) {
                            document.querySelector('#menu-categories').scrollLeft += 100;
                        } else if (document.getElementById('barMenuContent').classList.contains('active')) {
                            document.querySelector('#bar-menu-categories').scrollLeft += 100;
                        }
                    });
                });

                // Attach event listeners for both the food and bar menu 'previous' buttons
                document.querySelectorAll('.menu-control-prev').forEach(function (button) {
                    button.addEventListener('click', function () {
                        // Determine which menu is active
                        if (document.getElementById('foodMenuContent').classList.contains('active')) {
                            document.querySelector('#menu-categories').scrollLeft -= 100;
                        } else if (document.getElementById('barMenuContent').classList.contains('active')) {
                            document.querySelector('#bar-menu-categories').scrollLeft -= 100; WW
                        }
                    });
                });



                showMenu('starters', document.querySelector('#menu-categories li.active') || document.querySelector('#menu-categories li:first-child'));

                // Setup click event listeners for the menu and bar buttons
                document.getElementById('foodMenuButton').addEventListener('click', function () {
                    toggleMenu('food');
                });

                document.getElementById('barMenuButton').addEventListener('click', function () {
                    toggleMenu('bar');
                });

                const images = document.querySelectorAll('.menu-img');
                images.forEach(image => {
                    image.addEventListener('click', function () {
                        const src = this.getAttribute('src');
                        document.getElementById('imagePreview').src = src;
                        $('#imageModalLabel').text(this.alt); // Optional: Update the modal title to the image's alt text
                    });
                });




            });

            function toggleMenu(type) {
                console.log('toggleMenu called with type:', type); // Debugging line

                var foodMenuContent = document.getElementById('foodMenuContent');
                var barMenuContent = document.getElementById('barMenuContent');
                var foodMenuButton = document.getElementById('foodMenuButton');
                var barMenuButton = document.getElementById('barMenuButton');
                var menuCategories = document.getElementById('menu-categories');
                var startersCategory = menuCategories.querySelector('li:first-child');

                // Hide all menu items
                document.querySelectorAll('.menu-item').forEach(function (menuItem) {
                    menuItem.style.display = 'none';
                });

                // Remove active class from all category buttons
                document.querySelectorAll('#menu-categories li').forEach(function (button) {
                    button.classList.remove('active');
                });

                if (type === 'food') {
                    foodMenuContent.classList.add('active');
                    barMenuContent.classList.remove('active');
                    foodMenuButton.classList.add('active');
                    barMenuButton.classList.remove('active');

                    // Show the starters category by default when switching to the food menu
                    showMenu('starters', document.querySelector('#menu-categories li.active') || document.querySelector('#menu-categories li:first-child'));

                } else if (type === 'bar') {
                    barMenuContent.classList.add('active');
                    foodMenuContent.classList.remove('active');
                    barMenuButton.classList.add('active');
                    foodMenuButton.classList.remove('active');

                    // Ensure the starters carousel and other elements are not displayed
                    document.getElementById('startersCarousel').style.display = 'none';
                    startersCategory.classList.remove('active');

                    showMenu('hello', document.querySelector('#bar-menu-categories li.active') || document.querySelector('#bar-menu-categories li:first-child'));


                }
            }

            // Debugging lines to see if event listeners are being attached properly
            console.log('Attaching event listeners...');



            function showMenu(category, element) {
                // Hide all menu items first
                document.querySelectorAll('.menu-item').forEach(function (menuItem) {
                    menuItem.style.display = 'none';
                });

                // Hide all carousels
                document.querySelectorAll('.carousel').forEach(function (carousel) {
                    carousel.style.display = 'none';
                });

                // Remove 'active' class from all category buttons in both menus
                document.querySelectorAll('#menu-categories li, #bar-menu-categories li').forEach(function (li) {
                    li.classList.remove('active');
                });

                // Add 'active' class to the clicked category
                if (element) {
                    element.classList.add('active');
                }

                // Display the selected category's menu items
                document.querySelectorAll('.' + category).forEach(function (item) {
                    item.style.display = 'block';
                });

                console.log('Category:', category);
                var selectedCarousel = document.getElementById(category + 'Carousel');
                if (selectedCarousel) {
                    console.log('Found carousel for category:', category);
                    selectedCarousel.style.display = 'block';
                } else {
                    console.error('No carousel found with ID:', category + 'Carousel');
                }
            }



            document.querySelectorAll('#food-menu-categories li').forEach(function (li) {
                li.addEventListener('click', function () {
                    console.log("Category clicked:", this.innerText); // Debugging line
                    showMenu(this.getAttribute('data-category'), this);
                });
            });


            document.querySelectorAll('#bar-menu-categories li').forEach(function (li) {
                li.addEventListener('click', function () {
                    // Assuming 'data-category' attribute holds the category identifier for bar menu items
                    var category = this.getAttribute('data-category');
                    showMenu(category, this);
                });
            });


        </script>


        <script>
            //dan tal feedback
            let feedbacks = [
                {
                    title: "Best restaurant from St.Julian Malta",
                    text: "This restaurant is perfect for all occasions, good food, good people (Dian the best waiter, kind and funny) Recommend it 100%",
                    author: "- Andrei T"
                },
                // Add more feedback entries here
                {
                    title: "Stunning Views",
                    text: "Absolutely stunning views and incredibly delicious seafood. A must-visit for anyone traveling to Malta!",
                    author: "- Maria L"
                },
                {
                    title: "Historic Ambiance",
                    text: "The ambiance takes you back in time and the food seals the deal. Excellent service and a great wine selection.",
                    author: "- John D"
                }
            ];

            let currentFeedbackIndex = 0;

            function displayFeedback() {
                const feedbackBox = document.getElementById('feedback-box');
                feedbackBox.querySelector('.feedback-title').innerText = feedbacks[currentFeedbackIndex].title;
                feedbackBox.querySelector('.feedback-text').innerText = feedbacks[currentFeedbackIndex].text;
                feedbackBox.querySelector('.feedback-author').innerText = feedbacks[currentFeedbackIndex].author;
            }

            function changeFeedback(direction) {
                currentFeedbackIndex += direction;
                if (currentFeedbackIndex < 0) {
                    currentFeedbackIndex = feedbacks.length - 1;
                } else if (currentFeedbackIndex >= feedbacks.length) {
                    currentFeedbackIndex = 0;
                }
                displayFeedback();
            }

            displayFeedback();
        </script>


        <style>
  .feedback-wrapper {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f7f7f7;
  }

  .feedback-container {
    width: 600px;
    padding: 20px;
    background-color: #ffffff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    border-radius: 20px;
    position: relative;
  }

  .feedback-header {
    font-size: 24px;
    color: #333333;
    margin-bottom: 20px;
  }

  .feedback-box {
    background-color: #333333;
    color: #ffffff;
    padding: 20px;
    border-radius: 15px;
    margin: 0 30px;
    position: relative;
  }

  

.feedback-box::after {
  content: '';
  position: absolute;
  bottom: -20px; /* Adjust this value to move the tail up or down */
  left: 50%;
  transform: translateX(-50%);
  border-left: 20px solid transparent;
  border-right: 20px solid transparent;
  border-top: 20px solid #333333; /* This should match the feedback box's background color */
}

  .feedback-title {
    font-weight: bold;
    margin-bottom: 5px;
  }

  .stars {
    color: #FFD700;
    margin-bottom: 15px;
    font-size: 70px; /* Adjust the font size as needed to make the stars bigger */
}

  .feedback-text {
    font-size: 18px;
    line-height: 1.6;
    margin-bottom: 15px;
  }

  .feedback-author {
    font-style: italic;
    color: #aaaaaa;
  }

  .feedback-navigation {
    color: #cccccc;
    font-size: 30px;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    cursor: pointer;
    user-select: none;
  }

  .feedback-navigation.left {
    left: 10px;
  }

  .feedback-navigation.right {
    right: 10px;
  }
</style>
</body>
</html>



