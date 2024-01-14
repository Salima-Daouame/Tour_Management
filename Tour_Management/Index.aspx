<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Tour_Management.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Tour Management</title>
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,700,900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="fonts/icomoon/style.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="css/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css" />
    <link rel="stylesheet" href="css/aos.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css" />

    <!-- CSS  -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css1/style.css" />


    <!-- For Contact -->
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect" />
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />
    <link href="assets/vendor/aos/aos.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet" />
    <!-- For Contact -->

    <style>
        body {
            font-family: 'Work Sans', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff;
        }

        @media only screen and (max-width: 768px) {
            .site-logo {
                /*  text-align: center;*/
                margin-bottom: 10px;
                margin-top: 0px;
            }

            .site-navigation {
                text-align: center;
            }

                .site-navigation ul {
                    flex-direction: column;
                }

                .site-navigation li {
                    margin: 0;
                    margin-bottom: 10px;
                }

            .site-menu-toggle {
                display: block;
                text-align: center;
            }
        }

        @media screen and (min-width: 1024px) {
            body {
                font-size: 16px;
            }

            /*  new tour */
            @media (min-width: 1000px) {
                .New_tourSec {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: space-between; /* ou justify-content: flex-start; selon votre préférence */
                }

                .col-lg-4 {
                    flex: 0 0 30%; /* Ajustez la largeur des colonnes en conséquence */
                }

                .post-entry-1 h2 {
                    font-size: 20px;
                    font-weight: bold;
                    margin-top: 6px;
                }

                .post-entry-1 p {
                    font-size: 16px;
                    color: black;
                }
            }

            .site-logo img {
                width: 80px;
            }


            .site-navigation ul {
                margin-right: 30px;
            }
        }

        [data-aos] {
            opacity: 0;
            transition-property: opacity;
        }

            [data-aos].aos-animate {
                opacity: 1;
            }


        /* our story */
        #our-story .site-section {
            padding: 1rem 0;
        }

        #our-story .col-md-6 {
            width: 50%;
            float: left;
        }

        #our-story .col-md-6 {
            width: 100%;
            float: none;
            /* padding-inline-start :10px;*/
            padding-left: calc(var(--bs-gutter-x) * .5);
        }

            #our-story .col-md-6 p {
                /*padding-top: 5px;*/
                font-size: 20px;
            }

        .mb-5 {
            padding-top: 10px
        }

        @media only screen and (max-width: 500px) {
            .col-md-6 {
                width: 100%;
                float: none;
            }
        }
        /* Styles for smaller screens (phones) */
        @media only screen and (max-width: 768px) {
            .col-md-6 {
                width: 100%;
                float: none;
            }
        }

        @media only screen and (max-width: 991.98px) {
            .col-md-6 {
                width: 100%;
                float: none;
            }
        }
        /* our story */
        .footer {
            --background-color: #f4f4f4;
            color: var(--default-color);
            background-color: var(--background-color);
            font-size: 14px;
            padding-bottom: 50px;
        }

            .footer .footer-top {
                padding-top: 50px;
            }

            .footer .footer-about .logo {
                line-height: 0;
                margin-bottom: 25px;
            }

                .footer .footer-about .logo img {
                    max-height: 40px;
                    margin-right: 6px;
                }

                .footer .footer-about .logo span {
                    color: var(--secondary-color);
                    font-size: 30px;
                    font-weight: 700;
                    letter-spacing: 1px;
                    font-family: var(--heading-font);
                }

            .footer .footer-about p {
                font-size: 14px;
                font-family: var(--heading-font);
            }

            .footer .social-links a {
                display: flex;
                align-items: center;
                justify-content: center;
                width: 40px;
                height: 40px;
                border-radius: 50%;
                border: 1px solid rgba(var(--default-color-rgb), 0.5);
                font-size: 16px;
                color: rgba(var(--default-color-rgb), 0.5);
                margin-right: 10px;
                transition: 0.3s;
            }

                .footer .social-links a:hover {
                    color: #cd9d5a;
                    border-color: #cd9d5a;
                }

            .footer h4 {
                color: var(--secondary-color);
                font-size: 16px;
                font-weight: bold;
                position: relative;
                padding-bottom: 12px;
            }

            .footer .footer-links {
                margin-bottom: 30px;
            }

                .footer .footer-links ul {
                    list-style: none;
                    padding: 0;
                    margin: 0;
                }

                .footer .footer-links ul i {
                        padding-right: 2px;
                        font-size: 12px;
                        line-height: 0;
                }

                .footer .footer-links ul li {
                        padding: 10px 0;
                        display: flex;
                        align-items: center;
                }

                .footer .footer-links ul li:first-child {
                            padding-top: 0;
                }

               .footer .footer-links ul a {
                        color: rgba(var(--default-color-rgb), 0.8);
                        display: inline-block;
                        line-height: 1;
               }

                        .footer .footer-links ul a:hover {
                            color: var(--primary-color);
                        }

            .footer .footer-contact p {
                margin-bottom: 5px;
            }

            .footer .copyright {
                padding-top: 25px;
                padding-bottom: 25px;
            }

                .footer .copyright p {
                    margin-bottom: 0;
                }

            .footer .credits {
                margin-top: 6px;
                font-size: 13px;
            }

        /* Responsive Styles */
        @media screen and (max-width: 767px) {
            .footer .footer-about {
                text-align: center;
                margin-bottom: 20px;
            }

                .footer .footer-about .logo {
                    margin-bottom: 15px;
                }

            /*.footer .footer-links,*/
            .footer .social-links {
                text-align: center;
                margin-left: 160px;
            }

            .footer .footer-links ul li {
                justify-content: center;
            }

            .social-links {
                text-align: center;
                margin-bottom: 20px;
            }
        }

        @media screen and (max-width: 500px) {
            .footer .footer-about {
                text-align: center;
                margin-bottom: 20px;
            }

                .footer .footer-about .logo {
                    margin-bottom: 15px;
                }

            /* .footer .footer-links,*/
            .footer .social-links {
                text-align: center;
                margin-left: 160px;
            }

            .footer .footer-links ul li {
                justify-content: center;
            }

            .social-links {
                text-align: center;
                margin-bottom: 20px;
            }
        }

        @media screen and (max-width: 991.98px) {
            .footer .footer-about {
                text-align: center;
                margin-bottom: 20px;
            }

                .footer .footer-about .logo {
                    margin-bottom: 15px;
                }

            /*.footer .footer-links,*/
            .footer .social-links {
                text-align: center;
                margin-left: 160px;
            }

            .footer .footer-links ul li {
                justify-content: center;
            }

            .social-links {
                text-align: center;
                margin-bottom: 20px;
            }
        }


        .contact .info-item i {
            color: #cd9d5a;
        }

        .contact button[type="submit"] {
            background: #cd9d5a;
            color: var(--contrast-color);
            border: 0;
            padding: 10px 30px;
            transition: 0.4s;
            border-radius: 4px;
        }

            .contact button[type="submit"]:hover {
                background: #f2be74;
            }
    </style>


