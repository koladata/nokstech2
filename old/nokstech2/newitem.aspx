<%@ Page  Language="VB" AutoEventWireup="false" CodeFile="newitem.aspx.vb" Inherits="Default2" %>
<%--<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="ecommerce" %>--%><%--<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">--%>
   <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Place your order</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Online Store"/>
<meta name="keywords" content="Ecommerce, ecomerce, online store, buy online, store, jumia, amazon, jiji, konga, shopping, online store"/>
<meta name="author" content="Rype Pixel [Chris Gipple]"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>


    
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.min.js"></script>
    <script src="jquery-3.4.1.js"></script>
    <script src="jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <link href="jquery-ui-1.12.1.custom/jquery-ui.min.css" rel="stylesheet" />


    
    <!--<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>-->



       <link href="order_main.css" rel="stylesheet" />
    <link href="order_responsive.css" rel="stylesheet" />
     <link href="inventory.css" rel="stylesheet" />
 <link href="inventorymobile.css" rel="stylesheet" />
    <script>
        function isNumeric(form1) {
            var len, str, str1, i;
            len = form1.value.length;
            str = form1.value;
            str1 = "0123456789.";
            for (i = 0; i < len; i++) {
                if ((str1.indexOf(str.charAt(i))) == -1) {
                    alert("Enter numeric data in this field");
                    form1.value = "";
                    form1.focus();
                    return false;
                }
            }
            return true;
        }



        //$(function addShadow() {
        //    $("input").on("focus", function () {
        //        $(this).addClass(".inputShadow");
        //    });
        //});
    </script>

    <style>
        .formain{
            width : 90%;
            margin-left : 5%;
            border : 2px solid  #3399ff;
            margin-top: 10px;
            
        }
    </style>

     </head>
     


    <body>
<form id="form1" runat="server">

    <div class="divtag">
    <div class="divbox">

        <div class="logo">
            <img class="pic" src="image_inventory/image4(1).png" />
        </div>
        <div class="newtext">NOKS POS</div>
    </div>

     

    <div class="divbox1">
         <a href="l/stock_list.aspx">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/stock list.png" />
            </div>

            <div class="newtext1">STOCK LIST</div>
        </div>
 </a>

    </div>

    <div class="divbox1">
        <a href="l/sales.aspx">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/sales list.png" />
            </div>

            <div class="newtext1">SALES LIST</div>
        </div>

</a>
    </div>


    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/cart.png" />
            </div>

            <div class="newtext1">NEW INVENTORY</div>
        </div>


    </div>
       
    <div class="divbox1">
         <a href="main_sales.aspx">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/new sales.png" />
            </div>

            <div class="newtext1">NEW SALES</div>
        </div>

</a>
    </div>

    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/take order.png" />
            </div>

            <div class="newtext1">TAKE ORDERS</div>
        </div>


    </div>

    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/settings.png" />
            </div>

            <div class="newtext1">SETTINGS</div>
        </div>


    </div>


    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/payment.png" />
            </div>

            <div class="newtext1">PAYMENT</div>
        </div>


    </div>



    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/saved list.png" />
            </div>

            <div class="newtext1">SAVED LIST</div>
        </div>


    </div>

    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/printer setting.png" />
            </div>

            <div class="newtext1">PRINTER SETTINGS</div>
        </div>





    </div>

    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/reversed.png" />
            </div>

            <div class="newtext1">REVERSED TRANSACTION</div>
        </div>


    </div>

    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/user list.png" />
            </div>

            <div class="newtext1">USER LIST</div>
        </div>


    </div>

    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">

                <img class="pic1" src="image_inventory/information-button.png" />
            </div>

            <div class="newtext1">COMPANY INFO</div>
        </div>


    </div>
       
    <div class="divbox1">
         <a href="proccessed_inventory.aspx">
        <div class="codeforhide maindivcode">
            <div class="logo1">


                <img class="pic1" src="image_inventory/warehouse.png" />
            </div>

            <div class="newtext1">PROCESSED INVENTORY</div>
        </div>

</a>
    </div>





    <div class="divbox1">
        <div class="codeforhide maindivcode">
            <div class="logo1">


                <img class="pic1" src="image_inventory/power-on.png" />
            </div>

            <div class="newtext1">LOGOUT</div>
        </div>


    </div>


