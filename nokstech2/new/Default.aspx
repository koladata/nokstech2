<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="img/express-favicon.png" type="image/x-icon" />
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Grandlafric</title>

        <!-- Icon css link -->
        <link href="vendors/material-icon/css/materialdesignicons.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="vendors/linears-icon/style.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="vendors/revolution/css/navigation.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="vendors/bootstrap-selector/bootstrap-select.css" rel="stylesheet">
        <link href="vendors/bootatrap-date-time/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <link href="vendors/owl-carousel/assets/owl.carousel.css" rel="stylesheet">
        
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
       
        <div id="preloader">
            <div class="loader absolute-center">
                <div class="loader__box"><b class="top"></b></div>
                <div class="loader__box"><b class="top"></b></div>
                <div class="loader__box"><b class="top"></b></div>
            </div>
        </div>
       
        <!--================ Frist hader Area =================-->
        <div class="first_header">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="header_contact_details">
                            <a href="#"><i class="fa fa-phone"></i>(+234)904-254-7511</a>
                            <a href="#"><i class="fa fa-envelope-o"></i>support@breezzzbar.com</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="event_btn_inner">
                            <a class="event_btn" href=""><i class="fa fa-table" aria-hidden="true"></i>Book a Table</a>
                            <a class="event_btn" href="order.aspx"><i class="fa fa-calendar" aria-hidden="true"></i>Make Orders</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="header_social">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                                
                                 <li><a href="l/login.aspx" > <img class ="adminlogo" src="img/LOGIN-BUTTON2.png" alt=""/></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--================End Footer Area =================-->
        
        <!--================End Footer Area =================-->
        <header class="main_menu_area">
            <nav class="navbar navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><img src="img/breeze1.png" alt=""></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="default.aspx">Home</a></li>
                            <li class="dropdown submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">About US <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">About Us</a></li>
                                    <li><a href="">About Us2</a></li>
                                </ul>
                            </li>
                            <li class="dropdown submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Menu <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Menu Grid</a></li>
                                    <li><a href="">Menu List</a></li>
                                </ul>
                            </li>
                            <li><a href="">Gallery</a></li>
                            <li class="dropdown submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Event</a></li>
                                    <li><a href="">Table</a></li>
                                </ul>
                            </li>
                           
                            <li><a>Contact US</a></li>
                           
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </header>
        <!--================End Footer Area =================-->
        
        <!--================Slider Area =================-->
        <section class="slider_area">
            <div class=slider_inner>
                <div class="rev_slider fullwidthabanner"  data-version="5.3.0.2" id="home-slider">
                    <ul> 
                        <li data-slotamount="7" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="600" data-rotate="0" data-saveperformance="off">
                            <!-- MAIN IMAGE -->
                            <img src="img/home-slider/breebb.jpg"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->

                            <!-- LAYER NR. 1 -->
                            <div class="slider_text_box">
                               <div class="tp-caption bg_box" 
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-x="center" 
                                    data-y="['350','350','300','250','0']"
                                    data-fontsize="['55']" 
                                    data-lineheight="['60']" 
                                    data-transform_idle="o:1;"
                                    data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;" 
                                    data-mask_out="x:inherit;y:inherit;" 
                                    data-start="2000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on">
                                </div>
                                <div class="tp-caption first_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['-20']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['42','42','42','42','25']"
                                    data-lineheight="['52','52','52','52','35']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" >Welcome To BreezzzBar
                                </div>
                                <div class="tp-caption secand_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['45']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['36']"
                                    data-lineheight="['42']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" >
                                </div>
                                <div class="tp-caption third_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['100']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['24','24','24','24','16']"
                                    data-lineheight="['34','34','34','34','26']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1200" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" >Bar & Lounge
                                </div>
                                <div class="tp-caption btn_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['180']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['16.75']"
                                    data-lineheight="['26']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1200" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" ><a class="submit_btn_bg" href="#">Look Menu</a>
                                </div>
                            </div>
                        </li>
                        <li data-slotamount="7" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="600" data-rotate="0" data-saveperformance="off">
                            <!-- MAIN IMAGE -->
                            <img src="img/home-slider/breexx.jpg"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->

                            <!-- LAYER NR. 1 -->
                            <div class="slider_text_box text_box2">
                               <div class="tp-caption bg_box" 
                                    data-width="none"
                                    data-height="none"
                                    data-whitespace="nowrap"
                                    data-x="center" 
                                    data-y="['350','350','300','250']"
                                    data-fontsize="['55']" 
                                    data-lineheight="['60']" 
                                    data-transform_idle="o:1;"
                                    data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;" 
                                    data-mask_out="x:inherit;y:inherit;" 
                                    data-start="2000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on">
                                </div>
                                <div class="tp-caption first_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['-20']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['42','42','42','42','25']"
                                    data-lineheight="['52','52','52','52','35']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" >Welcome To BreezzzBar
                                </div>
                                <div class="tp-caption secand_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['45']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['36']"
                                    data-lineheight="['42']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1000" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" >
                                </div>
                                <div class="tp-caption third_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['100']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['24','24','24','24','16']"
                                    data-lineheight="['34','34','34','34','26']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1200" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" >Bar & Lounge
                                </div>
                                <div class="tp-caption btn_text" 
                                    data-x="center" 
                                    data-y="center" 
                                    data-voffset="['180']"
                                    data-Hoffset="['0']"
                                    data-fontsize="['16.75']"
                                    data-lineheight="['26']"
                                    data-width="none"
                                    data-height="none"
                                    data-transform_idle="o:1;"
                                    data-whitespace="nowrap"
                                    data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                    data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                    data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                                    data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                                    data-start="1200" 
                                    data-splitin="none" 
                                    data-splitout="none" 
                                    data-responsive_offset="on" 
                                    data-elementdelay="0.05" ><a class="submit_btn_bg" href="#">Look Menu</a>
                                </div>
                            </div>
                        </li>
                    </ul> 
                </div><!-- END REVOLUTION SLIDER -->
            </div>
        </section>
        <!--================End Slider Area =================-->
        
       
        
        <!--================Our feature Area =================-->
        <section class="our_feature_area">
            <div class="container">
                <div class="s_black_title">
                    <h3>Book a</h3>
                    <h2>Table</h2>
                </div>
                <div class="feature_slider">
                    <div class="item">
                        <div class="feature_item">
                            <div class="feature_item_inner">
                                <img src="img/feature/feature-1.jpg" alt="">
                              
                            </div>
                            <div class="title_text">
                                <div class="feature_left"><a href=""><span>Eba</span></a></div>
                                <div class="restaurant_feature_dots"></div>
                                <div class="feature_right">N3,000</div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="feature_item">
                            <div class="feature_item_inner">
                                <img src="img/feature/feature-2.jpg" alt="">
                             
                            </div>
                            <div class="title_text">
                                <div class="feature_left"><a href="table"><span>African Dishes</span></a></div>
                                <div class="restaurant_feature_dots"></div>
                                <div class="feature_right">N4,000</div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="feature_item">
                            <div class="feature_item_inner">
                                <img src="img/feature/feature-3.jpg" alt="">
                             
                            </div>
                            <div class="title_text">
                                <div class="feature_left"><a href="table"><span>Gold Beer</span></a></div>
                                <div class="restaurant_feature_dots"></div>
                                <div class="feature_right">N1,500</div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="feature_item">
                            <div class="feature_item_inner">
                                <img src="img/feature/feature-1.jpg" alt="">
                               
                            </div>
                            <div class="title_text">
                                <div class="feature_left"><a href="table"><span>Jollof Rice</span></a></div>
                                <div class="restaurant_feature_dots"></div>
                                <div class="feature_right">N3,200</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Our feature Area =================-->
        
       
        
        <!--================Our Chefs Area =================-->
        <section class="our_chefs_area">
            <div class="container">
                <div class="s_black_title">
                    <h3>Meet</h3>
                    <h2>OUR CHEFS</h2>
                </div>
                <div class="chefs_slider_active">
                    <div class="item">
                        <div class="chef_item_inner">
                            <div class="chef_img">
                                <img src="img/chef/chef-1.jpg" alt="">
                              
                            </div>
                            <div class="chef_name">
                                <div class="name_chef_text">
                                    <h3>Adebisi Daniel</h3>
                                    <h4>Chef</h4>
                                </div>
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="chef_item_inner">
                            <div class="chef_img">
                                <img src="img/chef/chef-2.jpg" alt="">
                       
                            </div>
                            <div class="chef_name">
                                <div class="name_chef_text">
                                    <h3>Olawuyi Ajani</h3>
                                    <h4>Chef</h4>
                                </div>
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="chef_item_inner">
                            <div class="chef_img">
                                <img src="img/chef/chef-3.jpg" alt="">
                                
                            </div>
                            <div class="chef_name">
                                <div class="name_chef_text">
                                    <h3>Benita Okonwo</h3>
                                    <h4>Chef</h4>
                                </div>
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="chef_item_inner">
                            <div class="chef_img">
                                <img src="img/chef/chef-4.jpg" alt="">
                              
                            </div>
                            <div class="chef_name">
                                <div class="name_chef_text">
                                    <h3>Fredric Blessing</h3>
                                    <h4>Chef</h4>
                                </div>
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="chef_item_inner">
                            <div class="chef_img">
                                <img src="img/chef/chef-1.jpg" alt="">
                                
                            </div>
                            <div class="chef_name">
                                <div class="name_chef_text">
                                    <h3>Frank Ameh</h3>
                                    <h4>Chef</h4>
                                </div>
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Our Chefs Area =================-->
        
      
        
            <div class="copy_right_area">
                <div class="container">
                    <div class="pull-left">
                        <h5><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved Grandlafric (NOKS)
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p></h5>
                 
                </div>
            </div>
        </footer>
        <!--================End Recent Blog Area =================-->
        
        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-2.1.4.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Rev slider js -->
        <script src="vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <!-- Extra plugin js -->
        <script src="vendors/bootstrap-selector/bootstrap-select.js"></script>
        <script src="vendors/bootatrap-date-time/bootstrap-datetimepicker.min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="vendors/isotope/isotope.pkgd.min.js"></script>
        <script src="vendors/countdown/jquery.countdown.js"></script>
        <script src="vendors/js-calender/zabuto_calendar.min.js"></script>
        <!--gmaps Js-->
<!--        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>-->
<!--        <script src="js/gmaps.min.js"></script>-->
        
        
<!--        <script src="js/video_player.js"></script>-->
        <script src="js/theme.js"></script>
    </body>
    </div>
    </form>
</body>
</html>
