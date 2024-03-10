<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpeningForm.aspx.cs" Inherits="FinalYearProject_FusionRestaurant.OpeningForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>The Villa Bologna Restaurant</title>
    <link rel="website icon" type="png" href="Assets/Images/LogoBolonga.png" />
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css/" />


    <style>
        :root {
            --base-font-size: 20px; /* Default base font sizesss */
            --background-color: #f6f6f6;
            --text-color: #363435;
        }

        body, html {
            font-family: 'Raleway', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
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
            font-size: var(--base-font-size);
        }

            .nav-link:hover {
                color: #cccccc !important;
            }

        #welcome-section {
            background-image: url('Assets/Images/HomePageImage.png');
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
                -webkit-text-stroke: 0px #F6F6F6;
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
            margin-right: 10px;
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
            background-color: var(--background-color); /* Your desired background color */
        }


        .about-content {
            max-width: 50%;
        }

        .about-icon {
            font-size: 3rem;
            color: var(--text-color);
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
                display: inline-flex;
                align-items: center;
                justify-content: center;
                margin-right: 10px;
                text-decoration: none;
                font-size: 45px;
                color: #f6f6f6;
                border: 2px solid #f6f6f6;
                border-radius: 40%;
                width: 60px;
                height: 60px;
                background-color: #363435;
                transition: all 0.3s ease;
            }

                .social-media a:hover {
                    background-color: #B01F21;
                    border-color: #B01F21;
                }



        .about-images {
            max-width: 50%;
        }

        p {
            font-size: var(--base-font-size);
        }

        .about-images img {
            max-width: 100%;
            height: auto;
            display: block;
        }

        .btn-primary {
            background-color: #B01F21;
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
            font-size: var(--base-font-size); /* Change as per your design */
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
            display: flex;
            align-items: center;
        }

            .search-box .form-control {
                padding-right: 2.5rem; /* Make room for the microphone button */
                border-radius: 20px; /* Rounded corners for the input */
                border: 1px solid #ced4da; /* Default Bootstrap border color */
            }

            .search-box button {
                position: absolute;
                right: 0;
                border: none;
                background: none;
                outline: none;
                cursor: pointer;
            }

                /* Optional: hide the outline that appears when the button is clicked */
                .search-box button:focus {
                    outline: none;
                }

                /* Optional: add hover effect for the buttons */
                .search-box button:hover {
                    opacity: 0.7;
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

        h1 {
            font-size: calc(var(--base-font-size) + 10px);
        }

        .contact-wrapper {
            padding-bottom: 20px;
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
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            background-color: var(--background-color);
        }


        #bar-menu-categories li, #menu-categories li {
            background-color: #363435;
            border: none;
            color: #F6F6F6;
            text-align: center;
            padding: 10px 20px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s;
            border-radius: 20px;
            display: inline-block;
            margin: 0 10px;
            flex: 0 0 auto;
            min-width: calc(25% - 20px);
            font-size: calc(var(--base-font-size) + 3px);
            border-style: solid;
            border-color: #f6f6f6;
        }


            #menu-categories li:hover, #menu-categories li.active {
                background-color: #B01F21;
            }

            #bar-menu-categories li:hover, #bar-menu-categories li.active {
                background-color: #B01F21;
            }

        .menu-item {
            display: none;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin: 10px;
            padding: 10px;
            width: 250px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            background-color: #363435;
        }

            .menu-item img {
                width: 100%;
                border-radius: 8px;
            }

            .menu-item h3 {
                margin: 0;
                color: #f3f3f3;
                padding-top: 12px;
                font-size: calc(var(--base-font-size) + 5px);
            }

            .menu-item p {
                color: #f3f3f3;
                padding-top: 5px;
                font-size: var(--base-font-size);
            }

            .menu-item .price {
                color: #B01F21;
                font-weight: bold;
            }

        .menu-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .bar-menu-categories, .menu-categories {
            order: 1;
            flex: 1;
            padding-right: 25px;
        }

        .menu-items {
            order: 2;
            width: 100%;
            flex: 3;
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


        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            height: 50px;
            width: 50px;
            outline: black;
            background-size: 50%, 50%;
            border-radius: 50%;
            border: 1px solid black;
            background-color: black;
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
            width: 80px;
            height: auto;
            display: block;
            margin: 0 auto;
        }


        .toggle-button {
            background: none;
            border: none;
            font-size: 30px;
            color: var(--text-color);
            padding: 10px 20px;
            font-weight: bold;
            transition: color 0.3s ease;
            text-transform: uppercase;
        }

            .toggle-button:hover {
                color: #B01F21;
            }

            .toggle-button.active {
                color: #B01F21;
                text-decoration: underline;
            }


        .menu-content {
            display: none;
            /* Add styling for your menu content */
        }

            .menu-content.active {
                display: block;
            }

        img.img-rotate.img-1 {
            margin-top: 12px;
            transform: rotate(-5.96deg);
            width: 25vw;
            height: auto;
        }

        img.img-rotate.img-2 {
            margin-top: 245px;
            margin-left: -130px;
            transform: rotate(4.41deg);
            width: 15vw;
            height: auto;
        }

        img.img-rotate.img-3 {
            margin-top: 195px;
            transform: rotate(-16.28deg);
            width: 25vw;
            height: auto;
            margin-left: 25px;
        }

        h5 {
            font-size: calc(var(--base-font-size) + 10px);
        }

        .modal-body p {
            color: #f6f6f6;
        }



        .close {
            float: right;
            font-size: 2.5rem;
            font-weight: 700;
            line-height: 1;
            color: #f6f6f6;
            text-shadow: 0 1px 0 #fff;
            opacity: .5;
        }


        /* Modal content general styling */
        /* Reset button styling */
        #resetPreferences {
            color: #aaa; /* Light text for the reset link */
            border: 1px solid #aaa; /* Light border for the reset button */
            background-color: transparent; /* Transparent background for the reset button */
            margin-top: 10px; /* Spacing from the content above */
        }

            #resetPreferences:hover {
                color: #fff; /* White text on hover for better contrast */
                border-color: #fff; /* White border on hover for better contrast */
                background-color: #555; /* Slightly darker background on hover */
                text-decoration: none; /* No underline on hover */
            }

        .modal-content {
            background-color: #363435;
            color: #f6f6f6;
            border-radius: 15px;
        }

        /* Modal header styling */
        .modal-header {
            border-bottom: 1px solid #444;
        }

        .modal-title {
            color: #f6f6f6;
            font-size: calc(var(--base-font-size) + 15px);
            font-weight: bold;
        }

        /* Modal body styling */
        .modal-body {
            font-size: 1rem; /* Standard font size */
        }

            .modal-body p {
                color: #bbb; /* Lighter text for descriptions */
            }





        /* Toggle switch */
        .form-check-input:checked {
            background-color: #2196f3; /* Blue background for checked state */
            border-color: #2196f3; /* Blue border for checked state */
        }

        /* Modal footer styling */
        .modal-footer {
            border-top: 1px solid #444; /* Slightly lighter border for separation */
            padding: 1rem; /* Padding around the buttons */
        }

        /* Reset button styling */
        .btn-secondary {
            background-color: #555; /* Darker background for the secondary button */
        }


        /* Reset link styling */
        #resetPreferences {
            color: #aaa; /* Light text for the reset link */
            text-decoration: none; /* No underline */
            cursor: pointer; /* Pointer cursor to indicate clickable */
        }

            #resetPreferences:hover {
                color: #ddd; /* Lighter text on hover */
                text-decoration: underline; /* Underline on hover */
            }

        /* Ensure buttons fit well */
        .btn {
            margin-top: 0.5rem;
            margin-bottom: 0.5rem;
        }

        /* Add spacing and alignment for theme buttons */
        #themeSelection .btn {
            width: 80px; /* Fixed width for a uniform look */
            margin: 0 5px; /* Margin for spacing */
            text-align: center;
        }


        /* Base Styles */
        .feedback-wrapper {
            font-family: 'Raleway', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: var(--background-color);
            ;
            padding: 20px;
        }

        .feedback-container {
            width: 100%; /* Start with 100% width for small devices */
            max-width: 70%; /* Max width to prevent it from becoming too wide on larger screens */
            padding: 20px;
            text-align: center;
            position: relative;
            box-sizing: border-box; /* Ensure padding doesn't affect the overall width */
        }

        .feedback-header,
        .feedback-title,
        .feedback-text,
        .feedback-author {
            margin: 0 auto; /* Centering text elements */
            padding: 0 15px; /* Adding padding for small screens */
        }

        .feedback-header {
            font-size: 1.5rem; /* Responsive font size */
            color: #333333;
            margin-bottom: 20px;
        }

        .feedback-box {
            background-color: #333333;
            color: #ffffff;
            padding: 20px;
            border-radius: 15px;
            margin: 0 auto; /* Center the box and remove side margins */
            width: 75%; /* Adjust width to accommodate padding */
            position: relative;
            border-style: solid;
            border-color: #f6f6f6;
        }

            .feedback-box::after {
                content: '';
                position: absolute;
                bottom: -20px;
                left: 50%;
                transform: translateX(-50%);
                border-left: 20px solid transparent;
                border-right: 20px solid transparent;
                border-top: 20px solid var(--text-color);
            }

        .feedback-title {
            font-weight: bold;
            margin-bottom: 5px;
            font-size: calc(var(--base-font-size) + 5px);
            font-family: 'Raleway', sans-serif;
            text-align: left;
        }

        .stars {
            color: #FFD700;
            margin-bottom: 15px;
            font-size: 4.375rem; /* Responsive font size */
        }

        .feedback-text {
            font-size: var(--base-font-size);
            line-height: 1.6;
            margin-bottom: 15px;
            text-align: left;
        }

        .feedback-author {
            font-style: italic;
            color: #aaaaaa;
            font-size: calc(var(--base-font-size) + 5px);
            text-align: left;
        }

        .feedback-navigation {
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

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .feedback-container {
                max-width: 90%; /* Allow more width on smaller screens */
            }

            .feedback-header, .feedback-title, .feedback-text, .feedback-author {
                font-size: smaller; /* Adjust font size for smaller screens */
            }

            .stars {
                font-size: 3rem; /* Smaller stars for smaller screens */
            }
        }

        @media (max-width: 480px) {
            .feedback-navigation {
                display: none; /* Hide navigation on very small screens */
            }
        }


        /*footer*/

        footer {
            background-color: #B01F21; /* Dark red color */
            color: white;
            text-align: center;
            padding: 20px 0;
            font-family: 'Raleway', sans-serif;
            padding-top: 20px;
        }

        .footer-content p {
            margin: 0;
            padding: 5px;
        }
        /*        form style
*/
        label {
            font-size: calc(var(--base-font-size) + 5px);
            font-weight: bold;
        }

        .form-input-box {
            position: relative;
            display: inline-flex;
            align-items: center;
            border: 1px solid #ccc; /* Example border, change as needed */
            border-radius: 20px; /* Rounded borders as per your image */
            width: 300px; /* Adjust width as needed */
        }

            .form-input-box input[type="text"] {
                flex-grow: 1;
                border: none;
                border-radius: 20px; /* Ensure the input has rounded corners */
                padding: 10px;
                padding-right: 40px; /* Make padding to accommodate the microphone icon */
                height: 40px; /* Adjust height as needed */
            }

            .form-input-box input[type="tel"] {
                flex-grow: 1;
                border: none;
                border-radius: 20px; /* Ensure the input has rounded corners */
                padding: 10px;
                padding-right: 40px; /* Make padding to accommodate the microphone icon */
                height: 40px; /* Adjust height as needed */
            }

            .form-input-box .mic-btn {
                margin-left: -40px; /* Negative margin to pull the button into the input */
                background: none;
                border: none;
                cursor: pointer;
            }

                .form-input-box .mic-btn img {
                    width: 24px; /* Adjust as needed */
                    height: auto;
                }

            /* Remove input focus outline */
            .form-input-box input[type="text"]:focus {
                outline: none;
            }

        /*contact*/


        .contact-card {
            display: flex;
            flex-direction: row; /* Align children horizontally */
            align-items: stretch;
            background-color: #f9f9f9;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin: 40px auto; /* Increase margin for more space around the card */
            max-width: 1100px; /* Increase the max-width for a larger card */
        }

        .contact-info {
            padding: 40px; /* Increase padding for more space inside the info section */
            background-color: #363435; /* Dark background */
            color: #fff;
            flex-basis: 50%; /* Increase the width of the contact info section */
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* Spread out the content vertically */
            border-style: solid;
            border-color: #f6f6f6;
        }

        .info-section {
            display: flex;
            align-items: center;
            margin-bottom: 20px; /* Add more space between info sections */
        }

            .info-section .icon {
                width: 50px;
                height: 50px;
                margin-right: 20px;
            }

        .info-text h2 {
            font-weight: bold;
            font-size: calc(var(--base-font-size) + 5px);
            margin-bottom: 10px;
        }

        .info-text p {
            font-size: var(--base-font-size);
            line-height: 1.6;
            margin: 0;
        }

        #map {
            flex-grow: 1; /* Allow the map to fill the remaining space */
            /* The width and height will be automatically adjusted by flexbox */
        }

        @media (max-width: 768px) {
            .contact-card {
                flex-direction: column; /* Stack the children vertically on smaller screens */
            }

            .contact-info {
                order: 2; /* Ensure the contact info is below the map on small screens */
                width: 100%; /* Full width on small screens */
                padding: 20px; /* Adjust padding on smaller screens */
            }

            #map {
                order: 1; /* Map comes first */
                height: 300px; /* Set a fixed height for the map on small screens */
                width: 100%; /* Ensure the map is full width on smaller screens */
            }
        }



        /*        book styles
*/

        #book-section {
            display: none;
        }

        .book-wrapper {
            font-family: 'Raleway', sans-serif;
            background-color: var(--background-color);
            margin: 0;
            padding: 20px;
        }

        .reservation-form {
            background: #363435;
            padding: 20px;
            border-radius: 8px;
            color: #f6f6f6;
            width: calc(100% - 60px); /* Adjusted to account for the left and right margins */
            border-style: solid;
            border-color: #f6f6f6;
        }

        .form-title {
            text-align: center;
            margin-bottom: 2rem;
        }

        .form-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 1rem;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            width: 48%; /* Adjust width for spacing */
        }

            .form-group label {
                font-size: calc(var(--base-font-size) + 5px);
                margin-bottom: 0.5rem;
            }

            .form-group input[type="text"],
            .form-group input[type="tel"],
            .form-group input[type="number"],
            .form-group input[type="date"],
            .form-group input[type="time"] {
                padding: 10px;
                border-radius: 20px;
                border: none;
                box-shadow: inset 0 2px 3px rgba(0, 0, 0, 0.2);
                background: #ecf0f1;
                color: #34495e;
            }

        .form-button {
            width: 100%;
            padding: 15px;
            border-radius: 20px;
            border: none;
            background-color: #B01F21;
            color: white;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 1rem;
        }

            .form-button:hover {
                background-color: #363435;
            }




        .notification {
            color: #ffffff;
            background-color: #e74c3c;
            text-align: center;
            padding: 10px;
            margin-bottom: 20px;
            display: none; /* Initially hidden */
            border-radius: 5px;
        }

            .notification.success {
                background-color: #2ecc71;
            }





        h4 {
            color: #999;
            font-weight: 500;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        html h4:after {
            content: "%";
            padding-left: 1px;
        }

        html input[type=range] {
            outline: 0;
            border: 0;
            border-radius: 500px;
            width: 400px;
            max-width: 100%;
            margin: 24px 0 16px;
            transition: box-shadow 0.2s ease-in-out;
        }

        @media screen and (-webkit-min-device-pixel-ratio: 0) {
            html input[type=range] {
                overflow: hidden;
                height: 40px;
                -webkit-appearance: none;
                background-color: #ddd;
            }

                html input[type=range]::-webkit-slider-runnable-track {
                    height: 40px;
                    -webkit-appearance: none;
                    color: #444;
                    -webkit-transition: box-shadow 0.2s ease-in-out;
                    transition: box-shadow 0.2s ease-in-out;
                }

                html input[type=range]::-webkit-slider-thumb {
                    width: 40px;
                    -webkit-appearance: none;
                    height: 40px;
                    cursor: ew-resize;
                    background: #fff;
                    box-shadow: -340px 0 0 320px #B01F21, inset 0 0 0 40px #B01F21;
                    border-radius: 50%;
                    -webkit-transition: box-shadow 0.2s ease-in-out;
                    transition: box-shadow 0.2s ease-in-out;
                    position: relative;
                }

                html input[type=range]:active::-webkit-slider-thumb {
                    background: #fff;
                    box-shadow: -340px 0 0 320px #B01F21, inset 0 0 0 3px #B01F21;
                }
        }



        /* Existing styles remain unchanged */

        .slider-container {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 440px; /* Adjust based on slider width + label padding */
        }

        .settings-label {
            color: #333; /* Match your design */
            font-size: var(--base-font-size); /* Adjust as needed */
            padding: 0 10px; /* Space around labels */
        }


        .toggle-container {
            display: flex;
            justify-content: center;
            margin-top: 20px; /* Adjust based on your layout */
        }

        #toggleSwitch {
            height: 0;
            width: 0;
            visibility: hidden;
        }

        .toggle-label {
            cursor: pointer;
            text-indent: -9999px;
            width: 60px; /* Toggle width */
            height: 30px; /* Toggle height */
            background: grey;
            display: block;
            border-radius: 100px;
            position: relative;
        }

            .toggle-label:after {
                content: '';
                position: absolute;
                top: 5px;
                left: 5px;
                width: 20px;
                height: 20px;
                background: #fff;
                border-radius: 90px;
                transition: 0.3s;
            }

        #toggleSwitch:checked + .toggle-label {
            background: #b01f21;
        }

            #toggleSwitch:checked + .toggle-label:after {
                left: calc(100% - 5px);
                transform: translateX(-100%);
            }
    </style>




    <script>
        //search
        function startDictation() {
            // Check if the browser supports speech recognition
            if (window.hasOwnProperty('webkitSpeechRecognition')) {

                // Create a new instance of the webkitSpeechRecognition
                var recognition = new webkitSpeechRecognition();

                // Set properties for the recognition
                recognition.continuous = false; // The default is single-shot recognition
                recognition.interimResults = false; // We don't need interim results for this use case

                // Define what happens when recognition starts
                recognition.onstart = function () {
                    document.getElementById('searchbox1').placeholder = 'Listening...'; // Feedback to show it's listening
                };

                // Define what happens when the recognition service returns a result
                recognition.onresult = function (event) {
                    var transcript = event.results[0][0].transcript; // Get the transcript of the spoken text
                    document.getElementById('searchbox1').value = transcript; // Set the content of the text input to the transcript
                    recognition.stop(); // Stop the recognition
                };

                // Define what happens when recognition ends
                recognition.onend = function () {
                    document.getElementById('searchbox1').placeholder = 'Search'; // Reset the placeholder
                };

                // Start the speech recognition
                recognition.start();
            } else {
                // If the browser doesn't support speech recognition, maybe hide the button or inform the user
                alert('Sorry, your browser does not support speech recognition.');
            }
        }


    </script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <a class="navbar-brand" href="#">
            <img src="Assets/Images/LogoBolonga.png" alt="MyApp Logo" class="img-fluid">
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
                    <a class="nav-link" href="#menu-section">VIEW MENUS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#gallery-section">GALLERY</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact-section" id="navContact">CONTACT</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="https://www.villabolognapottery.com/">VILLA BOLOGNA POTTERY</a>
                </li>
                <li class="nav-item">
                    <button class="btn btn-outline-success my-2 my-sm-0" id="navBook" onclick="location.href='#book-section'" type="submit">BOOK</button>
                </li>

                <li class="nav-item">
                    <%-- <form class="form-inline my-2 my-lg-0" id="searchbox">
                        <div class="search-box">
                            <input class="form-control" type="search" id="searchbox1" placeholder="Search" aria-label="Search">
                            
                            <button class="btn" type="button" onclick="startDictation()">
                                <i class="fas fa-microphone"></i>
                                <!-- Microphone icon (also FontAwesome or similar) -->
                            </button>

                           
                        </div>
                        <div class="search-btr">
                         <button class="btn btn-outline-success" type="submit">
                                <i class="fas fa-search"></i>
                                <!-- Magnifying glass icon (you can use FontAwesome or similar) -->
                            </button>
                            </div>
                    </form>--%>

                    <form class="form-inline my-2 my-lg-0" id="searchbox8">
                        <div class="search-box">
                            <!-- Grouping the text input and search button together -->
                            <input class="form-control" type="search" id="searchbox" placeholder="Search" aria-label="Search">

                            <button class="btn microphone" type="button" id="microphone" onclick="startDictation()">
                                <i class="fas fa-microphone"></i>
                                <!-- Microphone icon -->
                            </button>
                            <button class="btn subButton" type="submit">
                                <i class="fas fa-search"></i>
                                <!-- Magnifying glass icon -->
                            </button>
                        </div>

                    </form>


                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#preferencesModal">
                        <i class="fas fa-cog"></i>SETTINGS
                    </a>
                </li>
            </ul>
        </div>
    </nav>


    <div id="welcome-section">
        <h1>The Villa Bologna Restaurant</h1>
        <h2>Italian - Mediterranean - Vegetarian Friendly</h2>
        <button type="button" class="btn btn-primary mt-3" onclick="location.href='#aboutUsSection'">ABOUT US</button>
    </div>








    <div id="aboutUsSection" class="about-section">
        <div class="container">
            <div class="about-icon">
                <img id="aboutIcon" src="Assets\Images\about-us.png" alt="About Us Icon" class="icon" />
            </div>
            <div class="header">
                <h1>ABOUT US</h1>
            </div>

            <div class="content">
                <div class="left-column">
                    <!-- Image gallery -->
                    <div class="image-gallery">
                        <div>
                            <img src="Assets\Images\garden-seating-area.jpg" class="img-rotate img-1 menu-img" data-toggle="modal" data-target="#imageModal" />
                            <img src="Assets\Images\wine-trattoria-scaled.jpeg" class="img-rotate img-3 menu-img" data-toggle="modal" data-target="#imageModal" />
                        </div>
                        <div>
                            <img src="Assets\Images\barman-making-cocktails.jpg" class="img-rotate img-2 menu-img" data-toggle="modal" data-target="#imageModal" />
                        </div>

                    </div>
                </div>
                <div class="right-column">
                    <!-- Text content -->
                    <p>The Villa Bologna Restaurant is a family-run trattoria and bar, serving seasonal, Italian dishes in the garden of the historic Villa Bologna in Attard,Malta.</p>
                    <p>Open for lunch and dinner from Tuesday to Saturday, with a special lunch on Sundays, our menu is made with fresh ingredients grown in the Villa’s own herb and vegetable gardens.</p>
                    <p>Enjoy alfresco dining in the summer accompanied by cocktails, Italian and French wine in our cosy bar.  </p>
                    <p>Only a 15-minute drive from Valletta, if you are looking for places to eat in Malta, visit our new Italian trattoria surrounded by local heritage.</p>
                    <div class="social-media">
                        <a href="https://www.facebook.com/thevillabolognarestaurant" target="_blank"><i class="fab fa-facebook-f"></i></a>
                        <a href="https://www.instagram.com/thevillabolognarestaurant/" target="_blank"><i class="fab fa-instagram"></i></a>
                        <a href="https://www.tripadvisor.com/Restaurant_Review-g676686-d25455896-Reviews-The_Villa_Bologna_Restaurant-Attard_Island_of_Malta.html" target="_blank"><i class="fab fa-tripadvisor"></i></a>
                    </div>
                    <div class="menu-button">
                        <button type="button" class="btn btn-primary mt-3" onclick="location.href='#menu-section'">VIEW MENU</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="menu-section" class="menu-section">


        <div class="container">

            <div class="about-icon">
                <img id="menuIcon" src="Assets\Images\FoodMenuIcon.png" alt="Food Menu Icon" class="icon" />
            </div>

            <div class="menu-container">

                <!-- Toggle Switch -->
                <div class="menu-toggle">
                    <button id="foodMenuButton" class="toggle-button active">MENU</button>
                    <button id="barMenuButton" class="toggle-button">WHAT'S ON</button>
                </div>

                <!-- Food Menu Content -->
                <div id="foodMenuContent" class="menu-content active">

                    <div class="container menu-navigation">
                        <div class="row align-items-center justify-content-between">
                            <!-- Previous Arrow -->
                            <div class="col-auto">
                                <div class="menu-control-prev" role="button">
                                    <img id="leftArrowMenu" src="Assets\Images\leftArrow.png" alt="Previous" class="menu-control-prev-icon" />
                                </div>
                            </div>

                            <!-- Menu Categories -->
                            <div class="col overflow-hidden">
                                <div class="d-flex justify-content-center menu-categories-scroll">
                                    <ul id="menu-categories" class="list-unstyled d-flex mb-0">
                                        <li class="active" onclick="showMenu('carte', this)">A La Carte</li>
                                        <li onclick="showMenu('desert', this)">Dessert</li>
                                        <li onclick="showMenu('lunch', this)">Lunch Set Menu</li>
                                        <li onclick="showMenu('cocktails', this)">Cocktails & Drinks</li>
                                        <li onclick="showMenu('children', this)">Children's Menu</li>
                                        <li onclick="showMenu('wine', this)">Wine List</li>
                                    </ul>
                                </div>
                            </div>

                            <!-- Next Arrow -->
                            <div class="col-auto">
                                <div class="menu-control-next" role="button">
                                    <img id="rightMenu" src="Assets\Images\rightArrow.png" alt="Next" class="menu-control-next-icon">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="menu-items">
                    <section class="menu">
                        <!-- A lA Carte Items -->
                        <%--          <div id="carteCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <h1>ZUPPE</h1>
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\Bruschetta.jpg" alt="Minestrone con pesto Genovese">
                                            <h3>Minestrone con pesto Genovese</h3>
                                            <p>Traditional minestrone soup with pesto Genovese (g ,v)</p>
                                            <p class="price">€12</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\BruschettaVeranda.jpg" alt="Bouillabaisse Provencal">
                                            <h3>Bouillabaisse Provencal"</h3>
                                            <p>Traditional French fish soup with garlic farmhouse bread</p>
                                            <p class="price">€22</p>
                                        </div>



                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <h1>ANTIPASTI</h1>
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\Mushrooms.jpeg" alt="Stuffed mushrooms">
                                            <h3>Bruschetta Primavera</h3>
                                            <p>Grilled peppers, courgettes, aubergine, garlic, basil, & virgin olive oil (l, v)</p>
                                            <p class="price">€12</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\shrimpss.jpeg" alt="Shrimps">
                                            <h3>Seppie Stufate alla “Luciana” e Polenta Fritta</h3>
                                            <p>Cuttlefish in a rich tomato sauce, sweet peas, white wine, garlic & fried polenta</p>
                                            <p class="price">€17</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\freshVegtables.jpg" alt="Fresh vegetables">
                                            <h3>Salsicce Toscane di Fattoria alla Griglia conn Polenta Fritta E Aceto Di Vino Rosso harcoal grilled with aromatic marinate and mozzarella di'Bufala</p>
                                            <p>Grilled Tuscan sausages, fried polenta & red wine vinegar (l)</p>
                                                <p class="price">€15</p>
                                        </div>

                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <h1>ANTIPASTI</h1>
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\KingPrawns.jpeg" alt="Selection Of Italian Ham, Salami & Cheese ">
                                            <h3>Selection Of Italian Ham, Salami & Cheese </h3>
                                            <p class="price">€18</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\fistomisto.jpg" alt="Mozzarelline Fritte e Funghi Prataioli Ripieni al Burro All’Aglio">
                                            <h3>Mozzarelline Fritte e Funghi Prataioli Ripieni al Burro All’Aglio</h3>
                                            <p>Mushrooms filled with garlic butter and crispy fried mozzarella balls, served with salsa rossa (l, v)</p>
                                            <p class="price">€15</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\muscels.jpg" alt="Calamari Fritti Alla Veneziana">
                                            <h3>Calamari Fritti Alla Veneziana</h3>
                                            <p>Crispy squid, garlic mayonnaise</p>
                                            <p class="price">€14</p>
                                        </div>

                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <h1>PASTE E RISOTTI</h1>
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters5.jpg" alt="Spaetzli Tirolesi agli Spinaci con Crema di Tartufo e Speck">
                                            <h3>Spaetzli Tirolesi agli Spinaci con Crema di Tartufo e Speck</h3>
                                            <p>Spaetzli Tirolesi with spinach tossed with speck, black truffle cream, sage & parmesan (v)</p>
                                            <p class="price">€16</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters1.jpg" alt="Conchiglie con Code di Gamberi e Ricotta">
                                            <h3>Conchiglie con Code di Gamberi e Ricotta</h3>
                                            <p>Conchiglie pasta, prawns, ricotta cheese, chilli, basil & virgin olive oil</p>
                                            <p class="price">€19</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters2.jpg" alt="Penne alla Norma con Melanzane, Peperoncino Rosso, Salsa di Pomodoro,Basilico e Ricotta ">
                                            <h3>Penne alla Norma con Melanzane, Peperoncino Rosso, Salsa di Pomodoro,Basilico e Ricotta </h3>
                                            <p>Penne, tomato sauce, egg plant, garlic, red chilli, ricotta & olive oil (v)</p>
                                            <p class="price">€16</p>
                                        </div>

                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <h1>PASTE E RISOTTI</h1>

                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters3.jpg" alt="Risotto con Spinaci e Mascarpone">
                                            <h3>Risotto con Spinaci e Mascarpone</h3>
                                            <p>Risotto with spinach & mascarpone cheese (v)</p>
                                            <p class="price">€17</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters4.jpg" alt="Rigatoni alla Bolognese">
                                            <h3>Rigatoni alla Bolognese</h3>
                                            <p>Rigatoni pasta, traditional beef and pork ragu with red wine</p>
                                            <p class="price">€16</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters4.jpg" alt="Risotto con Salsiccia Toscana">
                                            <h3>Risotto con Salsiccia Toscana</h3>
                                            <p>Risotto with Tuscan sausage & Chianti red wine</p>
                                            <p class="price">€17</p>
                                        </div>
                                    </div>
                                </div>



                                <div class="carousel-item">
                                    <h1>SECONDI</h1>

                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters3.jpg" alt="Bocconcini di Coda di Rospo in Umido alla Livornese">
                                            <h3>Bocconcini di Coda di Rospo in Umido alla Livornese</h3>
                                            <p>Braised chunks of Monkfish in white wine, garlic, tomato sauce, served with toasted garlic bruschetta (l))</p>
                                            <p class="price">€27</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters4.jpg" alt="Salmone Scozzese con Salsa di Aragosta">
                                            <h3>Salmone Scozzese con Salsa di Aragosta </h3>
                                            <p>Fillet of Scottish salmon, lobster sauce, scallops’ meat & fresh tarragon</p>
                                            <p class="price">€29</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters4.jpg" alt="Filetto di Branzino alla Griglia Con Timo Fresco, Olio D'oliva e Limone">
                                            <h3>Filetto di Branzino alla Griglia Con Timo Fresco, Olio D'oliva e Limone </h3>
                                            <p>RGrilled fillet of Seabass with fresh thyme, olive oil and lemon (g, l)</p>
                                            <p class="price">€29</p>
                                        </div>



                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <h1>SECONDI</h1>

                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters3.jpg" alt="Tagliata di Manzo alla Griglia con Rucola">
                                            <h3>Tagliata di Manzo alla Griglia con Rucola</h3>
                                            <p>Grilled stirloin steak with rocket salad & rosemary oil (l)</p>
                                            <p class="price">€28</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters4.jpg" alt="Salmone Scozzese con Salsa di Aragosta">
                                            <h3>Filetti di Vitello Funghi Porcini</h3>
                                            <p>Pan-fried fillets of Veal, porcini mushrooms, sage & Brandy sauce</p>
                                            <p class="price">€31</p>
                                        </div>





                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <h1>CONTORNI</h1>

                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters3.jpg" alt="Rucola & Parmesan Salad">
                                            <h3>Rucola & Parmesan Salad</h3>
                                            <p class="price">€7.50</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters4.jpg" alt="Spicy Roast Potatoes">
                                            <h3>Spicy Roast Potatoes</h3>
                                            <p class="price">€4.50</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters4.jpg" alt="Spinaci al Burro">
                                            <h3>Spinaci al Burro</h3>
                                            <p class="price">€4.50</p>
                                        </div>





                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <h1>CONTORNI</h1>

                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters3.jpg" alt="Grilled vegetables, basil, garlic & olive oil">
                                            <h3>Grilled vegetables, basil, garlic & olive oil</h3>
                                            <p class="price">€13</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters4.jpg" alt="Broccoli">
                                            <h3>Broccoli</h3>
                                            <p class="price">€4.50</p>
                                        </div>

                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters4.jpg" alt="French Fries">
                                            <h3>French Fries</h3>
                                            <p class="price">€4.50</p>
                                        </div>





                                    </div>
                                </div>


                                <div class="carousel-item">
                                    <h1>CONTORNI</h1>

                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item carte">
                                            <img src="Assets\Images\starters3.jpg" alt="Peas & Mint">
                                            <h3>Peas & Mint</h3>
                                            <p class="price">€.50</p>
                                        </div>





                                    </div>
                                </div>
                                <!-- Add more .carousel-item as needed -->
                            </div>
                            <a class="carousel-control-prev" href="#carteCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carteCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>--%>




                        <!-- Carousel container -->
                        <div id="desertCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                            </div>
                            <a class="carousel-control-prev" href="#desertCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#desertCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>


                        <div id="childrenCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <!-- Carousel items will be added dynamically here -->
                            </div>
                            <a class="carousel-control-prev" href="#childrenCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#childrenCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <p>*Note that one main course is to be chosen and the children menu cost €14 total</p>

                        <div id="carteCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <!-- Carousel items will be added dynamically here -->
                            </div>
                            <a class="carousel-control-prev" href="#carteCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carteCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                        <div id="lunchCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <!-- Carousel items will be added dynamically here -->
                            </div>
                            <a class="carousel-control-prev" href="#lunchCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#lunchCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <div id="wineCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <!-- Carousel items will be added dynamically here -->
                            </div>
                            <a class="carousel-control-prev" href="#wineCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#wineCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                        <div id="cocktailsCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <!-- Carousel items will be added dynamically here -->
                            </div>
                            <a class="carousel-control-prev" href="#cocktailsCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#cocktailsCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                       

                        <script>
                            // Your JSON data

                            const winemenuSection = {

                                "Prosecco & Champagne": [
                                    {
                                        "name": "Prosecco Bandarossa Valdobbiadene Bortolmiol",
                                        "price": "€39 per bottle"
                                    },
                                    {
                                        "name": "Sorella Bronca Particella DOCG",
                                        "price": "€59 per bottle"
                                    },
                                    {
                                        "name": "Veuve Clicquot Brut",
                                        "price": "€110 per bottle"
                                    }
                                ],
                                "White Wine": [
                                    {
                                        "name": "Langhe Chardonnay Morino Beni Di Batasiolo 2023",
                                        "price": "€35 per bottle or €9 per 150ml"
                                    },
                                    {
                                        "name": "Pinot Bianco IGT Tenuta Monteloro Villa Antinori 2022",
                                        "price": "€38 per bottle"
                                    },
                                    {
                                        "name": "Vermentino Guado Al Tasso DOC Bolgheri 2022",
                                        "price": "€38 per bottle"
                                    }
                                ],
                                "Rosé Wine": [
                                    {
                                        "name": "Etna Rosato Murgo Tenuta San Michele 2021",
                                        "price": "€40 per bottle or €8.50 per 150ml"
                                    },
                                    {
                                        "name": "Provence Rosé Château Minuty 2022",
                                        "price": "€40 per bottle"
                                    },
                                    {
                                        "name": "Provence Rosé Whispering Angel Château d'Esclans 2022",
                                        "price": "€50 per bottle"
                                    }
                                ],
                                "Red Wine": [
                                    {
                                        "name": "Barbera D'Alba Palladino 2019",
                                        "price": "€28 per bottle"
                                    },
                                    {
                                        "name": "Sangiovese Rosso di Montepulciano Poliziano 2021",
                                        "price": "€29 per bottle or €7 per 150ml"
                                    },
                                    {
                                        "name": "Nero D'Avola Principi Di Butera Amira 2020",
                                        "price": "€29 per bottle"
                                    }
                                ]

                            }


                            const cocktailmenuSection = {
                                "House Cocktails": [
                                    {
                                        "name": "Villa Bologna Spritz",
                                        "price": "€11",
                                        "description": "Bombay Sapphire Gin, Limoncello di Capri, citrus cordial, lemon juice, Fever Tree Tonic Water"
                                    },
                                    {
                                        "name": "Queen Margarita",
                                        "price": "€11",
                                        "description": "Olmeca Silver Tequila, Lajita Mezcal, honey & ginger syrup, lime juice"
                                    }
                                ],
                                "Classic Cocktails": [
                                    {
                                        "name": "Garibaldi",
                                        "price": "€11",
                                        "description": "Campari, fresh orange juice"
                                    },
                                    {
                                        "name": "Sgroppino",
                                        "price": "€11",
                                        "description": "Bandarossa Prosecco, Limoncello di Capri Sorbet"
                                    },
                                    {
                                        "name": "Old Fashioned",
                                        "price": "€11",
                                        "description": "Makers Mark Bourbon, sugar syrup, Angostura Bitters"
                                    },
                                    {
                                        "name": "Pisco Sour",
                                        "price": "€11",
                                        "description": "Capel Pisco, lemon juice, sugar syrup, egg white"
                                    },
                                    {
                                        "name": "Whiskey Sour",
                                        "price": "€11",
                                        "description": "J&B Rare Blended Scotch, lemon juice, sugar syrup, egg white"
                                    },
                                    {
                                        "name": "Margarita",
                                        "price": "€11",
                                        "description": "Olmeca Blanco Tequila, Triple Sec, lime juice"
                                    },
                                    {
                                        "name": "Espresso Martini",
                                        "price": "€11",
                                        "description": "Absolut Vodka, Kahlua, espresso"
                                    },
                                    {
                                        "name": "Negroni",
                                        "price": "€11",
                                        "description": "Bombay Sapphire Gin, Carpano Antica Formula, Campari"
                                    },
                                    {
                                        "name": "Aperol Spritz",
                                        "price": "€11",
                                        "description": "Aperol, Bandarossa Prosecco, Fever Tree Soda Water"
                                    },
                                    {
                                        "name": "Bramble",
                                        "price": "€11",
                                        "description": "Bombay Sapphire Gin, lemon juice, blackberry liqueur"
                                    },
                                    {
                                        "name": "Penicillin",
                                        "price": "€11",
                                        "description": "Johnnie Walker Black Label Whiskey, Laphroaig 10yo, lemon juice, honey & ginger syrup"
                                    },
                                    {
                                        "name": "Sidecar",
                                        "price": "€11",
                                        "description": "Remy Martin VSOP, Grand Marnier, lemon juice"
                                    },
                                    {
                                        "name": "Moscow Mule",
                                        "price": "€11",
                                        "description": "Absolut Vodka, Fever Tree Ginger Beer, lime juice"
                                    },
                                    {
                                        "name": "Dark N' Stormy",
                                        "price": "€11",
                                        "description": "Havana Club 7yo Rum, Fever Tree Ginger Beer, lime juice"
                                    }
                                ],
                                "Non-Alcoholic Cocktails & Juices": [
                                    {
                                        "name": "Fresh Orange Juice",
                                        "price": "€6",
                                        "description": ""
                                    },
                                    {
                                        "name": "Virgin Mojito",
                                        "price": "€7",
                                        "description": "Lime juice, Fever Tree Soda Water, mint"
                                    },
                                    {
                                        "name": "Villa Bologna Lemonade",
                                        "price": "€4.50",
                                        "description": ""
                                    },
                                    {
                                        "name": "Virgin Spritz",
                                        "price": "€7",
                                        "description": "Martini Vibrante & Martini Floreale, citrus cordial, Fever Tree Soda Water"
                                    }
                                ],
                                "Wine by the Glass": {
                                    "Prosecco": [
                                        {
                                            "name": "Prosecco Bandarossa Valdobbiadene Bortolmiol",
                                            "price": "€8.50"
                                        }
                                    ],
                                    "Rosé Wine": [
                                        {
                                            "name": "Murgo Etna Rosato",
                                            "price": "€8.50"
                                        }
                                    ],
                                    "White Wine": [
                                        {
                                            "name": "Fleur de Thénac White Chateau Thénac Bergerac",
                                            "price": "€7"
                                        },
                                        {
                                            "name": "Gavi de Gavi Reserve Volo Superiore Morgassi",
                                            "price": "€9"
                                        }
                                    ],
                                    "Red Wine": [
                                        {
                                            "name": "Peppoli Chianti Antinori Classico",
                                            "price": "€9"
                                        },
                                        {
                                            "name": "Nero D'Avola Principi Di Butera Amira",
                                            "price": "€7"
                                        },
                                        {
                                            "name": "Fleur de Thénac Red Chateau Thénac Bergerac",
                                            "price": "€7"
                                        }
                                    ],

                                    "Tonics & Mixers": [
                                        {
                                            "name": "Fever Tree Tonic",
                                            "price": "€3.50"
                                        },
                                        {
                                            "name": "Fever Tree Slim Line Tonic",
                                            "price": "€4"
                                        },
                                        {
                                            "name": "Fever Tree Soda Water",
                                            "price": "€3.50"
                                        },
                                        {
                                            "name": "Fever Tree Ginger Beer",
                                            "price": "€3.50"
                                        },
                                        {
                                            "name": "John Henry Bitter Lemon",
                                            "price": "€3.50"
                                        }
                                    ],
                                    "Mezcal": [
                                        {
                                            "name": "Lajita Reposado",
                                            "price": "€8"
                                        }
                                    ],
                                    "Tequila": [
                                        {
                                            "name": "Olmeca Blanco",
                                            "price": "€6"
                                        },
                                        {
                                            "name": "Patron Silver",
                                            "description": "Gavi de Gavi Reserve Volo Superiore Morgassi",
                                            "price": "€9"
                                        }
                                    ],

                                    "Beer": [
                                        {
                                            "name": "Moretti Draft",
                                            "description": "250/500ml",
                                            "price": "€3.50/€6"
                                        },
                                        {
                                            "name": "Cisk",
                                            "description": "250ml",
                                            "price": "€3"
                                        },
                                        {
                                            "name": "Cisk Excel",
                                            "price": "€3.50"
                                        },
                                        {
                                            "name": "Cisk 0%",
                                            "price": "€3.50"
                                        },
                                        {
                                            "name": "Farsons Blue Label",
                                            "description": "330ml",
                                            "price": "€4.5"
                                        },
                                        {
                                            "name": "Kopperberg Pear Cider",
                                            "description": "330ml",
                                            "price": "€5.50"
                                        },
                                        {
                                            "name": "Bullmers Cider",
                                            "description": "500ml",
                                            "price": "€8"
                                        }
                                    ],
                                    "Vodka": [
                                        {
                                            "name": "Belvedere",
                                            "price": "€10"
                                        },
                                        {
                                            "name": "Ciroc",
                                            "price": "€9"
                                        },
                                        {
                                            "name": "Absolut",
                                            "price": "€6"
                                        }
                                    ],
                                    "Gin": [
                                        {
                                            "name": "Monkey 47",
                                            "price": "€11"
                                        },
                                        {
                                            "name": "Hendrick's",
                                            "price": "€9"
                                        },
                                        {
                                            "name": "Bombay Sapphire",
                                            "price": "€7"
                                        }
                                    ],
                                    "Whisky": [
                                        {
                                            "name": "Singleton 12yo",
                                            "price": "€9"
                                        },
                                        {
                                            "name": "Laphroaing 10yo",
                                            "price": "€10"
                                        },
                                        {
                                            "name": "Glenmorangie Quinta Ruban Port",
                                            "price": "€11"
                                        },
                                        {
                                            "name": "Johnnie Walker Black Label",
                                            "price": "€7"
                                        },
                                        {
                                            "name": "J&B Rare Blended Scotch",
                                            "price": "€6"
                                        },
                                        {
                                            "name": "Jameson Black Barrel",
                                            "price": "€8"
                                        },
                                        {
                                            "name": "Makers Mark",
                                            "price": "€8"
                                        }
                                    ],
                                    "Soft Drinks": [
                                        {
                                            "name": "Panna Mineral Water",
                                            "price": "4/2.75"
                                        },
                                        {
                                            "name": "San Pellegrino Water",
                                            "price": "€4/2.75"
                                        },
                                        {
                                            "name": "Coca-Cola/Zero",
                                            "price": "€3"
                                        },
                                        {
                                            "name": "Sprite",
                                            "price": "€3"
                                        },
                                        {
                                            "name": "Fanta",
                                            "price": "€3"
                                        },
                                        {
                                            "name": "Kinnie/Diet",
                                            "price": "€3"
                                        },
                                        {
                                            "name": "Apple Juice",
                                            "price": "€3"
                                        },
                                        {
                                            "name": "Peach Juice",
                                            "price": "€3"
                                        },
                                        {
                                            "name": "Orange Juice",
                                            "price": "€3"
                                        }
                                    ],
                                    "Rum": [
                                        {
                                            "name": "Havana Club Anejo 3yo",
                                            "price": "€6"
                                        },
                                        {
                                            "name": "Bacardi 4yo",
                                            "price": "€10"
                                        },
                                        {
                                            "name": "Havana Selecction De Maestros",
                                            "price": "€13"
                                        }
                                    ],
                                    "Aperitivo": [
                                        {
                                            "name": "Aperol",
                                            "price": "€8"
                                        },
                                        {
                                            "name": "Campari",
                                            "price": "€8"
                                        },
                                        {
                                            "name": "Martini Bianco",
                                            "price": "€5"
                                        },
                                        {
                                            "name": "Martini Extra Dry",
                                            "price": "€5"
                                        },
                                        {
                                            "name": "Carpano Antica Formula",
                                            "price": "€7"
                                        }
                                    ],
                                    "Cognac": [
                                        {
                                            "name": "Remy Martin VSOP",
                                            "price": "€10"
                                        }
                                    ],
                                    "Armagnac": [
                                        {
                                            "name": "Baron De Sigognac 10yo",
                                            "price": "€10"
                                        },
                                        {
                                            "name": "Armagnac",
                                            "price": "€9"
                                        }
                                    ],
                                    "Grappa": [
                                        {
                                            "name": "Borgo Antico San Vitale",
                                            "price": "€10"
                                        },
                                        {
                                            "name": "Passone Bianca",
                                            "price": "€7"
                                        },
                                        {
                                            "name": "Piave Cuore",
                                            "price": "€6"
                                        },
                                        {
                                            "name": "Pinot Nero",
                                            "price": "€7"
                                        }
                                    ],
                                    "Liqueurs": [
                                        {
                                            "name": "Lemoncello di Capri",
                                            "price": "€6"
                                        },
                                        {
                                            "name": "Grand Marnier",
                                            "price": "€8"
                                        },
                                        {
                                            "name": "Fernet Branca",
                                            "price": "€7"
                                        },
                                        {
                                            "name": "Amaro Montenegro",
                                            "price": "€8"
                                        },
                                        {
                                            "name": "Amaro Averna",
                                            "price": "€8"
                                        },
                                        {
                                            "name": "Disaronno Amaretto",
                                            "price": "€6"
                                        },
                                        {
                                            "name": "Frangelico",
                                            "price": "€6"
                                        },
                                        {
                                            "name": "Bayley's",
                                            "price": "6"
                                        },
                                        {
                                            "name": "Kahlua",
                                            "price": "6"
                                        }
                                    ]
                                }
                            }



                            const cartemenuSection = {
                                "Zuppe": [
                                    {
                                        "name": "Minestrone con pesto Genovese",
                                        "price": "€12",
                                        "description": "Traditional minestrone soup with pesto Genovese",
                                        "dietary": ["vegetarian", "gluten-free"]
                                    },
                                    {
                                        "name": "Bouillabaisse Provencal",
                                        "price": "€22",
                                        "description": "Traditional French fish soup with garlic farmhouse bread",
                                        "dietary": []
                                    }
                                ],
                                "Antipasti": [
                                    {
                                        "name": "Bruschetta Primavera",
                                        "price": "€12",
                                        "description": "Grilled peppers, courgettes, aubergine, garlic, basil, and virgin olive oil",
                                        "dietary": ["lactose-free", "vegetarian"]
                                    },
                                    {
                                        "name": "Selection Of Italian Ham Salami & Cheese",
                                        "price": "€18",
                                        "description": "",
                                        "dietary": ["gluten"]
                                    },
                                    {
                                        "name": "Seppie Stufate alla 'Luciana' e Polenta Fritta",
                                        "price": "€17",
                                        "description": "Cuttlefish in a rich tomato sauce with sweet peas, white wine, garlic, and fried polenta",
                                        "dietary": []
                                    },
                                    {
                                        "name": "Mozzarelline Fritte e Funghi Prataioli Ripieni al Burro All’Aglio",
                                        "price": "€15",
                                        "description": "Mushrooms filled with garlic butter and crispy fried mozzarella balls served with salsa rossa",
                                        "dietary": ["lactose-free", "vegetarian"]
                                    },
                                    {
                                        "name": "Salsicce Toscane di Fattoria alla Griglia con Polenta Fritta E Aceto Di Vino Rosso",
                                        "price": "€15",
                                        "description": "Grilled Tuscan sausages with fried polenta & red wine vinegar",
                                        "dietary": ["lactose-free"]
                                    },
                                    {
                                        "name": "Calamari Fritti Alla Veneziana",
                                        "price": "€14",
                                        "description": "Crispy squid with garlic mayonnaise",
                                        "dietary": []
                                    }
                                ],
                                "Paste e Risotti": [
                                    {
                                        "name": "Spaetzli Tirolesi agli Spinaci con Crema di Tartufo e Speck",
                                        "price": "€16",
                                        "description": "Spaetzli Tirolesi with spinach, speck, black truffle cream, sage, and parmesan",
                                        "dietary": ["vegetarian"]
                                    },
                                    {
                                        "name": "Risotto con Spinaci e Mascarpone",
                                        "price": "€17",
                                        "description": "Risotto with spinach and mascarpone cheese",
                                        "dietary": ["vegetarian"]
                                    },
                                    {
                                        "name": "Conchiglie con Code di Gamberi e Ricotta",
                                        "price": "€19",
                                        "description": "Conchiglie pasta with prawns, ricotta cheese, chilli, basil, and virgin olive oil",
                                        "dietary": []
                                    },
                                    {
                                        "name": "Rigatoni alla Bolognese",
                                        "price": "€16",
                                        "description": "Rigatoni pasta with traditional beef and pork ragu and red wine",
                                        "dietary": ["gluten-free option available"]
                                    },
                                    {
                                        "name": "Penne alla Norma con Melanzane, Peperoncino Rosso, Salsa di Pomodoro, Basilico e Ricotta",
                                        "price": "€16",
                                        "description": "Penne with tomato sauce, eggplant, garlic, red chilli, ricotta, and olive oil",
                                        "dietary": ["vegetarian", "gluten-free option available"]
                                    },
                                    {
                                        "name": "Risotto con Salsiccia Toscana",
                                        "price": "€17",
                                        "description": "Risotto with Tuscan sausage and Chianti red wine",
                                        "dietary": []
                                    }
                                ],
                                "Secondi": [
                                    {
                                        "name": "Bocconcini di Coda di Rospo in Umido alla Livornese",
                                        "price": "€27",
                                        "description": "Braised chunks of Monkfish in white wine, garlic, tomato sauce, served with toasted garlic bruschetta",
                                        "dietary": ["lactose-free"]
                                    },
                                    {
                                        "name": "Salmone Scozzese con Salsa di Aragosta",
                                        "price": "€29",
                                        "description": "Fillet of Scottish salmon with lobster sauce, scallops’ meat, & fresh tarragon",
                                        "dietary": []
                                    },
                                    {
                                        "name": "Filetto di Branzino alla Griglia Con Timo Fresco, Olio D'oliva e Limone",
                                        "price": "€29",
                                        "description": "Grilled fillet of Seabass with fresh thyme, olive oil, and lemon",
                                        "dietary": ["gluten-free", "lactose-free"]
                                    },
                                    {
                                        "name": "Tagliata di Manzo alla Griglia con Rucola",
                                        "price": "€28",
                                        "description": "Grilled sirloin steak with rocket salad & rosemary oil",
                                        "dietary": ["lactose-free"]
                                    },
                                    {
                                        "name": "Filetti di Vitello Funghi Porcini",
                                        "price": "€31",
                                        "description": "Pan-fried fillets of Veal with porcini mushrooms, sage, & Brandy sauce",
                                        "dietary": []
                                    }
                                ],
                                "Contorni": [
                                    {
                                        "name": "Rucola & Parmesan Salad",
                                        "price": "€7.50",
                                        "description": "",
                                        "dietary": []
                                    },
                                    {
                                        "name": "Spicy Roast Potatoes",
                                        "price": "€4.50",
                                        "description": "",
                                        "dietary": []
                                    },
                                    {
                                        "name": "Spinaci al Burro",
                                        "price": "€4.50",
                                        "description": "",
                                        "dietary": []
                                    },
                                    {
                                        "name": "Grilled Vegetables",
                                        "price": "€13",
                                        "description": "Basil, garlic & olive oil",
                                        "dietary": []
                                    },
                                    {
                                        "name": "Broccoli",
                                        "price": "€4.50",
                                        "description": "",
                                        "dietary": []
                                    },
                                    {
                                        "name": "French Fries",
                                        "price": "€4.50",
                                        "description": "",
                                        "dietary": []
                                    },
                                    {
                                        "name": "Peas & Mint",
                                        "price": "€4.50",
                                        "description": "",
                                        "dietary": []
                                    }
                                ]
                            }


                            const menuSections = {
                                "Desserts": [
                                    {
                                        "name": "Mousse al Cioccolato Fondente con Praline di Niccioline Caramellate",
                                        "price": "€8",
                                        "description": "Dark chocolate mousse with caramelised praline",
                                        "attributes": ["gluten-free"]
                                    },
                                    {
                                        "name": "Arance Marinate al Grand Marnier",
                                        "price": "€8.50",
                                        "description": "Marinated oranges in Grand Marnier, lime juice & fresh mint",
                                        "attributes": ["gluten-free", "lactose-free"]
                                    },
                                    {
                                        "name": "Tiramisu’ con Amaretto di Saronno",
                                        "price": "€8.50",
                                        "description": "Espresso coffee savoiardi sponge biscuits, mascarpone, dusted with cocoa powder"
                                    },
                                    {
                                        "name": "Torta di Mele",
                                        "price": "€8.50",
                                        "description": "Homemade apple tart served with vanilla ice cream"
                                    },
                                    {
                                        "name": "Torta di Ricotta al Forno",
                                        "price": "€8.50",
                                        "description": "Homemade baked ricotta cake with wild berry sauce"
                                    },
                                    {
                                        "name": "Profiterole con Panna",
                                        "price": "€8.50",
                                        "description": "Homemade profiteroles with cream and warm chocolate sauce"
                                    },
                                    {
                                        "name": "Affogato al Caffe",
                                        "price": "€5.50",
                                        "description": "One scoop of gelato with espresso coffee",
                                        "attributes": ["gluten-free"]
                                    },
                                    {
                                        "name": "Gelato",
                                        "prices": {
                                            "one_scoop": "€3.50",
                                            "two_scoops": "€6",
                                            "three_scoops": "€8"
                                        },
                                        "flavors": ["Vanilla", "Stracciatella", "Chocolate", "Nocciola", "Pistachio", "Strawberry"]
                                    },
                                    {
                                        "name": "Sorbetto al Limone",
                                        "price": "€8",
                                        "attributes": ["gluten-free", "lactose-free"]
                                    }
                                ],
                                "Coffees": [
                                    {
                                        "name": "Cappuccino",
                                        "price": "€3"
                                    },
                                    {
                                        "name": "Caffé Latte",
                                        "price": "€2.50"
                                    },
                                    {
                                        "name": "Flat White",
                                        "price": "€3"
                                    },
                                    {
                                        "name": "Espresso",
                                        "price": "€2"
                                    },
                                    {
                                        "name": "Double Espresso",
                                        "price": "€2.80"
                                    },
                                    {
                                        "name": "Espresso Longo",
                                        "price": "€2"
                                    },
                                    {
                                        "name": "Espresso Macchiato",
                                        "price": "€2.50"
                                    },
                                    {
                                        "name": "Italian Hot Chocolate",
                                        "price": "€4.50"
                                    }
                                ],
                                "Teas": [
                                    {
                                        "name": "Three Chamomile",
                                        "price": "€3.50",
                                        "imageUrl": "Assets/Images/salad4.jpeg" // Replace with your actual image path

                                    },
                                    {
                                        "name": "Three Ginger",
                                        "price": "€3.50"
                                    },
                                    {
                                        "name": "Three Fennel",
                                        "price": "€3.50"
                                    },
                                    {
                                        "name": "Fresh Mint",
                                        "price": "€3.50"
                                    },
                                    {
                                        "name": "English Breakfast",
                                        "price": "€3.50"
                                    },
                                    {
                                        "name": "Earl Grey",
                                        "price": "€3.50"
                                    }
                                ],
                                "Cocktails": [
                                    {
                                        "name": "Nuovo Martini",
                                        "price": "€11"
                                    },
                                    {
                                        "name": "Sgroppino",
                                        "price": "€11"
                                    },
                                    {
                                        "name": "Espresso Martini",
                                        "price": "€11"
                                    }
                                ],
                                "Amaro & Liquers": [
                                    {
                                        "name": "Limoncello di Capri",
                                        "price": "€6"
                                    },
                                    {
                                        "name": "Frangelico",
                                        "price": "€6"
                                    },
                                    {
                                        "name": "Fernet Branca",
                                        "price": "€7"
                                    },
                                    {
                                        "name": "Montenegro",
                                        "price": "€8"
                                    },
                                    {
                                        "name": "Averna",
                                        "price": "€8"
                                    }
                                ],
                                "Grappa": [
                                    {
                                        "name": "Pinot Nero",
                                        "price": "€6"

                                    },
                                    {
                                        "name": "Borgo Antico San Vitale",
                                        "price": "€10"
                                    },
                                    {
                                        "name": "Passone Bianca",
                                        "price": "€7"
                                    },
                                    {
                                        "name": "Piave Cuore",
                                        "price": "€6"
                                    }
                                ]
                            }

                            const childrenmenusection = {
                                "MainCourse": [
                                    {
                                        "name": "Penne Pasta",
                                        "description": "With tomato sauce, bolognese, or butter & cheese"
                                    },
                                    {
                                        "name": "Fish Goujons",
                                        "description": "Served with fries & carrot sticks"
                                    },
                                    {
                                        "name": "Salmone Scozzese",
                                        "description": "Served with fries & broccoli",
                                        "extra": "€6"
                                    }
                                ],
                                "Dolci": [
                                    {
                                        "name": "One scoop of ice cream",
                                        "description": "Vanilla, Stracciatella, Chocoloate, Nocciola or Strawberry"

                                    }
                                ]
                            }


                            const lunchmenuSection = {

                                "Starter": [
                                    {
                                        "name": "Minestrone con Pesto Genovese",
                                        "description": "Traditional minestrone soup with pesto Genovese",
                                        "dietary": ["gluten-free", "vegetarian"]
                                    },
                                    {
                                        "name": "Mozzarelline Fritte e Funghi Prataioli Ripieni al Burro All’aglio",
                                        "description": "Mushrooms filled with garlic butter and crispy fried mozzarella balls served with salsa rossa",
                                        "dietary": ["lactose-free", "vegetarian"]
                                    },
                                    {
                                        "name": "Bruschetta Primavera",
                                        "description": "Grilled peppers, courgettes, aubergine, garlic, basil & virgin olive oil",
                                        "dietary": ["lactose-free", "vegetarian"]
                                    }
                                ],
                                "MainCourse": [
                                    {
                                        "name": "Risotto con Spinaci e Mascarpone",
                                        "description": "Risotto with spinach & mascarpone cheese",
                                        "dietary": ["vegetarian"]
                                    },
                                    {
                                        "name": "Penne alla Norma con Melanzane e Ricotta Salata",
                                        "description": "Penne, tomato sauce, egg plant, garlic, red chilli, salted ricotta & olive oil",
                                        "dietary": ["vegetarian"],
                                        "note": "gluten-free spaghetti and penne pasta available"
                                    },
                                    {
                                        "name": "Spaetzli Tirolesi agli Spinaci con Crema di Tartufo e Speck",
                                        "description": "Spinach Spaetzli Tirolesi, speck, black truffle cream, sage & parmesan"
                                    }
                                ],
                                "Dessert": [
                                    {
                                        "name": "Mousse al Cioccolato Fondente con Praline di Niccioline Caramellate",
                                        "description": "Dark chocolate mousse with caramelised praline",
                                        "dietary": ["gluten-free"]
                                    },
                                    {
                                        "name": "Affogato al Caffe",
                                        "description": "One scoop of gelato espresso coffee",
                                        "dietary": ["gluten-free"]
                                    },
                                    {
                                        "name": "Arance Marinate al Grand Marnier",
                                        "description": "Marinated oranges in Grand Marnier, lime juice & fresh mint",
                                        "dietary": ["gluten-free", "lactose-free"]
                                    }
                                ],

                            }





                            const menuSections2 = {
                                "Desserts": [
                                    {
                                        "name": "Mousse al Cioccolato Fondente con Praline di Niccioline Caramellate",
                                        "price": "€777777",
                                        "description": "Dark chocolate mousse with caramelised praline",
                                        "attributes": ["gluten-free"]
                                    },
                                    {
                                        "name": "Arance Marinate al Grand Marnier",
                                        "price": "€8.50",
                                        "description": "Marinated oranges in Grand Marnier, lime juice & fresh mint",
                                        "attributes": ["gluten-free", "lactose-free"]
                                    },
                                    {
                                        "name": "Tiramisu’ con Amaretto di Saronno",
                                        "price": "€8.50",
                                        "description": "Espresso coffee savoiardi sponge biscuits, mascarpone, dusted with cocoa powder"
                                    },
                                    {
                                        "name": "Torta di Mele",
                                        "price": "€8.50",
                                        "description": "Homemade apple tart served with vanilla ice cream"
                                    },
                                    {
                                        "name": "Torta di Ricotta al Forno",
                                        "price": "€8.50",
                                        "description": "Homemade baked ricotta cake with wild berry sauce"
                                    },
                                    {
                                        "name": "Profiterole con Panna",
                                        "price": "€8.50",
                                        "description": "Homemade profiteroles with cream and warm chocolate sauce"
                                    },
                                    {
                                        "name": "Affogato al Caffe",
                                        "price": "€5.50",
                                        "description": "One scoop of gelato with espresso coffee",
                                        "attributes": ["gluten-free"]
                                    },
                                    {
                                        "name": "Gelato",
                                        "prices": {
                                            "one_scoop": "€3.50",
                                            "two_scoops": "€6",
                                            "three_scoops": "€8"
                                        },
                                        "flavors": ["Vanilla", "Stracciatella", "Chocolate", "Nocciola", "Pistachio", "Strawberry"]
                                    },
                                    {
                                        "name": "Sorbetto al Limone",
                                        "price": "€8",
                                        "attributes": ["gluten-free", "lactose-free"]
                                    }
                                ],
                                "Coffees": [
                                    {
                                        "name": "Cappuccino",
                                        "price": "€3"
                                    },
                                    {
                                        "name": "Caffé Latte",
                                        "price": "€2.50"
                                    },
                                    {
                                        "name": "Flat White",
                                        "price": "€3"
                                    },
                                    {
                                        "name": "Espresso",
                                        "price": "€2"
                                    },
                                    {
                                        "name": "Double Espresso",
                                        "price": "€2.80"
                                    },
                                    {
                                        "name": "Espresso Longo",
                                        "price": "€2"
                                    },
                                    {
                                        "name": "Espresso Macchiato",
                                        "price": "€2.50"
                                    },
                                    {
                                        "name": "Italian Hot Chocolate",
                                        "price": "€4.50"
                                    }
                                ],
                                "Teas": [
                                    {
                                        "name": "Three Chamomile",
                                        "price": "€3.50",
                                        "imageUrl": "Assets/Images/salad4.jpeg" // Replace with your actual image path

                                    },
                                    {
                                        "name": "Three Ginger",
                                        "price": "€3.50"
                                    },
                                    {
                                        "name": "Three Fennel",
                                        "price": "€3.50"
                                    },
                                    {
                                        "name": "Fresh Mint",
                                        "price": "€3.50"
                                    },
                                    {
                                        "name": "English Breakfast",
                                        "price": "€3.50"
                                    },
                                    {
                                        "name": "Earl Grey",
                                        "price": "€3.50"
                                    }
                                ],
                                "Cocktails": [
                                    {
                                        "name": "Nuovo Martini",
                                        "price": "€11"
                                    },
                                    {
                                        "name": "Sgroppino",
                                        "price": "€11"
                                    },
                                    {
                                        "name": "Espresso Martini",
                                        "price": "€11"
                                    }
                                ],
                                "Amaro & Liquers": [
                                    {
                                        "name": "Limoncello di Capri",
                                        "price": "€6"
                                    },
                                    {
                                        "name": "Frangelico",
                                        "price": "€6"
                                    },
                                    {
                                        "name": "Fernet Branca",
                                        "price": "€7"
                                    },
                                    {
                                        "name": "Montenegro",
                                        "price": "€8"
                                    },
                                    {
                                        "name": "Averna",
                                        "price": "€8"
                                    }
                                ],
                                "Grappa": [
                                    {
                                        "name": "Pinot Nero",
                                        "price": "€6"

                                    },
                                    {
                                        "name": "Borgo Antico San Vitale",
                                        "price": "€10"
                                    },
                                    {
                                        "name": "Passone Bianca",
                                        "price": "€7"
                                    },
                                    {
                                        "name": "Piave Cuore",
                                        "price": "€6"
                                    }
                                ]
                            }

                            
                            const  EasterSundaySetMenu ={
                                    "Starters": [
                                        {
                                            "name": "Bruschetta Primavera",
                                            "description": "Grilled peppers courgettes aubergine garlic basil & virgin olive oil",
                                            "attributes": ["vegetarian", "vegan"]
                                        },
                                        {
                                            "name": "Quattro Conchiglie di San-Giacomo con Salsa al Prosecco e Burro al Limone",
                                            "description": "Four scallops gently pan fried topped with butter lemon & prosecco sauce",
                                            "attributes": ["gluten-free"]
                                        },
                                        {
                                            "name": "Carpaccio Di Manzo Con Burrata Pugliese",
                                            "description": "Crudo of beef rocket burrata basil & olive oil",
                                            "attributes": ["gluten-free"]
                                        }
                                    ],
                                        "MainCourses": [
                                            {
                                                "name": "Cuore di Filetto di \"Scottona\" con salsa al Gorgonzola Dolce Profumato al Rosmarino",
                                                "description": "Grilled beef fillet \"Scottona\" gorgonzola sauce & rosemary olive oil served with french fries & rocket",
                                                "attributes": ["gluten-free"]
                                            },
                                            {
                                                "name": "Salmone Scozzese con Salsa di Aragosta",
                                                "description": "Fillet of Scottish salmon lobster sauce scallops’ meat & fresh tarragon served with roast potatoes & broccoli",
                                                "attributes": []
                                            },
                                            {
                                                "name": "Conchiglie con Code di Gamberi e Ricotta",
                                                "description": "Conchiglie pasta prawns ricotta cheese chilli basil & virgin olive oil",
                                                "attributes": []
                                            },
                                            {
                                                "name": "Penne alla Norma con Melanzane Peperoncino Rosso Salsa di Pomodoro Basilico e Ricotta Salata",
                                                "description": "Penne tomato sauce eggplant garlic red chilli salted ricotta & olive oil",
                                                "attributes": ["vegetarian"]
                                            }
                                        ],
                                            "Desserts": [
                                                {
                                                    "name": "Mousse al Cioccolato Fondente con Praline di Niccioline Caramellate",
                                                    "description": "Dark chocolate mousse with caramelised praline",
                                                    "attributes": ["gluten-free"]
                                                },
                                                {
                                                    "name": "Tiramisu’ con Amaretto Di Saronno",
                                                    "description": "Espresso coffee savoiardi sponge biscuits mascarpone dusted with cocoa powder",
                                                    "attributes": []
                                                },
                                                {
                                                    "name": "Sorbetto al Limone",
                                                    "description": "Lemon sorbet",
                                                    "attributes": ["gluten-free", "lactose-free"]
                                                }
                                            ]
                                }
                            

                            const cocktailnightsmenu = {
                                "Cocktails": [
                                    {
                                        "name": "Negroni",
                                        "description": "Bombay Sapphire Gin, Martini Rosso, Campari"
                                    },
                                    {
                                        "name": "Old Fashioned",
                                        "description": "Makers Mark Bourbon, sugar syrup, Angostura Bitters"
                                    },
                                    {
                                        "name": "Pisco Sour",
                                        "description": "Capel Pisco, lemon juice, sugar syrup, egg white"
                                    },
                                    {
                                        "name": "Whiskey Sour",
                                        "description": "J&B Rare Blended Scotch, lemon juice, sugar syrup, egg white"
                                    },
                                    {
                                        "name": "Bramble",
                                        "description": "Bombay Sapphire Gin, lemon juice, blackberry liqueur"
                                    },
                                    {
                                        "name": "Aperol Spritz",
                                        "description": "Aperol, Bandarossa Prosecco, Fever Tree Soda Water"
                                    },
                                    {
                                        "name": "Garibaldi",
                                        "description": "Campari, fresh orange juice"
                                    },
                                    {
                                        "name": "Margarita",
                                        "description": "Olmeca Blanco Tequila, Triple Sec, lime juice"
                                    },
                                    {
                                        "name": "Espresso Martini",
                                        "description": "Absolut Vodka, Kahlua, espresso"
                                    },
                                    {
                                        "name": "Moscow Mule",
                                        "description": "Absolut Vodka, Fever Tree Ginger Beer, lime juice"
                                    },
                                    {
                                        "name": "Dark N' Stormy",
                                        "description": "Havana Club 7yo Rum, Fever Tree Ginger Beer, lime juice"
                                    }
                                ],
                                    "Cicchetti": [
                                        {
                                            "name": "Bruschetta Primavera",
                                            "description": "Grilled peppers, courgettes, aubergine, garlic, basil & virgin olive oil",
                                            "price": "€12",
                                            "attributes": ["lactose-free", "vegetarian"]
                                        },
                                        {
                                            "name": "Antipasti Platter",
                                            "description": "Selection of Italian Ham, Salami & Cheese",
                                            "price": "€18",
                                            "attributes": ["gluten-free"]
                                        },
                                        {
                                            "name": "Calamari Fritti Alla Veneziana",
                                            "description": "Crispy squid, garlic mayonnaise",
                                            "price": "€14"
                                        },
                                        {
                                            "name": "Salsicce Toscane di Fattoria alla Griglia con Polenta Fritta e Aceto Di Vino Rosso",
                                            "description": "Grilled Tuscan sausages, fried polenta & red wine vinegar",
                                            "price": "€15",
                                            "attributes": ["gluten-free", "lactose-free"]
                                        },
                                        {
                                            "name": "Mozzarelline Fritte e Funghi Prataioli Ripieni al Burro All’aglio",
                                            "description": "Mushrooms filled with garlic butter and crispy fried mozzarella balls, served with salsa rossa",
                                            "price": "€15",
                                            "attributes": ["lactose-free", "vegetarian"]
                                        }
                                    ]
                            }

                            const thursdaynightmenu = {
                                "Thursday Nighr Grill Menu NIGHT GRILL MENU": [
                                    {
                                        "name": "GRIGLIATA DI CARNI ALL’ITALIANA CON SPINACI AL BURRO E PATATE ARROSTE PICCANTI AL ROSMARINO",
                                        "description": "Italian Style BBQ of beef fillet, veal fillets, Tuscan pork sausage & chicken wings marinated in garden fresh herbs & olive oil. Served with buttered spinach, spicy rosemary roast potatoes."
                                    },
                                    {
                                        "name": "Choose Your Sauce",
                                        "description": "Porcini Mushroom Sauce or Gorgonzola Sauce or Green Peppercorns Sauce"
                                    }
                                ]
                            }



                            // Function to add a menu item to the flex container
                            function addMenuItem(container, item) {
                                const menuItem = document.createElement('div');
                                menuItem.className = 'menu-item desert wine children carte lunch cocktails lm easter grigliatanights cocktailnights';


                                const img = document.createElement('img');
                                img.src = item.imageUrl;
                                img.alt = item.name;

                                const h3 = document.createElement('h3');
                                h3.textContent = item.name;

                                const pDesc = document.createElement('p');
                                pDesc.textContent = item.description;

                                const pPrice = document.createElement('p');
                                pPrice.className = 'price';
                                pPrice.textContent = `€${item.price}`;

                                menuItem.appendChild(img);
                                menuItem.appendChild(h3);
                                menuItem.appendChild(pDesc);
                                menuItem.appendChild(pPrice);

                                container.appendChild(menuItem);
                            }

                            // Function to create a carousel item
                            function createCarouselItem(sectionName, group) {
                                const carouselItem = document.createElement('div');
                                carouselItem.className = 'carousel-item';

                                const h1 = document.createElement('h1');
                                h1.textContent = sectionName;

                                // Create a flex container to hold exactly three items
                                const flexContainer = document.createElement('div');
                                flexContainer.className = 'd-flex justify-content-around';

                                // Add exactly three items to the flex container
                                group.forEach(item => addMenuItem(flexContainer, item));

                                carouselItem.appendChild(h1);
                                carouselItem.appendChild(flexContainer);

                                return carouselItem;
                            }


                            function appendCarouselItems(carouselSelector, menuSections) {
                                const carouselInner = document.querySelector(`${carouselSelector} .carousel-inner`);
                                carouselInner.innerHTML = ''; // Clear existing items, if any

                                Object.entries(menuSections).forEach(([sectionName, items], sectionIndex) => {
                                    // Split items into groups of 3 and create a carousel item for each group
                                    for (let i = 0; i < items.length; i += 3) {
                                        const group = items.slice(i, i + 3);
                                        const carouselItem = createCarouselItem(sectionName, group);
                                        // Only mark the first carousel item of the first section as active
                                        if (i === 0 && sectionIndex === 0) {
                                            carouselItem.classList.add('active');
                                        }
                                        carouselInner.appendChild(carouselItem);
                                    }
                                });
                            }

                            // General function to initialize a carousel
                            function initializeCarousel(carouselSelector) {
                                $(carouselSelector).carousel({
                                    interval: false
                                });
                            }

                            // When the DOM is fully loaded, initialize carousels
                            document.addEventListener('DOMContentLoaded', () => {
                                // Initialize the desert menu carousel
                                initializeCarousel('#desertCarousel');
                                appendCarouselItems('#desertCarousel', menuSections);


                                // Initialize the children menu carousel
                                initializeCarousel('#childrenCarousel');
                                appendCarouselItems('#childrenCarousel', childrenmenusection);


                                appendCarouselItems('#wineCarousel', winemenuSection);
                                initializeCarousel('#wineCarousel');

                                appendCarouselItems('#carteCarousel', cartemenuSection);
                                initializeCarousel('#carteCarousel');

                                appendCarouselItems('#lunchCarousel', lunchmenuSection);
                                initializeCarousel('#lunchCarousel');

                                appendCarouselItems('#cocktailsCarousel', cocktailmenuSection);
                                initializeCarousel('#cocktailsCarousel');

                                appendCarouselItems('#lmCarousel', lunchmenuSection);
                                initializeCarousel('#lmCarousel');

                                appendCarouselItems('#easterCarousel', EasterSundaySetMenu);
                                initializeCarousel('#easterCarousel');


                                appendCarouselItems('#cocktailnightsCarousel', cocktailnightsmenu);
                                initializeCarousel('#cocktailnightsCarousel');

                                appendCarouselItems('#grigliatanightsCarousel', thursdaynightmenu);
                                initializeCarousel('#grigliatanightsCarousel');



                                // You can add more carousels by repeating the above two lines with different selectors and data
                            });



                        </script>













                        <%--<%--   <!-- LUNCH SET MENU Items -->


                        <div id="lunchCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <h1>STARTER</h1>
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item lunch">
                                            <img src="Assets\Images\Fmain1.jpeg" alt="Minestrone con Pesto Genovese" class="menu-img" data-toggle="modal" data-target="#imageModal">>
                                            <h3>Minestrone con Pesto Genovese</h3>
                                            <p>Traditional minestrone soup with pesto Genovese (g ,v)</p>
                                        </div>

                                        <div class="menu-item lunch">
                                            <img src="Assets\Images\Fmain2.jpeg" alt="Mozzarelline Fritte e Funghi Prataioli Ripieni al Burro All’aglio">
                                            <h3>Mozzarelline Fritte e Funghi Prataioli Ripieni al Burro All’aglio</h3>
                                            <p>Mushrooms filled with garlic butter and crispy fried mozzarella balls, served with salsa rossa (l, v)</p>
                                        </div>

                                        <div class="menu-item lunch">
                                            <img src="Assets\Images\Fmain3.jpg" alt="Bruschetta Primavera">
                                            <h3>Bruschetta Primavera</h3>
                                            <p>Grilled peppers, courgettes, aubergine, garlic, basil, & virgin olive oil (l, v)</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <h1>MAIN COURSE</h1>

                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item lunch">
                                            <img src="Assets\Images\Fmain4.jpeg" alt="Risotto con Spinaci e Mascarpone">
                                            <h3>Risotto con Spinaci e Mascarpone</h3>
                                            <p>Risotto with spinach & mascarpone cheese (v)</p>
                                        </div>

                                        <div class="menu-item lunch">
                                            <img src="Assets\Images\Fmain5.jpeg" alt="Penne alla Norma con Melanzane e Ricotta Salata*">
                                            <h3>Penne alla Norma con Melanzane e Ricotta Salata*</h3>
                                            <p>Penne, tomato sauce, egg plant, garlic, red chilli, salted ricotta & olive oil (v)</p>
                                        </div>

                                        <div class="menu-item lunch">
                                            <img src="Assets\Images\Fmain6.jpeg" alt="Spaetzli Tirolesi agli Spinaci con Crema di Tartufo e Speck">
                                            <h3>Spaetzli Tirolesi agli Spinaci con Crema di Tartufo e Speck</h3>
                                            <p>Spinach Spaetzli Tirolesi, speck, black truffle cream, sage & parmesan</p>
                                        </div>

                                    </div>
                                </div>

                                  <div class="carousel-item">
                                    <h1>DESSERT</h1>

                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item lunch">
                                            <img src="Assets\Images\Fmain4.jpeg" alt="Mousse al Cioccolato Fondente con Praline di Niccioline Caramellate">
                                            <h3>Mousse al Cioccolato Fondente con Praline di Niccioline Caramellate</h3>
                                            <p>Dark chocolate mousse with caramelised praline (g)</p>
                                        </div>

                                        <div class="menu-item lunch">
                                            <img src="Assets\Images\Fmain5.jpeg" alt="Affogato al Caffe">
                                            <h3>Affogato al Caffe</h3>
                                            <p>One scoop of gelato, espresso coffee (g)</p>
                                        </div>

                                        <div class="menu-item lunch">
                                            <img src="Assets\Images\Fmain6.jpeg" alt="Arance Marinate al Grand Marnier">
                                            <h3>Arance Marinate al Grand Marnier</h3>
                                            <p>Marinated oranges in Grand Marnier, lime juice & fresh mint (g, l)</p>
                                        </div>

                                    </div>
                                </div>

                          <%--      <p>Monday To Friday</p>
                                <p>12pm-3pm</p>
                                <p>€25 for 2 courses</p>
                                <p>€30 for 3 courses</p>--%>



                        <%--          <!-- Add more .carousel-item as needed -->
                            </div>
                            <a class="carousel-control-prev" href="#lunchCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#lunchCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        




                        <!-- Cocktails & Drinks Items -->


                      <%--  <div id="cocktailsCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <h1>HOUSE COCKTAILS - €11</h1>
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item cocktails">
                                            <img src="Assets\Images\main1.jpeg" alt="Villa Bologna Spritz" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Villa Bologna Spritz</h3>
                                            <p>Bombay Sapphire Gin, Limoncello di Capri, citrus cordial, lemon juice, Fever Tree Tonic Water</p>
                                        </div>

                                        <div class="menu-item cocktails">
                                            <img src="Assets\Images\main2.jpeg" alt="Queen Margarita" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Queen Margarita</h3>
                                            <p>Olmeca Silver Tequila, Lajita Mezcal, honey & ginger syrup, lime juice</p>
                                        </div>




                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <h1>CLASSIC COCKTAILS</h1>
                                    <div class="d-flex justify-content-around">
                                        <div class="menu-item cocktails">
                                            <img src="Assets\Images\main4.jpeg" alt="Garibaldi" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Garibaldi</h3>
                                            <p>Campari, fresh orange juice</p>
                                        </div>

                                        <div class="menu-item cocktails">
                                            <img src="Assets\Images\main5.jpg" alt="Negroni" class="menu-img" data-toggle="modal" data-target="#imageModal">
                                            <h3>Negroni</h3>
                                            <p>Bombay Sapphire Gin, Carpano Antica Formula, Campari</p>
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
--%>











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
                                    <img id="leftArrowMenuD" src="Assets\Images\leftArrow.png" alt="Previous" class="menu-control-prev-icon"/>
                                </div>
                            </div>

                            <!-- Menu Categories -->
                            <div class="col overflow-hidden">
                                <div class="d-flex justify-content-center menu-categories-scroll">
                                    <ul id="bar-menu-categories" class="list-unstyled d-flex mb-0">
                                        <li data-category="lm" class="active" onclick="showMenu('lm', this)">Lunch Set Menu</li>
                                        <li data-category="easter" onclick="showMenu('easter', this)">Easter Set Menu</li>
                                        <li data-category="grigliatanights" onclick="showMenu('grigliatanights', this)">Grigliata Nights</li>
                                        <li data-category="cocktailnights" onclick="showMenu('cocktailnights', this)">Cocktail Nights</li>
                           
                                    </ul>
                                </div>
                            </div>

                            <!-- Next Arrow -->
                            <div class="col-auto">
                                <div class="menu-control-next" role="button">
                                    <img id="rightMenuD" src="Assets\Images\rightArrow.png" alt="Next" class="menu-control-next-icon"/>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="menu-items">
                        <section class="menu">

                              <div id="lmCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <!-- Carousel items will be added dynamically here -->
                            </div>
                            <a class="carousel-control-prev" href="#lmCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#lmCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>


                             <div id="easterCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <!-- Carousel items will be added dynamically here -->
                            </div>
                            <a class="carousel-control-prev" href="#easterCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#easterCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                             <div id="grigliatanightsCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <!-- Carousel items will be added dynamically here -->
                            </div>
                            <a class="carousel-control-prev" href="#grigliatanightsCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#grigliatanightsCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                             <div id="cocktailnightsCarousel" class="carousel slide" data-interval="false">
                            <div class="carousel-inner">
                                <!-- Carousel items will be added dynamically here -->
                            </div>
                            <a class="carousel-control-prev" href="#cocktailnightsCarousel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#cocktailnightsCarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        

                       

                             




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
        </div>


    </div>

    <!-- Feedback -->
    <div class="feedback-wrapper">
        <div class="feedback-container">
            <div class="about-icon">
                <img id="feedbackIcon" src="Assets\Images\FeedbackIcon.png" alt="Feedback Icon" class="icon" />
            </div>

            <div class="header">
                <h1>TESTIMONIALS</h1>
            </div>
            <div class="feedback-navigation left" onclick="changeFeedback(-1)">
                <img id="FeedbackLeftIcon" src="Assets\Images\leftArrow.png" alt="Previous" class="menu-control-prev-icon">
            </div>
            <div id="feedback-box" class="feedback-box">
                <div class="stars">★★★★★</div>
                <div class="feedback-title"></div>
                <div class="feedback-text"></div>
                <div class="feedback-author"></div>
            </div>


            <div class="feedback-navigation right" onclick="changeFeedback(1)">
                <img id="FeedbackRightIcon" src="Assets\Images\rightArrow.png" alt="Next" class="menu-control-next-icon" />
            </div>
        </div>
    </div>
    <!-- Feedback -->


    <!-- Gallery -->

    <div id="gallery-section">
        <div class="container">
            <div class="about-icon">
                <img id="galleryIcon" src="Assets\Images\galleryicon.png" alt="Feedback Icon" class="icon" />
            </div>

            <div class="header">
                <h1>GALLERY</h1>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
                    <img
                        src="Assets\Images\g3.jpg"
                        class="w-100 shadow-1-strong rounded mb-4 menu-img"
                        data-toggle="modal" data-target="#imageModal" />

                    <img
                        src="Assets\Images\g5.jpg"
                        class="w-100 shadow-1-strong rounded mb-4 menu-img"
                        data-toggle="modal" data-target="#imageModal" />

                    <img
                        src="Assets\Images\g6.jpg"
                        class="w-100 shadow-1-strong rounded mb-4 menu-img"
                        data-toggle="modal" data-target="#imageModal" />
                </div>

                <div class="col-lg-4 mb-4 mb-lg-0">
                    <img
                        src="Assets\Images\g8.jpg"
                        class="w-100 shadow-1-strong rounded mb-4 menu-img"
                        data-toggle="modal" data-target="#imageModal" />

                    <img
                        src="Assets\Images\g7.jpg"
                        class="w-100 shadow-1-strong rounded mb-4 menu-img"
                        data-toggle="modal" data-target="#imageModal" />

                    <img
                        src="Assets\Images\g9.jpg"
                        class="w-100 shadow-1-strong rounded mb-4 menu-img"
                        data-toggle="modal" data-target="#imageModal" />
                </div>

                <div class="col-lg-4 mb-4 mb-lg-0">
                    <img
                        src="Assets\Images\g2.jpg"
                        class="w-100 shadow-1-strong rounded mb-4 menu-img"
                        data-toggle="modal" data-target="#imageModal" />

                    <img
                        src="Assets\Images\g1.jpg"
                        class="w-100 shadow-1-strong rounded mb-4 menu-img"
                        data-toggle="modal" data-target="#imageModal" />
                    <img
                        src="Assets\Images\g4.jpg"
                        class="w-100 shadow-1-strong rounded mb-4 menu-img"
                        data-toggle="modal" data-target="#imageModal" />
                </div>
            </div>
        </div>
    </div>
    <!-- Gallery -->



    <!-- Contact -->

    <div class="container">
        <div class="menu-container">
            <div class="about-icon">
                <img id="ContactIcon" src="Assets\Images\contactIcon.png" alt="Feedback Icon" class="icon" />
            </div>
            <div class="menu-toggle">

                <button id="toggleContact" class="toggle-button active">Contact</button>
                <button id="toggleBook" class="toggle-button">Book a Table</button>
            </div>
        </div>
        <div id="contact-section">
            <div class="container">


                <div class="contact-wrapper">
                    <div class="contact-card">
                        <div class="contact-info">
                            <div class="info-section">
                                <img src="Assets\Images\OpenIcon.png" alt="Clock Icon" class="icon">
                                <div class="info-text">
                                    <h2>Opening Times</h2>
                                    <p>
                                        Mon-Sun<br>
                                        12:00pm - 3:00pm<br>
                                        6:00pm - 11:00pm*

                                    </p>
                                </div>
                            </div>
                            <div class="info-section">
                                <img src="Assets\Images\loc-icon.png" alt="Location Icon" class="icon">
                                <div class="info-text">
                                    <h2>Address</h2>
                                    <p>
                                        28 Triq San Anton<br>
                                        Attard ATD 1282<br>
                                        Malta
                                    </p>
                                </div>
                            </div>
                            <div class="info-section">
                                <img src="Assets\Images\phone-icon.png" alt="Phone Icon" class="icon">
                                <div class="info-text">
                                    <h2>Phone Number</h2>
                                    <p>+356 7941 8708</p>
                                </div>

                            </div>
                            <div class="info-section">

                                <p>*Note: Sunday we do not open that time</p>

                            </div>
                        </div>
                        <div id="map"></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Contact -->


        <!-- Book -->

        <div id="book-section">
            <div class="container">
                <div class="book-wrapper">
                    <div class="reservation-form">
                        <h1 class="form-title">BOOK A TABLE</h1>
                        <form onsubmit="return validateForm()">
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="firstName">Name</label>
                                    <div class="form-input-box">
                                        <input type="text" id="firstName" placeholder="First" />
                                        <button class="mic-btn" type="button" onclick="startSpeechRecognition('firstName')">
                                            <img src="Assets/Images/microphone_icon.png" alt="Start Speech" />
                                        </button>
                                    </div>



                                </div>
                                <div class="form-group">
                                    <label for="lastName">Surname</label>
                                    <div class="form-input-box">

                                        <input type="text" id="lastName" placeholder="Last" />
                                        <button class="mic-btn" type="button" onclick="startSpeechRecognition('lastName')">
                                            <img src="Assets\Images\microphone_icon.png" alt="Start Speech" />
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <div class="form-input-box">
                                        <input type="tel" id="phone" placeholder="#### ####" />
                                        <button class="mic-btn" type="button" onclick="startSpeechRecognition('phone')">
                                            <img src="Assets\Images\microphone_icon.png" alt="Start Speech" />
                                        </button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="persons">Number of persons</label>
                                    <input type="number" id="persons" placeholder="Number of Persons" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="date">Reservation Date</label>
                                    <input type="date" id="date" />
                                </div>
                                <div class="form-group">
                                    <label for="time">Reservation Time</label>
                                    <input type="time" id="time" />
                                </div>
                            </div>
                            <button type="submit" class="form-button">BOOK IT!</button>
                        </form>
                        <div id="notification" class="notification"></div>
                    </div>
                </div>
            </div>
        </div>



    </div>

    <!-- Book -->




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
                    <img src="" id="imagePreview" alt="Menu Item" style="width: 100%;" />
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="preferencesModal" tabindex="-1" role="dialog" aria-labelledby="preferencesModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title w-100" id="preferencesModalLabel">Manage Preferences</h5>
                    <button type="button" class="close" id="closePreferences" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>

                </div>
                <div class="modal-body">
                    <!-- Font Size Slider -->
                    <div class="row align-items-center mb-3">
                        <div class="col-sm-8">
                            <label for="fontSizeRangeSlider" class="form-label">Font Size</label>
                            <p>Adjust the text size of the platform</p>
                        </div>
                        <div class="col-sm-4 slider-container">
                            <div class="label">0</div>
                            <input type="range" id="fontSizeRangeSlider" value="50" min="50" max="100" />
                            <div class="label">100</div>

                        </div>
                    </div>

                    <!-- Voice Over Toggle -->
                    <div class="row align-items-center mb-3">
                        <div class="col-sm-8">
                            <label class="form-check-label" for="toggleSwitch">Voice Over</label>
                            <p>Toggle spoken feedback for screen elements</p>
                        </div>
                        <div class="col-sm-4">
                            <input type="checkbox" id="toggleSwitch" />
                            <label for="toggleSwitch" class="toggle-label"></label>
                        </div>
                    </div>

                    <!-- Interface Theme Selection -->
                    <div class="row align-items-center mb-3">
                        <div class="col-sm-8">
                            <label for="themeSelection" class="form-label">Interface Theme</label>
                            <p>Customize your application theme</p>
                        </div>
                        <div class="col-sm-6">
                            <div id="themeSelection">
                                <button type="button" class="btn" data-theme="light">Light</button>
                                <button type="button" class="btn" data-theme="dark">Dark</button>
                            </div>
                        </div>
                    </div>

                    <!-- Brightness Slider -->
                    <div class="row align-items-center mb-3">
                        <div class="col-sm-8">
                            <label for="brightnessSlider" class="form-label">Brightness</label>
                            <p>Adjust the brightness of the application theme</p>
                        </div>
                        <div class="col-sm-4 slider-container">
                            <div class="label">0</div>
                            <input type="range" id="brightnessSlider" value="50" min="30" max="100" />
                            <div class="label">100</div>
                        </div>
                    </div>

                    <!-- Contrast Slider -->
                    <div class="row align-items-center mb-3">
                        <div class="col-sm-8">
                            <label for="contrastSlider" class="form-label">Contrast</label>
                            <p>Adjust the contrast of the application theme</p>
                        </div>
                        <div class="col-sm-4 slider-container">
                            <div class="label">0</div>
                            <input type="range" id="contrastSlider" value="50" min="30" max="100" />
                            <div class="label">100</div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" id="resetPreferences">Reset to defaults</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Save Preferences</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var themeButtons = document.querySelectorAll('#themeSelection .btn');

            themeButtons.forEach(function (btn) {
                btn.addEventListener('click', function () {
                    var theme = this.getAttribute('data-theme'); // Get the theme from the button

                    // Update the body class with the selected theme
                    document.body.className = ''; // Clear existing theme classes
                    document.body.classList.add(theme); // Add the selected theme class

                    // Optionally, save the selected theme to local storage
                    localStorage.setItem('selectedTheme', theme);
                });
            });

            // Optionally, apply the saved theme on page load
            var savedTheme = localStorage.getItem('selectedTheme');
            if (savedTheme) {
                document.body.className = '';
                document.body.classList.add(savedTheme);
            }
        });
    </script>

    <script>