</div>

<style>
    .fortext {
        width: 200px;
    }
</style>


<div class="maindiv">

    <div class="divbar">

        <button  class="box1">Save Record</button>
      
        <asp:Button ID="btnInsert" runat="server" CssClass="box2" Text="Post Sales" ValidationGroup="vgA" />
   
        </div>

    <div class="divone">
        <div class="divoneA">x</div>
        <div class="divoneB"><input id="divoneB1" type="text" /></div>
        <div class="divtwoB"><input class="divtwoB1" id="searchproduct" placeholder="Search Product" type="text" /></div>
    </div>



    <div class="divtwo">
        <div class="divtwoA">Item Name:</div>
        <div class="divtwoB">
            <asp:TextBox ID="itemname" placeholder="Enter item Name" runat="server" CssClass="divtwoB1"></asp:TextBox>
           


        </div>
    </div>


    <div class="divtwo">
        <div class="divtwoA">Cost Price:</div>
        <div class="divtwoB">
            <asp:TextBox ID="costprice" placeholder="Cost Price" runat="server" oninput="calculateTotal();" CssClass="divtwoB1"></asp:TextBox>
           

        </div>
    </div>








    <div class="divtwo">
        <div class="divtwoA">Selling Price:</div>
        <div class="divtwoB">
            
             <asp:TextBox ID="sellingprice" placeholder="Selling Price" oninput="validateNumericInput(this);" runat="server" CssClass="divtwoB1"></asp:TextBox>
      
            </div>

       
           
    </div>






    <div class="divtwo">
        <div class="divtwoA">Unit Qty:</div>
        <div class="divtwoB">
            
            <asp:TextBox ID="unitqty" placeholder="Unit Qty" oninput="calculateTotal();" runat="server" CssClass="divtwoB1"></asp:TextBox>
      
          


        </div>
    </div>






    <div class="divtwo">
        <div class="divtwoA">Barcode:</div>
        <div class="divtwoB">

             <asp:TextBox ID="barcode" placeholder="Barcode" runat="server" CssClass="divtwoB1"></asp:TextBox>
           

        </div>
    </div>


    

     <asp:Label ID="unittotal" CssClass="divthree" runat="server" Text="0.00" />
    <div class="divfour">Item List</div>
    <div class="divfive"><input id="divfive1" type="text" /></div>



    <div class="divsix">
        <div class="divsixA">

            <img class="picture" src="image_inventory/mobile-payment.png" />
        </div>
        <div class="divsixB">Total</div>
        
         <asp:Label ID="invoicetotal" CssClass="divsixC" runat="server" Text="0.00" />
    </div>



<p class="ddate"><asp:TextBox ID="companyxid" Width="1" Height="1" runat="server" type="text" class="sboxxt input" style="font-size:12px; height:25px"  placeholder="companyid"  ></asp:TextBox></p>
    <p class="ddate"><asp:TextBox ID="ddate" Width="1" Height="1" runat="server" type="text" class="sboxxt input" style="font-size:12px; height:25px"  placeholder="Total Sales"  ></asp:TextBox></p>


