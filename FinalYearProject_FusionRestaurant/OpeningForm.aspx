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



        #menu-categories {
            display: flex;
            justify-content: center;
            padding-left: 0; /* remove padding if it's not necessary */
            margin-top: 20px; /* add some spacing from the top */
            border-bottom: 2px solid #ccc; /* adds a bottom border to the whole navbar */
            padding: 0;
            margin: 0;
            display: inline-block; /* Centers the list */
            text-align: left; /* Aligns the text within the list */
        }

            #menu-categories li {
                background-color: #333; /* dark background for the button */
                border: none;
                color: white;
                text-align: center;
                padding: 10px 20px;
                text-decoration: none;
                font-size: 16px; /* Adjust font size as needed */
                cursor: pointer;
                transition: background-color 0.3s;
                border-radius: 20px; /* rounded corners */
                margin: 0 5px; /* spacing between buttons */
                display: inline-block; /* Puts list items in a line */
                margin-right: 10px; /* Spacing between items, adjust as needed */
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
        }

            #menu-categories li {
                flex: 0 0 25%; /* Adjust the width to show 4 items at a time */
                display: inline-block;
                /* other styles... */
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
            align-items: center;
            justify-content: center;
        }

        .menu-control-prev,
        .menu-control-next {
            height: 50px;
            width: 50px;
            background-color: black;
            color: white;
            text-align: center;
            line-height: 50px; /* Adjust this to vertically center the arrows if not using SVG */
            margin: 0 10px;
            cursor: pointer;
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
            <i class="fas fa-utensils icon"></i>
            <!-- Change to your desired icon -->
        </div>

        <div class="container">

            <div class="header">
                <h1>FOOD MENU</h1>
            </div>
            <div class="menu-container">



                <div class="menu-categories">

                    <div class="menu-navigation">
                        <a class="menu-control-prev" href="#" role="button">
                            <span class="menu-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <ul id="menu-categories">
                            <li class="active" onclick="showMenu('pizza', this)">Pizza</li>
                            <li onclick="showMenu('salad', this)">Salad</li>
                            <li onclick="showMenu('beer', this)">Beer</li>
                            <li onclick="showMenu('maindishes', this)">MAIN DISHES</li>
                            <li onclick="showMenu('maindishes', this)">MAIN DISHES</li>
                        </ul>
                        <a class="menu-control-next" href="#" role="button">
                            <span class="menu-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>



                </div>


                <div class="menu-items">
                    <section class="menu">
                        <!-- Pizza Items -->
                        <div id="pizzaCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item pizza">
                                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Pizza-3007395.jpg/1280px-Pizza-3007395.jpg" alt="Pepperoni Pizza">
                                            <h3>Pepperoni Pizza</h3>
                                            <p>Classic with cheese and pepperoni</p>
                                            <p class="price">$18.00</p>
                                        </div>

                                        <div class="menu-item pizza">
                                            <img src="margherita_pizza.jpg" alt="Margherita Pizza">
                                            <h3>Margherita Pizza</h3>
                                            <p>Tomatoes, mozzarella, and basil</p>
                                            <p class="price">$20.00</p>
                                        </div>

                                        <div class="menu-item pizza">
                                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Pizza-3007395.jpg/1280px-Pizza-3007395.jpg" alt="Pepperoni Pizza">
                                            <h3>Pepperoni Pizza</h3>
                                            <p>Classic with cheese and pepperoni</p>
                                            <p class="price">$18.00</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item pizza">
                                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Pizza-3007395.jpg/1280px-Pizza-3007395.jpg" alt="Pepperoni Pizza">
                                            <h3>Pepperoni Pizza</h3>
                                            <p>Classic with cheese and pepperoni</p>
                                            <p class="price">$18.00</p>
                                        </div>

                                        <div class="menu-item pizza">
                                            <img src="margherita_pizza.jpg" alt="Margherita Pizza">
                                            <h3>Margherita Pizza</h3>
                                            <p>Tomatoes, mozzarella, and basil</p>
                                            <p class="price">$20.00</p>
                                        </div>

                                        <!-- Add more pizza items or empty divs to fill space if needed -->
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


                        <!-- Salad Items -->
                        <div class="menu-item salad">
                            <img src="caesar_salad.jpg" alt="Caesar Salad">
                            <h3>Caesar Salad</h3>
                            <p>Crisp romaine with parmesan and croutons</p>
                            <p class="price">$12.00</p>
                        </div>

                        <div class="menu-item salad">
                            <img src="greek_salad.jpg" alt="Greek Salad">
                            <h3>Greek Salad</h3>
                            <p>Feta, olives, and fresh vegetables</p>
                            <p class="price">$14.00</p>
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
        document.addEventListener("DOMContentLoaded", function (event) {
            document.querySelectorAll('a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function (e) {
                    e.preventDefault();
                    document.querySelector(this.getAttribute('href')).scrollIntoView({
                        behavior: 'smooth'
                    });
                });

                document.querySelector('.menu-control-next').addEventListener('click', function (e) {
                    e.preventDefault();
                    document.getElementById('menu-categories').scrollBy({ left: 250, behavior: 'smooth' }); // scroll by the width of one category item
                });

                // Function to scroll categories left
                document.querySelector('.menu-control-prev').addEventListener('click', function (e) {
                    e.preventDefault();
                    document.getElementById('menu-categories').scrollBy({ left: -250, behavior: 'smooth' }); // scroll by the width of one category item
                });
            });

            var pizzaMenuButton = document.querySelector('#menu-categories li');
            showMenu('pizza', pizzaMenuButton);
        });
    </script>

    <script>
        // ... existing functions ...

        // Enhance showMenu function to handle the active state of buttons
        function showMenu(category, element) {
            // Hide all menus
            var menus = document.getElementsByClassName('menu-item');
            for (var i = 0; i < menus.length; i++) {
                menus[i].style.display = 'none';
            }

            // Remove active class from all buttons
            var buttons = document.querySelectorAll('#menu-categories li');
            buttons.forEach(function (button) {
                button.classList.remove('active');
            });

            // Add active class to the clicked button
            element.classList.add('active');

            // Show the selected category
            var selectedMenu = document.getElementsByClassName(category);
            for (var i = 0; i < selectedMenu.length; i++) {
                selectedMenu[i].style.display = 'block';
            }
        }

        if (category === 'pizza') {
            $('#pizzaCarousel').carousel();
        }
    </script>

</body>
</html>