</script>
    <style>
        /* Default system theme styles */

        /* Light theme styles */
        body.light {
            --background-color: #f6f6f6;
            --text-color: #363435;
            --icon-color: #363435;
        }

        /* Dark theme styles */
        body.dark {
            --background-color: #363435;
            --text-color: #f6f6f6;
            --icon-color: #f6f6f6;
        }


        /*body {
    background-color: var(--background-color);
    color: var(--text-color);
}*/
    </style>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            function applyTheme(theme) {
                document.body.className = '';
                document.body.classList.add(theme);
            }

            // Directly apply the Light theme without checking localStorage
            applyTheme('light');

            // Setup theme selection buttons
            var themeButtons = document.querySelectorAll('#themeSelection .btn');
            themeButtons.forEach(function (btn) {
                btn.addEventListener('click', function () {
                    var theme = this.getAttribute('data-theme');
                    applyTheme(theme);
                    // Note: This will apply the selected theme when clicked,
                    // but it won't persist after a page reload since we're not using localStorage to save the preference.
                });
            });
        });



    </script>

    <script><!-- Include this at the bottom of your HTML, right before the closing </body> tag -->

    // Function to adjust brightness
    function adjustBrightness() {
        var brightnessValue = document.getElementById('brightnessSlider').value;
        document.body.style.filter = `brightness(${brightnessValue}%)`;
    }

    // Function to adjust contrast
    function adjustContrast() {
        var contrastValue = document.getElementById('contrastSlider').value;
        document.body.style.filter = `contrast(${contrastValue}%)`;
    }

    // Event listeners for the sliders
    document.getElementById('brightnessSlider').addEventListener('input', adjustBrightness);
    document.getElementById('contrastSlider').addEventListener('input', adjustContrast);

    // Function to reset brightness and contrast to defaults
    function resetPreferences() {
        document.getElementById('brightnessSlider').value = 100; // Default brightness
        document.getElementById('contrastSlider').value = 100; // Default contrast
        adjustBrightness();
        adjustContrast();
        document.documentElement.style.setProperty('--base-font-size', '20px');

    }

    document.getElementById('resetPreferences').addEventListener('click', resetPreferences);


    </script>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const slider = document.getElementById('fontSizeRangeSlider');
            slider.addEventListener('input', function () {
                const scaleFactor = slider.value; // Assuming the slider value is between 0 and 100
                const newBaseSize = scaleFactor / 50 * 20; // Example: slider at 50 equals 16px base size
                document.documentElement.style.setProperty('--base-font-size', `${newBaseSize}px`);
            });
        });
    </script>



    <script>
        // Optimized function to speak text immediately on hover
        function speakText(event) {
            var text = event.target.textContent || event.target.innerText;
            if (!text.trim()) return; // Skip empty text nodes

            var synth = window.speechSynthesis;
            if (synth.speaking) {
                synth.cancel(); // Only cancel if it's currently speaking
            }

            // Start speaking with a slight delay to ensure cancellation is processed
            setTimeout(() => {
                var utterance = new SpeechSynthesisUtterance(text);
                synth.speak(utterance);
            }, 10); // A minimal delay can help in ensuring a smooth transition between speeches
        }

        // Function to stop speaking
        function stopSpeaking() {
            var synth = window.speechSynthesis;
            if (synth.speaking) {
                synth.cancel();
            }
        }

        // Function to add or remove speech synthesis event listeners based on toggle
        function toggleVoiceOver() {
            const isChecked = document.getElementById('toggleSwitch').checked;
            const textElements = document.querySelectorAll('p, label, h1, h2, h3, h4, h5, h6, div'); // Extend selector as needed

            textElements.forEach(el => {
                if (isChecked) {
                    el.addEventListener('mouseenter', speakText);
                    el.addEventListener('mouseleave', stopSpeaking);
                } else {
                    el.removeEventListener('mouseenter', speakText);
                    el.removeEventListener('mouseleave', stopSpeaking);
                }
            });
        }

        // Event listener for the voice-over toggle
        document.getElementById('toggleSwitch').addEventListener('change', toggleVoiceOver);

        // Initialize
        toggleVoiceOver();
    </script>











    <footer>
        <div class="footer-content">
            <p>© COPYRIGHT 2024 THE VILLA BOLOGNA RESTAURANT</p>
            <p>WEB DESIGN BY ZACK MANGANI</p>
        </div>
    </footer>







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



            showMenu('carte', document.querySelector('#menu-categories li.active') || document.querySelector('#menu-categories li:first-child'));

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
            const menuIcon = document.getElementById('menuIcon'); // Get the image element by its ID


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
                // Check if the body class is 'dark' to decide which icon to use
                if (document.body.classList.contains('dark')) {
                    menuIcon.src = 'Assets/Images/DarkMenuIcon.png'; // Dark theme icon for food menu
                } else {
                    menuIcon.src = 'Assets/Images/FoodMenuIcon.png'; // Light theme icon for food menu
                }

                // Show the starters category by default when switching to the food menu
                showMenu('carte', document.querySelector('#menu-categories li.active') || document.querySelector('#menu-categories li:first-child'));

            } else if (type === 'bar') {
                barMenuContent.classList.add('active');
                foodMenuContent.classList.remove('active');
                barMenuButton.classList.add('active');
                foodMenuButton.classList.remove('active');

                // Check if the body class is 'dark' to decide which icon to use
                if (document.body.classList.contains('dark')) {
                    menuIcon.src = 'Assets/Images/BarMenuIconDark.png'; // Dark theme icon for bar menu
                } else {
                    menuIcon.src = 'Assets/Images/BarMenuIcon.png'; // Light theme icon for bar menu
                }


                // Ensure the starters carousel and other elements are not displayed
                document.getElementById('carteCarousel').style.display = 'none';
                startersCategory.classList.remove('active');

                showMenu('lm', document.querySelector('#bar-menu-categories li.active') || document.querySelector('#bar-menu-categories li:first-child'));


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





    <script>
        /*contact*/

        function initMap() {
            var location = { lat: 35.9125, lng: 14.5028 }; // Coordinates of St. Julian's
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 15,
                center: location
            });
            var marker = new google.maps.Marker({
                position: location,
                map: map
            });
        }
    </script>





    <script>
        var recognition = new webkitSpeechRecognition();

        recognition.onresult = function (event) {
            var speechResult = event.results[0][0].transcript;
            var activeInput = document.querySelector('.input-active');
            if (activeInput) {
                activeInput.value = speechResult;
            }
        };

        function startSpeechRecognition(event) {
            var inputField = event.target.closest('.form-group').querySelector('input');
            document.querySelectorAll('input').forEach(input => input.classList.remove('input-active'));
            inputField.classList.add('input-active');
            recognition.start();
        }

        document.querySelectorAll('.form-group button').forEach(button => {
            button.addEventListener('click', startSpeechRecognition);
        });
    </script>
    <script>
        //contact script
        function validateForm() {
            var notification = document.getElementById('notification');
            // Clear previous messages
            notification.style.display = 'none';
            notification.innerHTML = '';

            var firstName = document.getElementById('firstName').value;
            var lastName = document.getElementById('lastName').value;
            var phone = document.getElementById('phone').value;
            var persons = document.getElementById('persons').value;
            var date = document.getElementById('date').value;
            var time = document.getElementById('time').value;

            if (!firstName || !lastName || !phone || !persons || !date || !time) {
                displayNotification('All fields must be filled out', false);
                return false;
            }

            // Check if phone number is exactly 8 digits
            if (!/^\d{8}$/.test(phone)) {
                displayNotification('Phone number must be exactly 8 digits', false);
                return false;
            }

            var currentDate = new Date();
            var reservationDate = new Date(date);
            currentDate.setHours(0, 0, 0, 0); // Reset time part for accurate comparison
            if (reservationDate < currentDate) {
                displayNotification('Reservation date must be in the future', false);
                return false;
            }

            var reservationTime = time.split(':');
            var hours = parseInt(reservationTime[0], 10);
            var minutes = parseInt(reservationTime[1], 10);
            // Adjusting condition to check within the 11:30 AM to 11:30 PM range
            if (hours < 11 || (hours === 11 && minutes < 30) || hours > 23 || (hours === 23 && minutes > 30)) {
                displayNotification('Reservation time must be between 11:30 AM and 11:30 PM', false);
                return false;
            }

            // If all validations passed, display a success message
            displayNotification('Reservation successful!', true);
            // Prevent actual form submission for demonstration
            return false;
        }

        function displayNotification(message, isSuccess) {
            var notification = document.getElementById('notification');
            notification.innerHTML = message;
            notification.className = isSuccess ? 'notification success' : 'notification';
            notification.style.display = 'block'; // Show notification
        }

    </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsCmXBRVldFnmUC-TiRAfHK23TQQv0Zwc&callback=initMap" async defer></script>