</div>
     </form>













         <script>
             $(document).ready(function () {

                

                     document.getElementById("companyxid").value = localStorage.getItem("forusername");
                    
                 var currentDate = new Date();

                 // Get individual components of the date
                 var month = (currentDate.getMonth() + 1).toString().padStart(2, '0'); // Months are zero-based
                 var day = currentDate.getDate().toString().padStart(2, '0');
                 var year = currentDate.getFullYear();

                 // Format the date as "MM/DD/YYYY"
                 var formattedDate = month + '/' + day + '/' + year;

                
                 document.getElementById("ddate").value = formattedDate



                 $("#searchproduct").autocomplete({
                     source: function (request, response) {
                         var searchproduct = $("#searchproduct").val();

                         $.ajax({
                             url: "https://www.seelagos.com/searchinventory.ashx",
                             type: "GET",
                             dataType: "json",
                             data: {
                                 term1: searchproduct
                             },
                             success: function (data) {
                                 var formattedData = formatAutocompleteData(data);
                                 response(formattedData); // Use the formatted data here
                             }
                         });
                     },
                     minLength: 2,
                     select: function (event, ui) {
                         // Update textboxes with the selected row values
                         $("#itemname").val(ui.item.label);
                         $("#costprice").val(ui.item.costprice);
                         $("#sellingprice").val(ui.item.sellingprice);
                         $("#unitqty").val('')
                         $("#barcode").val(ui.item.barcode);

                         // Prevent the default autocomplete behavior
                         return false;
                     }
                 });

                 class Employeem {
                     constructor() {
                         this.ddate = "";
                         this.description2 = "";
                         this.invoiceno = "invoiceno";
                         this.companyxid = "companyxid";
                         this.account_type = "account_type";
                         this.costprice = "0.00";
                         this.price = "0.00";
                         this.unitqty = "0";
                         this.barcode = "";
                         this.totalpayable = "0.00";
                         this.accounttype = "Cash";
                         this.unittotal = "0.00";
                         this.users = "Administrator";
                         this.companyx = "companyx";
                         this.clientname = "General Vendor";
                     }
                 }


                 $("#btnInsert").click(function () {
                     //alert(document.getElementById('unitQty').value);
                     //var unitQty = document.getElementById('unitqty').value;
                     //var costprice = document.getElementById('costprice').value;
                     //var sellingprice = document.getElementById('sellingprice').value;
                     //var itemname = document.getElementById('itemname').value;
                     //var companyname = document.getElementById('companyxid').value;
                     //if (unitQty.value.trim() === '') {
                     //    // Handle the case where one or both inputs are not numeric
                     //    alert("Empty record not accepted");
                     //    return;
                     //}

                     //if ( costprice.value.trim() === '' ) {
                     //    // Handle the case where one or both inputs are not numeric
                     //    alert("Empty record not accepted");
                     //    return;
                     //}

                     //if (sellingprice.value.trim() === '') {
                     //    // Handle the case where one or both inputs are not numeric
                     //    alert("Empty record not accepted");
                     //    return;
                     //}


                     //if (itemname.value.trim() === '') {
                     //    // Handle the case where one or both inputs are not numeric
                     //    alert("Empty record not accepted");
                     //    return;
                     //}

                     //if (companyname.value.trim() === '') {
                     //    // Handle the case where one or both inputs are not numeric
                     //    alert("Company not properly logged in, please try again");
                     //    return;
                     //}

                     alert("Record Posted");
                    
                 });














             });


             function validateNumericInput(input) {
                
                 input.value = input.value.replace(/[^0-9]/g, '');
             }

             function calculateTotal() {
                
                
                 
                 var unitQty = document.getElementById('unitqty').value || 0;
               
                 var costPrice = document.getElementById('costprice').value || 0;

                

                 if (isNaN(unitQty) ) {
                     // Handle the case where one or both inputs are not numeric
                     alert('Please enter valid numeric values for Unit Quantity and Cost Price.');

                     document.getElementById('unitqty').value = '';
                     return;
                 }

                 if (isNaN(costPrice)) {
                     // Handle the case where one or both inputs are not numeric
                     alert('Please enter valid numeric values for Unit Quantity and Cost Price.');

                     document.getElementById('costprice').value = '';
                     return;
                 }


                 var unitqty2 = parseFloat(unitQty.replace(/,/g, ''));
                 var costprice2 = parseFloat(costPrice.replace(/,/g, ''));
                 var unitTotal = unitqty2 * costprice2;





                 






                 var formattedUnitTotal = unitTotal.toLocaleString('en-US', {
                     minimumFractionDigits: 2,
                     maximumFractionDigits: 2
                 });

                 document.getElementById('unittotal').innerHTML = formattedUnitTotal;
                 document.getElementById('invoicetotal').innerHTML = formattedUnitTotal;


                 
             }




             // Function to format data for autocomplete
             function formatAutocompleteData(data) {
                 var formattedData = [];
                 for (var i = 0; i < data.length; i += 4) {
                     formattedData.push({
                         label: data[i + 0],
                         costprice: data[i + 1],
                         sellingprice: data[i + 2],
                         barcode: data[i + 3]
                     });
                 }
                 return formattedData;
             }
         </script>










    </body>
    </html>

<%--</asp:Content>--%>

