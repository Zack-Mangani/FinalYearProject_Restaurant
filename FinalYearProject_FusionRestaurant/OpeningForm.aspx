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
            display: flex; /* Enables Flexbox layout */
            justify-content: center; /* Centers horizontally */
            align-items: center; /* Centers vertically */
            height: 100px; /* Set to the height of your container, or as needed */
            width: 100px; /* Set to the width of your container, or as needed */
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
            padding: 20px;
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
        }


        /* Styles for each individual category item */
        #menu-categories li {
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

        .menu-categories {
            order: 1;
            flex: 1; /* Adjust as needed */
            padding-right: 20px; /* Spacing between categories and items */
        }

        .menu-items {
            order: 2; /* Ensures that items are below the categories */
            width: 100%;
            flex: 3; /* Adjust as needed */
        }

        #menu-categories {
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
                <i class="fas fa-utensils icon"></i>
                <!-- Change to your desired icon -->
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




    <div class="menu-section">
        <div class="about-icon">
            <!-- Change to your desired icon -->
        </div>

        <div class="container">

            <i class="fas fa-utensils icon"></i>





            <div class="header">
                <h1>FOOD MENU</h1>
            </div>
            <div class="menu-container">



                <%-- <div class="container menu-navigation">
    <div class="row align-items-center justify-content-between">
        <!-- Previous Arrow -->
        <div class="col-auto">
            <div class="menu-control-prev" role="button">
                <span class="menu-control-prev-icon" aria-hidden="true">«</span>
            </div>
        </div>

        <!-- Menu Categories -->
        <div class="col">
            <div class="d-flex justify-content-center menu-categories-scroll">
                <ul id="menu-categories" class="list-unstyled d-flex justify-content-between mb-0">
                    <li class="active" onclick="showMenu('pizza', this)">Starters</li>
                    <li onclick="showMenu('salad', this)">Salads</li>
                    <li onclick="showMenu('beer', this)">Platters</li>
                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                    <!-- Add more categories as needed -->
                </ul>
            </div>
        </div>

        <!-- Next Arrow -->
        <div class="col-auto">
            <div class="menu-control-next" role="button">
                <span class="menu-control-next-icon" aria-hidden="true">»</span>
            </div>
        </div>
    </div>
</div>--%>



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
                                    <li onclick="showMenu('beer', this)">Platters</li>
                                    <li onclick="showMenu('maindishes', this)">Fusion Main Dishes</li>
                                    <li onclick="showMenu('maindishes', this)">Main Dishes</li>
                                    <li onclick="showMenu('maindishes', this)">Burgers</li>
                                    <li onclick="showMenu('maindishes', this)">Gluten Free</li>
                                    <li onclick="showMenu('maindishes', this)">Pasta</li>
                                    <li onclick="showMenu('maindishes', this)">Pizza</li>
                                    <li onclick="showMenu('maindishes', this)">Risotto</li>
                                    <li onclick="showMenu('maindishes', this)">Desserts</li>
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


                <div class="menu-items">
                    <section class="menu">
                        <!-- Starterss Items -->
                        <div id="starterCarousel" class="carousel slide" data-interval="false">
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

                                <!-- Add more .carousel-item as needed -->
                            </div>
                            <a class="carousel-control-prev" href="#starterCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#starterCarousel" role="button" data-slide="next">
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
                                            <img src="Assets\Images\Bruschetta.jpg" alt="Bruschetta">
                                            <h3>Bruschetta</h3>
                                            <p>with tomatoes, mus of cheese and home made pesto</p>
                                            <p class="price">€6.98</p>
                                        </div>

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\BruschettaVeranda.jpg" alt="Bruschetta Veranda">
                                            <h3>Bruschetta "Veranda"</h3>
                                            <p>with lukanka and Ajvar</p>
                                            <p class="price">€6.98</p>
                                        </div>

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\ChickenWings.jpeg" alt="Chicken Wings">
                                            <h3>Chicken Wings</h3>
                                            <p>with french fries and BBQ sauce</p>
                                            <p class="price">€11.98</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item salad">
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

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\fistomisto.jpg" alt="Frito Mistos">
                                            <h3>Frito Misto</h3>
                                            <p>with home made tzatziki sauce, breaded calamari, lanterini, shrimps and mussel meat</p>
                                            <p class="price">€15.98</p>
                                        </div>

                                        <div class="menu-item salad">
                                            <img src="Assets\Images\muscels.jpg" alt="Veranda Mussels">
                                            <h3>Veranda Mussels</h3>
                                            <p>fresh mussels, butter sauce, white wine with garlic and lemon slices, onions and parsley</p>
                                            <p class="price">€10.98</p>
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
            </div>
        </div>
    </div>




    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Configure the click listeners for scrolling the menu categories
            document.querySelector('.menu-control-next').addEventListener('click', function () {
                document.querySelector('#menu-categories').scrollLeft += 100;
            });

            document.querySelector('.menu-control-prev').addEventListener('click', function () {
                document.querySelector('#menu-categories').scrollLeft -= 100;
            });

            var startersButton = document.querySelector('#menu-categories li:first-child');
            if (startersButton) {
                showMenu('starters', startersButton); // Make sure 'starters' is the correct category name
            }
        });

        function showMenu(category, element) {
            // Hide all menu items first
            document.querySelectorAll('.menu-item').forEach(function (menuItem) {
                menuItem.style.display = 'none';
            });

            // Hide all carousels
            document.querySelectorAll('.carousel').forEach(function (carousel) {
                carousel.style.display = 'none';
            });

            // Deactivate all category buttons
            document.querySelectorAll('#menu-categories li').forEach(function (button) {
                button.classList.remove('active');
            });

            // Activate the selected category button
            element.classList.add('active');

            // Display the selected category's menu items
            document.querySelectorAll('.' + category).forEach(function (item) {
                item.style.display = 'block';
            });

            // Display the corresponding carousel for the selected category
            var selectedCarousel = document.getElementById(category + 'Carousel');
            if (selectedCarousel) {
                selectedCarousel.style.display = 'block';
            } else {
                console.error('No carousel found with ID:', category + 'Carousel');
            }
        }




    </script>

</body>
</html>