</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <form id="form1" runat="server">
        <div class="site-wrap" id="home-section">

            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>

            <!-- ** header ** -->
            <header class="site-navbar site-navbar-target" role="banner">

                <div class="container">
                    <div class="row align-items-center position-relative">
                        <div class="col-3 ">
                            <div class="site-logo">

                                <img src="images/Tour.png" alt="Image" class="img-fluid" />

                            </div>
                        </div>
                        <!-- ** Nav ** -->
                        <div class="col-9 text-right">
                            <span class="d-inline-block d-lg-none">
                                <a href="#" class="text-white site-menu-toggle js-menu-toggle py-5 text-white">
                                    <span class="icon-menu h3 text-white"></span>
                                </a>
                            </span>

                            <nav class="site-navigation text-right ml-auto d-lg-block" role="navigation">

                                <ul class="site-menu main-menu js-clone-nav ml-auto">
                                    <li><a href="#home" class="nav-link scroll-to">Home</a></li>
                                    <li><a href="#our-story" class="nav-link scroll-to">Our Story</a></li>
                                    <li><a href="#Tour-History" class="nav-link scroll-to">Tour History</a></li>
                                    <li><a href="#Guides" class="nav-link scroll-to">Guides</a></li>
                                    <li><a href="#New-Tour" class="nav-link scroll-to">New Tour</a></li>
                                    <li><a href="#contact" class="nav-link scroll-to">Contact</a></li>
                                    <li><a href="#footer" class="nav-link scroll-to">About</a></li>
                                </ul>

                            </nav>
                        </div>
                        <!-- ** Nav ** -->

                    </div>
                </div>


                <!-- ** header ** -->
            </header>



            <div id="home" class="ftco-blocks-cover-1" data-aos="fade-right">
                <div class="site-section-cover overlay" style="background-image: url('images/hero_1.jpg')">

                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-md-5" data-aos="fade-right">
                                <h1 class="mb-3 text-white">Let's Enjoy The Wonders of Nature</h1>
                                <p style="font-size: 24px;">
                                    Welcome in your <span style="font-weight: bold; color: black;">Tour</span>
                                    <br />
                                    Now, you can choose your tour
                                </p>
                                <p class="d-flex align-items-center">
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div id="our-story" class="site-section py-5 col-md-6" data-aos="fade-right">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-6">
                            <div class="heading-39101 mb-5">
                                <span class="backdrop">Story</span>
                                <span class="subtitle-39191">Discover Story</span>
                                <h3>Our Story</h3>
                            </div>
                            <p>
                                "Our story began with a dream to explore, and as we embarked on this trip, we discovered new places,
            created lasting memories, and embraced the adventure of a lifetime."
                            </p>
                        </div>
                        <div class="col-md-6" data-aos="fade-right">
                            <img src="images/traveler.png" alt="Image" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>


            <div id="Tour-History" class="site-section">
                <div class="container">
                    <div class="row justify-content-center text-center">
                        <div class="col-md-7">
                            <div class="heading-39101 mb-5">
                                <span class="backdrop text-center">Tour History</span>
                                <span class="subtitle-39191">Tour History</span>
                                <h3>The History Tour Here</h3>
                            </div>
                        </div>
                    </div>

                    <!-- ** TourHistory from database ** -->

                    <div class="row">
                        <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                            <div class="listing-item">
                                <div class="listing-image">
                                    <img src="images/img_1.jpg" alt="Image" class="img-fluid" />
                                </div>
                                <div class="listing-item-content">
                                    <h2 class="mb-1"><a href="trip-single.html">Dignissimos debitis</a></h2>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                            <div class="listing-item">
                                <div class="listing-image">
                                    <img src="images/img_2.jpg" alt="Image" class="img-fluid" />
                                </div>
                                <div class="listing-item-content">
                                    <h2 class="mb-1"><a href="trip-single.html">Consectetur adipisicing</a></h2>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                            <div class="listing-item">
                                <div class="listing-image">
                                    <img src="images/img_3.jpg" alt="Image" class="img-fluid" />
                                </div>
                                <div class="listing-item-content">
                                    <h2 class="mb-1"><a href="trip-single.html">Temporibus aperiam</a></h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                            <div class="listing-item">
                                <div class="listing-image">
                                    <img src="images/img_4.jpg" alt="Image" class="img-fluid" />
                                </div>
                                <div class="listing-item-content">
                                    <h2 class="mb-1"><a href="trip-single.html">Expedita fugiat</a></h2>
                                </div>
                            </div>
                        </div>


                        <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                            <div class="listing-item">
                                <div class="listing-image">
                                    <img src="images/img_5.jpg" alt="Image" class="img-fluid" />
                                </div>
                                <div class="listing-item-content">
                                    <h2 class="mb-1"><a href="trip-single.html">Consectetur adipisicing</a></h2>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
                            <div class="listing-item">
                                <div class="listing-image">
                                    <img src="images/img_6.jpg" alt="Image" class="img-fluid" />
                                </div>
                                <div class="listing-item-content">
                                    <h2 class="mb-1"><a href="trip-single.html">Consectetur Amet</a></h2>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>


            <div id="Guides" class="site-section">
                <div class="container">
                    <div class="row justify-content-center text-center">
                        <div class="col-md-10">
                            <div class="heading-39101 mb-5">
                                <span class="backdrop text-center">Our Guides</span>
                                <span class="subtitle-39191">Amazing Guides</span>
                                <h3>Meet Our Guides</h3>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="person-29191 text-center">
                                <img src="images/person_1.jpg" alt="Image" class="img-fluid mb-4" />
                                <div class="px-4">
                                    <h2 class="mb-2">John Doe</h2>
                                    <p class="caption mb-4">Staff</p>
                                    <p></p>
                                    <div class="social_29128 mt-5">
                                        <a href="#"><span class="icon-facebook"></span></a>
                                        <a href="#"><span class="icon-instagram"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="person-29191 text-center">
                                <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-4" />
                                <div class="px-4">
                                    <h2 class="mb-2">Jean Doe</h2>
                                    <p class="caption mb-4">Staff</p>
                                    <p></p>
                                    <div class="social_29128 mt-5">
                                        <a href="#"><span class="icon-facebook"></span></a>
                                        <a href="#"><span class="icon-instagram"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="person-29191 text-center">
                                <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-4" />
                                <div class="px-4">
                                    <h2 class="mb-2">Claire Dormey</h2>
                                    <p class="caption mb-4">Staff</p>
                                    <p></p>
                                    <div class="social_29128 mt-5">
                                        <a href="#"><span class="icon-facebook"></span></a>
                                        <a href="#"><span class="icon-instagram"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

            <!-- ** Les tours qui existe dans la base de donnee  ** -->
            <div id="New-Tour" class="site-section">
                <div class="container">
                    <div class="row justify-content-center text-center">
                        <div class="col-md-10">
                            <div class="heading-39101 mb-5">
                                <span class="backdrop text-center">New Tour</span>
                                <span class="subtitle-39191">New Tour</span>
                                <h3>Happy New Tour</h3>
                            </div>
                        </div>
                    </div>

                    <!-- // new code-->
                    <div class="New_tourSec">
                        <asp:Repeater ID="TourRepeater" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-6 col-sm-12 mb-4" data-aos="fade-up">
                                    <div class="post-entry-1 h-100">
                                        <img src='<%# GetImageFromBytes(Eval("PicLocation")) %>' alt="Image" class="img-fluid" />
                                        <div class="post-entry-1-contents">
                                            <a href="Login.aspx">
                                                <h2><%# Eval("Title_tour") %></h2>
                                            </a>
                                            <span class="meta d-inline-block mb-3">
                                                <%# Eval("StartDate", "{0:MMMM dd, yyyy}") %> <span class="mx-2">by</span>Admin
                                            </span>
                                            <p><%# Eval("Description") %></p>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- // new code-->

                </div>
            </div>




            <!-- ** CONTACT ** -->

            <section id="contact" class="contact">

                <div class="heading-39101 mb-5" style="text-align: center;">
                    <span style="line-height: 1; top: -75%; position: absolute; text-transform: uppercase; z-index: -1; font-weight: 900 !important; font-size: 5rem; color: #efefef;">Contact</span>
                    <span class="subtitle-39191">Contact</span>
                    <h3>Our Contact</h3>
                </div>

                <div class="container" data-aos="fade-up" data-aos-delay="100">

                    <div class="row gy-4">

                        <div class="col-lg-6">

                            <div class="row gy-4">
                                <div class="col-md-6">
                                    <div class="info-item" data-aos="fade" data-aos-delay="200">
                                        <i class="bi bi-geo-alt"></i>
                                        <h3>Address</h3>
                                        <p>A108 Adam Street</p>
                                        <p>New York, NY 535022</p>
                                    </div>
                                </div>


                                <div class="col-md-6">
                                    <div class="info-item" data-aos="fade" data-aos-delay="300">
                                        <i class="bi bi-telephone"></i>
                                        <h3>Call Us</h3>
                                        <p>+1 5589 55488 55</p>
                                        <p>+1 6678 254445 41</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="info-item" data-aos="fade" data-aos-delay="400">
                                        <i class="bi bi-envelope"></i>
                                        <h3>Email Us</h3>
                                        <p>info@example.com</p>
                                        <p>contact@example.com</p>
                                    </div>
                                </div>



                            </div>

                        </div>

                        <div class="col-lg-6" style="background: rgba(var(--default-color-rgb), 0.03); padding: 30px; height: 100%;">
                            <form data-aos="fade-up" data-aos-delay="200">
                                <div class="row gy-4">

                                    <div class="col-md-6">
                                        <input type="text" name="name" class="form-control" placeholder="Your Name" required />
                                    </div>

                                    <div class="col-md-6 ">
                                        <input type="email" class="form-control" name="email" placeholder="Your Email" required />
                                    </div>

                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="subject" placeholder="Subject" required />
                                    </div>

                                    <div class="col-md-12">
                                        <textarea class="form-control" name="message" rows="6" placeholder="Message" required></textarea>
                                    </div>



                                    <div class="col-md-12 text-center">
                                        <button type="submit">Send Message</button>
                                    </div>

                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </section>
            <!-- ** CONTACT ** -->

            <!-- ======= Footer ======= -->
            <footer id="footer" class="footer">

                <div class="container footer-top">
                    <div class="row gy-4">

                        <div class="col-3 ">
                            <div class="site-logo">
                                <img src="images/Tour.png" alt="Image" class="img-fluid" />
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start footer-links">
                            <h4>MAIN NAVIGATION</h4>
                            <ul>
                                <li><a href="#home" class="nav-link scroll-to">Home</a></li>
                                <li><a href="#our-story" class="nav-link scroll-to">Our story</a></li>
                                <li><a href="#tour-history" class="nav-link scroll-to">Tour History</a></li>
                                <li><a href="#guides" class="nav-link scroll-to">Guides</a></li>
                                <li><a href="#new-tour" class="nav-link scroll-to">New Tour</a></li>
                                <li><a href="#contact" class="nav-link scroll-to">Contact</a></li>
                                <li><a href="Login.aspx" class="nav-link scroll-to">login</a></li>

                            </ul>
                        </div>
                        <div class="col-lg-5 col-md-6 footer-about">
                            <h4>SOCIAL MEDIA SHARE</h4>
                            <div class="social-links d-flex mt-2">
                                <a href="#"><i class="bi bi-twitter"></i></a>
                                <a href="#"><i class="bi bi-facebook"></i></a>
                                <a href="#"><i class="bi bi-instagram"></i></a>
                                <a href="#"><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="container copyright text-center mt-4">
                    <p>&copy; <span>Copyright</span> <strong class="px-1">2023</strong> <span>All Rights Reserved</span></p>
                    <div class="credits">
                        <p>&#x3c; &#47; &#x3e; devlopped By Salima </p>
                    </div>
                </div>

            </footer>
            <!-- End Footer -->

            <!-- Scroll Top Button -->
            <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center" style="background-color: #cd9d5a;"><i class="bi bi-arrow-up-short"></i></a>

        </div>

        <!-- ** Script ** -->
        <script>




            $(document).ready(function () {
                // Smooth scrolling when clicking on navigation links
                $('.scroll-to').on('click', function (e) {
                    e.preventDefault();

                    var target = $($(this).attr('href'));
                    $('html, body').animate({
                        scrollTop: target.offset().top
                    }, 1000); // Adjust the speed as needed

                    // Close mobile menu if open
                    $('.site-mobile-menu-body').removeClass('show');
                });

                // Toggle mobile menu
                $('.js-menu-toggle').on('click', function (e) {
                    e.preventDefault();
                    $('.site-mobile-menu-body').toggleClass('show');
                });
            });


            AOS.init({
                duration: 1000,
            });



        </script>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/main.js"></script>
        <script src="js1/jquery.validate.min.js"></script>
        <script src="js1/main1.js"></script>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>


        <!-- ** Script ** -->

    </form>
</body>
</html>
