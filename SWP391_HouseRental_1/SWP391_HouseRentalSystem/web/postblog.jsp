<%-- 
    Document   : postblog
    Created on : May 27, 2023, 1:54:10 PM
    Author     : Thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title  -->
        <title>South - Real Estate Agency Template | Home</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Style CSS -->
        <link rel="stylesheet" href="style.css">
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css'>
        <link rel='stylesheet'
              href='https://cdn.rawgit.com/bootstrap-wysiwyg/bootstrap3-wysiwyg/master/src/bootstrap3-wysihtml5.css'>
        <link rel="stylesheet" href="css/style1.css">

    </head>

    <body>
        <!-- Preloader -->
        <div id="preloader">
            <div class="south-load"></div>
        </div>

        <!-- ##### Header Area Start ##### -->
        <header class="header-area">
            <!-- Main Header Area -->
            <div class="main-header-area" id="stickyHeader">
                <div class="classy-nav-container breakpoint-off">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justify-content-between" id="southNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="home.jsp"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="home.jsp">Home</a></li>
                                            <li><a href="about-us.jsp">About Us</a></li>
                                            <li><a href="#">Listings</a>
                                                <ul class="dropdown">
                                                    <li><a href="listings.jsp">Listings</a></li>
                                                    <li><a href="single-listings.jsp">Single Listings</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Blog</a>
                                                <ul class="dropdown">
                                                    <li><a href="blog.jsp">Blog</a></li>
                                                    <li><a href="single-blog.jsp">Single Blog</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.jsp">Contact</a></li>
                                            <li><a href="elements.jsp">Elements</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about-us.jsp">About Us</a></li>
                                    <li><a href="listings.jsp">Properties</a></li>
                                    <li><a href="blog.jsp">Blog</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                    <li><a href="Login.jsp">Sign In</a></li>
                                    <li><a href="register">Sign Up</a></li>

                                </ul>

                                <!-- Search Form -->
                                <div class="south-search-form">
                                    <form action="#" method="post">
                                        <input type="search" name="search" id="search" placeholder="Search Anything ...">
                                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </form>
                                </div>

                                <!-- Search Button -->
                                <a href="#" class="searchbtn"><i class="fa" aria-hidden="true"></i></a>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <!-- ##### Header Area End ##### -->

        <!-- ##### Hero Area Start ##### -->
        <section class="hero-area">
            <div class="hero-slides owl-carousel">
                <!-- Single Hero Slide -->
                <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/hero1.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="hero-slides-content">
                                    <h2 data-animation="fadeInUp" data-delay="100ms">Find your home</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Hero Slide -->
                <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/hero2.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="hero-slides-content">
                                    <h2 data-animation="fadeInUp" data-delay="100ms">Find your dream house</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Hero Slide -->
                <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/hero3.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="hero-slides-content">
                                    <h2 data-animation="fadeInUp" data-delay="100ms">Find your perfect house</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Hero Area End ##### -->

        <!-- ##### Advance Search Area Start ##### -->
        <div class="south-search-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="advanced-search-form">
                            <!-- Search Title -->
                            <div class="search-title">
                                <p>Post Blogs</p>
                            </div>
                            <!-- <div class="container">
                                <div class="row">
                                  <div class="col-md-12"> -->
                            <form method="post" role="form">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="title" placeholder="Title"/>
                                </div>
                                <div class="form-group">
                                    <label> Image </label>
                                    <div class="input-group">

                                        <span class="input-group-btn">
                                            <span class="btn btn-primary btn-file">
                                                Browse <input type="file" name="bimgs" multiple>
                                            </span>
                                        </span>
                                        <input type="text" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control bcontent" name="content"></textarea>
                                </div>
                                <div class="form-group">
                                    <input type="submit" name="Submit" value="Publish" class="btn btn-primary form-control" />
                                </div>
                            </form>
                            <!-- </div>
                          </div>
                        </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>








        <!-- ##### Footer Area Start ##### -->
        <footer class="footer-area section-padding-100-0 bg-img gradient-background-overlay"
                style="background-image: url(img/bg-img/cta.jpg);">
            <!-- Main Footer Area -->
            <div class="main-footer-area">
                <div class="container">
                    <div class="row">

                        <!-- Single Footer Widget -->
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                <!-- Widget Title -->
                                <div class="widget-title">
                                    <h6>About Us</h6>
                                </div>

                                <img src="img/bg-img/footer.jpg" alt="">
                                <div class="footer-logo my-4">
                                    <img src="img/core-img/logo.png" alt="">
                                </div>
                                <p>Integer nec bibendum lacus. Suspen disse dictum enim sit amet libero males uada feugiat.
                                    Praesent malesuada.</p>
                            </div>
                        </div>

                        <!-- Single Footer Widget -->
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                <!-- Widget Title -->
                                <div class="widget-title">
                                    <h6>Hours</h6>
                                </div>
                                <!-- Office Hours -->
                                <div class="weekly-office-hours">
                                    <ul>
                                        <li class="d-flex align-items-center justify-content-between"><span>Monday -
                                                Friday</span> <span>09 AM - 19 PM</span></li>
                                        <li class="d-flex align-items-center justify-content-between"><span>Saturday</span>
                                            <span>09 AM - 14 PM</span>
                                        </li>
                                        <li class="d-flex align-items-center justify-content-between"><span>Sunday</span>
                                            <span>Closed</span>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Address -->
                                <div class="address">
                                    <h6><img src="img/icons/phone-call.png" alt=""> 0988134951</h6>
                                    <h6><img src="img/icons/envelope.png" alt=""> thuenha@gmail.com</h6>
                                    <h6><img src="img/icons/location.png" alt=""> ÐH FPT Hà Nôi</h6>
                                </div>
                            </div>
                        </div>

                        <!-- Single Footer Widget -->
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                <!-- Widget Title -->
                                <div class="widget-title">
                                    <h6>Useful Links</h6>
                                </div>
                                <!-- Nav -->
                                <ul class="useful-links-nav d-flex align-items-center">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Properties</a></li>
                                    <li><a href="#">Listings</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Properties</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Contact</a></li>
                                    <li><a href="#">Elements</a></li>
                                    <li><a href="#">FAQ</a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- Single Footer Widget -->
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                <!-- Widget Title -->
                                <div class="widget-title">
                                    <h6>Featured Properties</h6>
                                </div>
                                <!-- Featured Properties Slides -->
                                <div class="featured-properties-slides owl-carousel">
                                    <!-- Single Slide -->
                                    <div class="single-featured-properties-slide">
                                        <a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
                                    </div>
                                    <!-- Single Slide -->
                                    <div class="single-featured-properties-slide">
                                        <a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
                                    </div>
                                    <!-- Single Slide -->
                                    <div class="single-featured-properties-slide">
                                        <a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Copywrite Text -->
            <div class="copywrite-text d-flex align-items-center justify-content-center">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;
                    <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made
                    with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                                target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </footer>
        <!-- ##### Footer Area End ##### -->

        <!-- jQuery (Necessary for All JavaScript Plugins) -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Plugins js -->
        <script src="js/plugins.js"></script>
        <script src="js/classy-nav.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <!-- Active js -->
        <script src="js/active.js"></script>

        <!-- partial -->
        <!-- <script src='https://code.jquery.com/jquery-1.11.3.min.js'></script> -->
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
        <script
        src='https://cdn.rawgit.com/bootstrap-wysiwyg/bootstrap3-wysiwyg/master/dist/bootstrap3-wysihtml5.all.min.js'></script>
        <script src="js/script.js"></script>
    </body>

</html>