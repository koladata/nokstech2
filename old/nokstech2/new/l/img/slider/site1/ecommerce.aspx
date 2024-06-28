<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ecommerce.aspx.vb" Inherits="ecommerce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Blossy Boss Limited"/>
<meta name="keywords" content="Themes, real estate, responsive, themeforest, Templates"/>
<meta name="author" content="Rype Pixel [Chris Gipple]"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.min.js"></script>
<title>NOKS POS</title>
<!-- html5 support in IE8 and later -->
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<!-- CSS file links -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen"/>
<link href="css/jquery.bxslider.css" rel="stylesheet" media="screen"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/responsive.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="css/yamm.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/jquery.nouislider.min.css" rel="stylesheet" type="text/css" media="all" />

     <link rel="stylesheet" href="css/components.css">
     

    <link rel="stylesheet" href="css/template-style.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'/>















    <!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png"/>













   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript">
    function Slider() {
        $('.slider #1').show("fade", 500);
        $(".slider #1").delay(4500).hide("slide", { direction: 'left' }, 500);
        var sc = $(".slider img").size();
        var count = 2;
        setInterval(function () {
            $(".slider #" + count).show("slide", { direction: 'right' }, 500);
            $(".slider #" + count).delay(4500).hide("slide", { direction: 'left' }, 500);

            if (count == sc) {
                count = 1;
            } else {
                count = count + 1;
            }
        }, 5500);

    }
</script>
  <style>
      .pager
      {
         margin-top:20px;
      }






  </style>



</head>
<body  onLoad="Slider();">
    <form id="form1" runat="server">
        <div class="topm">

        </div>
    <div class="firstline">
	<div class="kola" >
        
		<a href="product_summary.html"><span class="">Nigeria</span></a>
		  
		<span>&#8358;</span>
		<span class="btn btn-mini">0.00</span>
		
		<a href="product_summary.html"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> [ 3 ] Itemes in your cart </span> </a> 
	</div>
	</div>
      



      
                  
<div class="searchbanner">
    <div class="div1 " > <img id="Img4"src="images/pixlogo.png" alt="Image" /> </div>
            
 
    <div class="div2 ">


        <input class="sbox" style="font-size:16px; height:40px"  type="text" placeholder="Search for products..." name="search" />

       
     <button class="btn btn-primary mbut" style="font-size:38px"> <i class="fa fa-search"></i></button>


    </div>

   

    <div class="div3 ">

        <div class="divmenux">
        <ul>
  <li><a href="#home">Home</a></li>
  <li><a href="#Princing">Pricing</a></li>
  <li><a href="#contact">Contact</a></li>

           <a href="#login" ><span class="btn btn-large btn-success divmenux2">Login</span></a>

</ul>
            </div>
            </div>
            </div>


        <div class="spacebanner"></div>


         <div class ="animatebar"> 

             	<a class="slider" href="index.html"><img id="1"src="images/wedding-cupcakes-large.jpg" alt="Image"/></a>
								<a class="slider" href="index.html"><img id="2" src="images/banner2.jpg" alt="Image"/></a>
												<a class="slider" href="index.html"><img id="3" src="images/banner3.jpg" alt="Image"/></a>

         </div>  


        
            <div class ="animatesidebar"> 
                <div class="sidebar2 " ><img id="Img1"src="images/shoe1.jpg" alt="Image"/></div>
                <div class="sidebar2" ><img id="Img2"src="images/bag1.jpg" alt="Image"/></div>
                <div class="sidebar2 hidediv" ><img id="Img3"src="images/cloths1.jpg" alt="Image"/></div>
            </div> 



      <div class ="leftbar hidediv">
         
          <div class="leftbar2"> 
                            <div class="lefthead1">
                  <div class="baglogo"><img src="images/Add-item-icon.png" alt="Image"/> </div>
                  <div class="baglogo2"> Sample Ecommerce </div>
                 
              </div>
              <div class="fbar">  
                
             
 

<li class="k5"> Women's Dresses</li>
<li class="k5"> Women's Tops</li>
<li class="k5"> Women's Skirts</li>
<li class="k5"> Women's Trousers</li>
<li class="k5"> Lingerie and Sleepwear</li>
<li class="k5"> Jumpsuits and Playsuits</li>
<li class="k5"> Islamic Wear</li>
<li class="k5"> Traditional Clothing</li>

              </div>
               <div class="fbar2">  


                   <img src="images/c1.jpg" alt="Image"/>

               </div> 

          </div>


























          <div class ="spacex1 hidediv"></div>

              <div class="leftbar2 hidediv"> 
                            <div class="lefthead1">
                  <div class="menlogo"><img class="Img5"src="images/menlogo.png" alt="Image"/> </div>
                  <div class="menlogo2"> Sample Ecommerce</div>
                 
              </div>
              <div class="fbar2x">  
                
             
 