</body>
</html>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const contactSection = document.getElementById('contact-section');
        const bookSection = document.getElementById('book-section');
        const toggleContact = document.getElementById('toggleContact');
        const toggleBook = document.getElementById('toggleBook');
        const ContactIcon = document.getElementById('ContactIcon');



        function setActiveButton(button) {
            toggleContact.classList.remove('active');
            toggleBook.classList.remove('active');
            button.classList.add('active');
        }


        toggleContact.addEventListener('click', function () {
            contactSection.style.display = 'block';
            bookSection.style.display = 'none';
            setActiveButton(toggleContact);
            ContactIcon.src = 'Assets/Images/contactIcon.png'; // Change image source for food menu


        });

        toggleBook.addEventListener('click', function () {
            contactSection.style.display = 'none';
            bookSection.style.display = 'block';
            setActiveButton(toggleBook); // Set active styling on contact button
            ContactIcon.src = 'Assets/Images/bookIcon.png'; // Change image source for food menu



        });
    });
</script>
<script>
    function navigateAndToggle(buttonId, sectionId) {
        // Simulate button click
        document.getElementById(buttonId).click();

        // Scroll to the section smoothly
        document.getElementById(sectionId).scrollIntoView({ behavior: 'smooth' });
    }

    // Add click event listener to the CONTACT navigation link
    document.getElementById('navContact').addEventListener('click', function (event) {
        event.preventDefault(); // Prevent the default anchor behavior
        navigateAndToggle('toggleContact', 'contact-section');
    });

    // Add click event listener to the BOOK navigation button
    document.getElementById('navBook').addEventListener('click', function (event) {
        event.preventDefault(); // Prevent the default button behavior
        navigateAndToggle('toggleBook', 'book-section');
    });

