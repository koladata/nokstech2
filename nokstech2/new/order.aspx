<%@ Page Language="VB" AutoEventWireup="false" CodeFile="order.aspx.vb" Inherits="ecommerce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="TODA AUTOMOBILE"/>
<meta name="keywords" content="Themes, real estate, responsive, themeforest, Templates"/>
<meta name="author" content="Rype Pixel [Chris Gipple]"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.min.js"></script>
<title>Place Order</title>




       <!--Start of Zendesk Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
$.src="https://v2.zopim.com/?6ZPcaUY37sz2GcXUTmYkUGd9GEkFbTNN";z.t=+new Date;$.
type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
</script>
<!--End of Zendesk Chat Script-->




<!-- html5 support in IE8 and later -->
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<!-- CSS file links -->

     
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'/>



    <link href="order_main.css" rel="stylesheet" />
    <link href="order_responsive.css" rel="stylesheet" />

    










 

  



</head>
<body  onLoad="Slider();">
    <form id="form1" runat="server">
      
   

        <div class="topboxes">
       
        <div class="firstline"> </div>

        <div class="secondline">
            <div class ="white_textdiv_mother">

            <div class="forfloat mdisplay"> <img class="imagee mblock" src="pos_order/images/time-icon-white-png-2.png" /></div>
                 <div class ="white_textdiv">
              
              <p class ="forp1 "> Mon-Fri, 8.30 am - 10 pm</p> <p class ="forp2">Saturday, 10.00 am - 10pm</p>
           </div> 






               






                 <div class="forfloat mblock ">  <img class="imagee" src="pos_order/images/pay_white.png" /></div>
            <div class ="white_textdiv_middle mblock">
             
               <p class ="forp1 mblock"> PAY ON DELIVERY:</p> <p class ="forp2 mblock">PoS or Cash</p> 
            </div>
                
                
                  <div class="forfloat2"> <img class="imagee2" src="pos_order/images/icon-delivery.png" /></div>
            <div class ="white_textdiv_last">
               
              <p class ="forp1"> 30 MINS DELIVERY, AVAILABLE IN:</p> <p class ="forp2">Lagos, Abuja , Benin , Portharcourt</p>
                
                </div> 
            </div>
       
     </div> 


        <div  class ="contactbox">
            <p>CALL </p>
            <p class = "contactpara">08154033070</p>
        </div>


            <div  class ="logo">
                <img  class="logoimage" src="pos_order/images/red-hand-and-blue-shopping-trolley.png" />
        </div>




        <div class="thirdline">

            <div class ="menu1div">

            <p class ="menu1"> Fast and Combo</p>

             <p class ="menu1 mblock"> Local Food</p>

            <p class ="menu1 mblock"> Drinks</p>
            </div>



             <div class ="menu2div">
                 <div class="catgroup">
                  <div class="forfloat3"> <img class="imagee3" src="pos_order/images/images.png" /> </div>
            <p class ="menu2"> Login</p>
                     </div>

                  <div class="catgroup">
                  <div class="forfloat3"> <img class="imagee3" src="pos_order/images/cart.png" />  </div>
             <p class ="menu2"> My Cart</p>
                        </div>

            
            </div>


        </div>

        </div>
    

     









        <div class="firstcontainer">
            <div class ="secondcontainer">


         <div class ="beforehead1">
           <asp:Label ID="Label1" class="forheads" runat="server" Text="Food and Combos"></asp:Label></div>

        
        <div class="ecomsize"  id="divInnerData" runat="server">  
           
         


          <asp:ListView  ID="RepeaterInnerData" runat="server">
              <ItemTemplate>
                   <div class="ecommercelist">
                      <a  href=services.aspx?ID=<%# Eval("ID")%> > <img runat=server class="forimg" src=<%# Eval("photos") %>/></a>
                      <div class="epricen"><%# Eval("firstName")%>&nbsp;<%# Eval("lastName")%></div>
                     <%-- <div class="forad"><%# Eval("address") %></div>--%>
                          <div class="eprice"><span>&#8358;</span> <%# Eval("amountPaid") %></div>
                           <div class="eprice3" >Buy Now</div></div>
                                           </a>
              </ItemTemplate>

            
          </asp:ListView>
          

            </div>
               
     
        
             
 <div class ="orderbox_body mblock">
     <div class="total">

         <div class=" totaltext">
             <p>Subtotal</p>
             <p>Delivery</p>
             <p class ="fortotal">Total</p>
         </div>

         <div class=" totalvalue">
               <p>N6,500</p>
             <p>N700</p>
             <p  class ="fortotal">N7,300</p>
         </div>
     </div>

     <div class="checkout">

          <li class="myButton" onclick="msg();">Check out</li>

     </div>
  
     <div class="promo">

         <p class ="fordiscount"> Discount and Promo Code Here</p>
         <asp:TextBox ID="TextBox1" CssClass="inputpromo" placeholder="Enter Promo Code Here" runat="server">

              
         </asp:TextBox>
       

     </div>

 </div>
        <div class ="orderbox_top mblock"><asp:Label ID="Label3" class="forheads2" runat="server" Text="TOTAL ORDER"></asp:Label></div>

         


             

        
      





  <div class ="beforehead1">
           <asp:Label ID="Label2" class="forheads" runat="server" Text="Food and Combos"></asp:Label></div>
       
       
  <div class="ecomsize"  id="div1" runat="server">
      
          <asp:ListView  ID="RepeaterInnerData2" runat="server">
              <ItemTemplate>
                  <div class="ecommercelist">
                      <a  href=services.aspx?ID=<%# Eval("ID")%> > <img runat=server class="forimg" src=<%# Eval("photos") %>/></a>
                      <div class="epricen"><%# Eval("firstName")%>&nbsp;<%# Eval("lastName")%></div>
                     <%-- <div class="forad"><%# Eval("address") %></div>--%>
                          <div class="eprice"><span>&#8358;</span> <%# Eval("amountPaid") %></div>
                           <div class="eprice3" >Buy Now</div></div>
                                           </a>
              </ItemTemplate>
          </asp:ListView>

          
     </div> 
         
 
       
       







          
         <div class ="beforehead1">
           <asp:Label ID="Label4" class="forheads" runat="server" Text="Food and Combos"></asp:Label></div>
  <div class="ecomsize"  id="div2" runat="server">  
          
          <asp:ListView  ID="RepeaterInnerData3" runat="server">
              <ItemTemplate>
                   <div class="ecommercelist">
                      <a  href=services.aspx?ID=<%# Eval("ID")%> > <img runat=server class="forimg" src=<%# Eval("photos") %>/></a>
                      <div class="epricen"><%# Eval("firstName")%>&nbsp;<%# Eval("lastName")%></div>
                     <%-- <div class="forad"><%# Eval("address") %></div>--%>
                          <div class="eprice"><span>&#8358;</span> <%# Eval("amountPaid") %></div>
                           <div class="eprice3" >Buy Now</div></div>
                                           </a>
              </ItemTemplate>
          </asp:ListView>
               
      </div>
 
       
        
     








            </div>
     
        </div>















    </form>
</body>
</html>