<li class="k5">Jerseys</li>
<li class="k5">Men's Shirts</li>
<li class="k5">Men's Jeans</li>
<li class="k5">Men's Trousers and Shorts</li>
<li class="k5">Suits, Blazers & Jackets</li>
<li class="k5">Men's Nightwear</li>
<li class="k5">Polo Shirts</li>
<li class="k5">Men's T-Shirts</li>



              </div>
               <div class="fbar23">  


                   <img src="images/c2.jpg" alt="Image"/>

               </div> 

          </div>








          







		  </div>
        


       
                 
                 
                 
       

    
      <div class="ecomsize"  id="divInnerData" runat="server">  
           
          <asp:ListView  ID="RepeaterInnerData" runat="server">
              <ItemTemplate>
                  <div class="ecommercelist"><a  href='ViewDetail.aspx?ID=<%# Eval("ID") %>'>
                      <p class=epricen><%# Eval("firstName")%>&nbsp;<%# Eval("lastName")%></p>
                      <a href=ViewDetail.aspx?ID=<%# Eval("ID")%> ><img runat=server class=forimg src=<%# Eval("photos") %>/></a><div class=forad><%# Eval("address") %>
                          <div class=eprice><span>&#8358;</span> <%# Eval("amountPaid") %></div>
                          <div class=eprice3 >Buy Now</div></div></div>
                                           </a>
              </ItemTemplate>
          </asp:ListView>
               
      </div>
 
        <center >
          
          <asp:DataPager ID="lvDataPager1" runat="server" PagedControlID="RepeaterInnerData" PageSize="15" class="btn-group pager-buttons pager">
            <Fields>
                <%--<asp:NumericPagerField ButtonType="Link" />--%>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="false" ButtonCssClass="btn" ShowPreviousPageButton="true"
                            ShowNextPageButton="false" />
                        <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn"/>
                        <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton = "false" />
            </Fields>
        </asp:DataPager>


              </center> 
      

























      





























 <div class="ecomsize hidediv"   id="divInnerData2" runat="server"></div> 

        
          <div class="buttomspace" ></div>
       













      

















         <!-- CONTACT -->
            <!-- CONTACT -->
         <div id="contact">
            <div class="line">
               <h2 class="section-title">Contact Us</h2>
               <div class="margin">
                  <div class="s-12 m-12 l-3 hide-m hide-s margin-bottom right-align">
                    <img src="img/contact.jpg" alt="" class="columns" >
                  </div>
                  <div class="s-12 m-12 l-4 margin-bottom right-align columns">
                     <h3   >NOKS POS</h3>
                     <address>
                        <p><strong>Adress:</strong> 6, Ogunlowo Road, Off Ajuwon, Along Ojodu Berger, Lagos - Nigeria</p>
                        <p><strong>Phone or Whatsap:</strong> +234 8141675221</p>
                        <p><strong>E-mail:</strong> info@nokspos.com</p>
                     </address>
               
                     
                  
                  </div>
                  <div class="s-12 m-12 l-5">
                    <h3>Please drop a note</h3>
                    <form class="customform" action="">
                      <div ><input name="" placeholder="Your e-mail" title="Your e-mail" type="text" /></div>
                      <div ><input name="" placeholder="Your name" title="Your name" type="text" /></div>
                      <div ><textarea placeholder="Your massage" name="" rows="5"></textarea></div>
                      <div"><button class="btn btn-large btn-success" type="submit">Submit Button</button></div>
                    </form>
                  </div>                
               </div>
            </div>
         </div>


















        <div class="buttomspace" ></div>

        <div class="buttomdiv" >

            <div class="down1"><img class="c44" src="images/pay.png" alt="Image"/> </div>
            <div class="down2">
                <div class="subdown1 "> 
                   <li class="k7 k8">Help Center</li>
                    <li class="k7">Return Policy</li>
<li class="k7">Help Center</li>
<li class="k7">Contact us</li>
<li class="k7">Shipping </li>
            

                </div>
                <div class="subdown2 hidediv"> 

                     <li class="k7 k8">Get to know us</li>
                    <li class="k7">About Us</li>
<li class="k7">Careers</li>
<li class="k7">Terms and Conditions</li>
<li class="k7">Privacy Policy</li>

                </div>
            </div>
            <div class="down3">

<h5>SOCIAL MEDIA </h5>
				<a href="#"><img width="60" height="60" src="images/facebook.png" title="facebook" alt="facebook"/></a>
				<a href="#"><img width="60" height="60" src="images/twitter.png" title="twitter" alt="twitter"/></a>
				<a href="#"><img width="60" height="60" src="images/youtube.png" title="youtube" alt="youtube"/></a>
		
            </div>

        </div>
    </form>
</body>
</html>