</script>

<script>

</script>

<script>
    // Function to set the image source based on body class
    function updateImageSource() {
        var bodyClass = document.body.className; // Get the current class of the body
        var aboutIcon = document.getElementById('aboutIcon'); // Get the img element
        var menuIcon = document.getElementById('menuIcon'); // Get the img element
        var feedbackIcon = document.getElementById('feedbackIcon'); // Get the img element
        var galleryIcon = document.getElementById('galleryIcon'); // Get the img element
        var rightIcon = document.getElementById('FeedbackRightIcon'); // Get the img element
        var leftIcon = document.getElementById('FeedbackLeftIcon'); // Get the img element

        var leftDrinkIcon = document.getElementById('leftArrowMenuD'); // Get the img element
        var rightDrinkIcon = document.getElementById('rightMenuD'); // Get the img element
        var leftFoodIcon = document.getElementById('leftArrowMenu'); // Get the img element
        var rightFoodIcon = document.getElementById('rightMenu'); // Get the img element




        if (bodyClass === "light") {
            // Set the source for "light" theme
            aboutIcon.src = "Assets/Images/about-us.png";
            menuIcon.src = "Assets/Images/FoodMenuIcon.png";// still to arrange
            feedbackIcon.src = "Assets/Images/FeedbackIcon.png";
            galleryIcon.src = "Assets/Images/galleryicon.png";
            leftIcon.src = "Assets/Images/leftArrow.png";
            rightIcon.src = "Assets/Images/rightArrow.png";
            leftDrinkIcon.src = "Assets/Images/leftArrow.png";
            rightDrinkIcon.src = "Assets/Images/rightArrow.png";
            leftFoodIcon.src = "Assets/Images/leftArrow.png";
            rightFoodIcon.src = "Assets/Images/rightArrow.png";

        } else if (bodyClass === "dark") {
            // Set another source for "dark" theme

            aboutIcon.src = "Assets/Images/about-usW.png";
            feedbackIcon.src = "Assets/Images/FeedbackIconW.png";
            galleryIcon.src = "Assets/Images/galleryiconW.png";
            leftIcon.src = "Assets/Images/leftArrowW.png";
            rightIcon.src = "Assets/Images/rightArrowW.png";
            leftDrinkIcon.src = "Assets/Images/leftArrowW.png";
            rightDrinkIcon.src = "Assets/Images/rightArrowW.png";
            leftFoodIcon.src = "Assets/Images/leftArrowW.png";
            rightFoodIcon.src = "Assets/Images/rightArrowW.png";

        }
    }

    // Initialize the observer to monitor class changes on the body
    var observer = new MutationObserver(function (mutations) {
        mutations.forEach(function (mutation) {
            if (mutation.attributeName === "class") {
                updateImageSource(); // Call the function to update the image source
            }
        });
    });

    // Configuration of the observer:
    var config = { attributes: true };

    // Start observing the body element for changes in attributes
    observer.observe(document.body, config);

    // Also update the image source initially
    updateImageSource();
</script>






