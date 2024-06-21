<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main_sales.aspx.cs"  Inherits="main_sales.main_sales" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<style type="text/css">
    @media print {
      /* Hide footer when printing */
      footer {
        display: none;
      }
    }
  </style>

    <title></title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="sales_page.css" rel="stylesheet" />

    
       <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>


  
   

   
     <link rel="stylesheet" href="mainx.css"/>

























<!-- html5 support in IE8 and later -->
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<!-- CSS file links -->
    <style>


       
      

        .alboody{
            height: auto;
           width: 100%;
        }

        .forcomplist1{
    height : 190px;
    width : 95%;
    margin-top : 10px;
    /*background-color: red;*/
    margin-left : 4%;
    border: solid 1px #e0e0d1;

}
    .complabel{
    padding : 10px;
    float : left;

    width: 160px;
}
     .printer{
            height : 100%;
            width: 100%;
         
           overflow:auto;
           position:relative;
          
        }
    #clientname
    {
    width: 81.5%;
    height: 95%;
    float: left;
    border: none;
    padding-left: 4%;
    font-size: 16px;
    background-color: white;
    outline: none;
    /*background-color : red;*/
    /*margin-left : 4%;*/
    /*margin-top : 10px;*/
}

   
        .button_address2{
            width : 80px;
            /*margin-right : 10px;*/
            margin-top : 0px;
            float :right ;
            height : 25px;
            background-color :#f2f2f2;
            border-radius : 5px;
            border: 1px solid #d9d9d9;
            cursor : pointer ;
            /*padding: 10px;*/
        }

        #button24{
           width : 34px;
           height : 30px;
           font-size : 16px;
           font-weight : bolder;
           color: red;
           
        }

        .forradio{
            margin-left: 20px;
            /*display: block;*/
  /*position: relative;*/
  /*padding-left: 35px;*/
  margin-bottom: 10px;
  /*cursor: pointer;*/
  font-size: 16px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  /*float: left;*/
        }
     .forradio2{
            margin-left: 20px;
          
        }

        #Rad
        .DataList1x{
            margin-top : 20px;
            height : 50px;
        }
    </style>
     
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'/>


   

      
    

    <link href="olamide.css" rel="stylesheet" />
    


    



    


    <script src="jquery-3.4.1.js"></script>
     <script src="jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <link href="jquery-ui-1.12.1.custom/jquery-ui.min.css" rel="stylesheet" />

    <script type="text/javascript">
















        $(document).ready(function () {


            function getcompanyid() {
                let forcoy = localStorage.getItem("forusername");
                return { forcoy };
            }


            var forocy2 = getcompanyid();
            forcoy3 = forocy2.forcoy;
            if (forcoy3 == "") {
                window.location.replace("../Default.aspx");
                //alert(document.getElementById("companyxid").innerHTML);
            }
            else {

            }



            function finvoice() {
                let today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                let x = Math.floor((Math.random() * 10000) + 1);
                today = mm + '/' + dd + '/' + yyyy;
                let invoiceno = mm + dd + yyyy + x;
                return { today, invoiceno }
            }

            var invresult = finvoice();


            //document.write(today);

            document.getElementById("TextBox6").value = invresult.today;
            document.getElementById("TextBox5").value = invresult.invoiceno;


            var varclientname1 = document.getElementById("clientname").value;



            if (varclientname1 == '') {
                document.getElementById("clientname").value = 'General Customer';
            }

            $("#TextBox2").click(function () {
                $(this).removeAttr("readonly");
                $(this).focus();
                document.getElementById("#TextBox2").value = "";
            });





            //function clearListAndPrint() {
            //    return new Promise(function (resolve, reject) {
            //        var employee = {};
            //        employee.invoiceno = document.getElementById("TextBox5").value;
            //        localStorage.setItem("invoiceno_postsales", document.getElementById("TextBox5").value);
            //        employee.users = localStorage.getItem("username1");
            //        employee.companyxid = localStorage.getItem("forusername");
            //        employee.totalpayable = document.getElementById("totamount").innerHTML;

            //        document.getElementById("totamount").innerHTML = '0.00';
            //        document.getElementById("total_qty").innerHTML = '0';

            //        $.ajax({
            //            url: 'insertsales.asmx/Insertsales',
            //            method: 'post',
            //            data: '{emp: ' + JSON.stringify(employee) + '}',
            //            contentType: "application/json; charset=utf-8",
            //            success: function () {
            //                var invresult2 = finvoice();
            //                document.getElementById("TextBox5").value = invresult2.invoiceno;
            //                document.getElementById("#TextBox2").value = '';
            //                resolve(); // Resolve the promise when the AJAX call is successful
            //            },
            //            error: function (err) {
            //                reject(err); // Reject the promise if there's an error
            //            }
            //        });
            //        $("#list").empty();
            //    });
            //}










            //$('#Button24').click(function () {
            //    // Call the function and use async/await
            //    clearListAndPrint()
            //        .then(function () {
            //            // The promise is resolved, open the new page
            //            window.open('https://seelagos.com/print_new.html', '_blank');
            //        })
            //        .catch(function (err) {
            //            // Handle errors
            //            alert(err);
            //        });
            //});





            $('#Button3').click(function () {
                alert(localStorage.getItem("forusername"));
                alert(localStorage.getItem("invoiceno_postsales"));
            });





            $('#Button24').click(function () {


                var employee = {};

                employee.invoiceno = document.getElementById("TextBox5").value;
                localStorage.setItem("invoiceno_postsales", document.getElementById("TextBox5").value);
                employee.users = localStorage.getItem("username1");
                employee.companyxid = localStorage.getItem("forusername");
               
                employee.totalpayable = document.getElementById("totamount").innerHTML;

                
                



                document.getElementById("totamount").innerHTML = '0.00'
                document.getElementById("total_qty").innerHTML = '0';

                $.ajax({

                    url: 'insertsales.asmx/Insertsales',
                    method: 'post',
                    data: '{emp: ' + JSON.stringify(employee) + '}',
                    contentType: "application/json; charset=utf-8",
                    success: function () {
                        var invresult2 = finvoice();
                        document.getElementById("TextBox5").value = invresult2.invoiceno;
                        document.getElementById("#TextBox2").value = '';
                    },
                    error: function (err) {
         
                    }




                });


                $("#list").empty();
                
               
                //alert(localStorage.getItem("forusername"));
                //alert(localStorage.getItem("invoiceno_postsales"));
                window.open('http://www.seelagos.com/Default2.aspx');
             //   window.location.href = 'https://seelagos.com/Default2.aspx';
                //, 'width=400,height=500'

            });






























          
            $('#Button2').click(function () {


                var employee = {};

                employee.invoiceno = document.getElementById("TextBox5").value;
                employee.users = localStorage.getItem("username1");
                employee.companyxid = localStorage.getItem("forusername");



                $.ajax({

                    url: 'insertsales.asmx/Deletesales1',
                    method: 'post',
                    data: '{emp: ' + JSON.stringify(employee) + '}',
                    contentType: "application/json; charset=utf-8",
                    success: function () {
                        var invresult2 = finvoice();
                        document.getElementById("TextBox5").value = invresult2.invoiceno;



                        document.getElementById("TextBox1").value = "1";
                        document.getElementById("TextBox3").value = "0.00";
                        document.getElementById("TextBox4").value = "0.00";
                        document.getElementById("amount1").innerHTML = "0.00";
                        document.getElementById("total_qty").innerHTML = "0.00";
                        document.getElementById("netamount").innerHTML = "0.00";


                    },
                    error: function (err) {
                        //alert(err + 'kola');

                    }




                });


                $("#list").empty();





            });














            var forback1 = $('#default_color').val();
            var forback2 = $('#secondary_color').val();
            var forback3 = $('#other_color').val();

            $('#second_mainbc').css('background-color', forback1);
            $('#orderid').css('background-color', forback1);
            $('#contactboxid').css('background-color', forback2);
            $('#firstlineid').css('background-color', forback3);
            var forlogo = $('#forlogo').val();
            $('#logoim').attr('src', forlogo);

            const input = document.querySelector("#TextBox2");
            const Button2 = document.querySelector("#Button2");
            const list = document.querySelector("#list");
            var el = document.getElementsByTagName('li');



            var foranimation1 = $('#animationtext1').val();
            var foranimation2 = $('#animationtext2').val();
            var foranimation3 = $('#animationtext3').val();
            var foranimation4 = $('#animationtext4').val();
            var foranimation5 = $('#animationtext5').val();

            $('#animationpics1').attr('src', foranimation1);
            $('#animationpics2').attr('src', foranimation2);
            $('#animationpics3').attr('src', foranimation3);
            $('#animationpics4').attr('src', foranimation4);
            $('#animationpics5').attr('src', foranimation5);





            $('#TextBox2').autocomplete({


                source: function (request, response) {
                    $.ajax({
                        url: 'SearchHandler3.ashx',
                        type: "GET",
                        data: { term1: $('#TextBox2').val(), term2: document.getElementById("companyxid").innerHTML },
                        dataType: "json",
                        success: function (data) {
                            response(data);
                        }
                    });
                },


                minLength: 2,


                select: function (event, ui) {   //must be cleared with function parameter

                    $("#TextBox2").attr("readonly", "readonly");


                    const input = document.querySelector("#TextBox2");
                    var txt = (ui.item.label);

                    var str = (ui.item.label);
                    var parts = str.split(/[.#\?&]/g); // split the string with these characters

                    // find the piece with the key `iamlookingforthis`
                    var filteredParts = parts.filter(function (part) {
                        return part.split('-|- ')[0] === ' ';
                    });

                    // from the filtered array, get the first [0]
                    // split the value and key, and grab the value [1]
                    var iamlookingforthis = filteredParts[0].split('-|- ')[1];


                    let text = str;

                    let position = text.search(/. -|- /i);

                    let result = text.substring(position);


                    let varitemname = text.replace(result, "");

                    //alert(varitemname);

                    $('#TextBox3').val(iamlookingforthis);

                    var unitprice = (iamlookingforthis);

                    unitprice = unitprice.replace(/[$,]+/g, "");
                    var funitprice = unitprice.replace(/[$,]+/g, "");
                    //alert(unitprice);
                    var mainbox2 = document.getElementById("TextBox1").value;
                    if (mainbox2.length < 1) {

                        mainbox2 = "1";
                        document.getElementById("TextBox1").value = "1";

                    } else {
                        mainbox2 = document.getElementById("TextBox1").value;
                    }



                    var totalx = parseInt(mainbox2) * parseInt(unitprice);

                    var ftotalline = parseInt(mainbox2) * parseInt(unitprice);


                    /* alert(totalx);*/

                    vartotal = document.getElementById("totamount").innerHTML;
                    vartotal = vartotal.replace(/[$,]+/g, "");
                    vartotal = Math.round(vartotal);



                    //if (vartotal.length < 1) {

                    //    vartotal = "0";
                    //}

                    //alert(vartotal);
                    //alert(mainbox2);
                    //vartotal_qty2 = mainbox2
                    vartotal_qty = document.getElementById("total_qty").innerHTML;

                    vartotal_qty = parseInt(vartotal_qty) + parseInt(mainbox2);

                    vartotal = parseInt(vartotal) + parseInt(totalx);
                    var grosstotal = parseInt(vartotal) + parseInt(totalx);

                    //alert(varitemname);
                    //alert(funitprice);
                    //alert(ftotalline);
                    //alert(grosstotal);


                    // document.getElementById("varitemname").innerHTML = (varitemname);
                    //  document.getElementById("funitprice").innerHTML = (funitprice);
                    //  document.getElementById("ftotalline").innerHTML = (ftotalline);
                    //  document.getElementById("grosstotal").innerHTML = (grosstotal);


                    vartotal = (vartotal).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');

                    document.getElementById("totamount").innerHTML = (vartotal);
                    document.getElementById("total_qty").innerHTML = (vartotal_qty);


                    totalx = (totalx).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');


                    document.getElementById("TextBox4").value = (totalx);

                    if (txt == '') {
                        alert('find amount');
                    } else {
                        li = document.createElement('li');
                        li.innerHTML = txt + " x " + mainbox2 + " =" + totalx;
                        var btn = document.createElement("Button");
                        btn.innerText = "X";
                        btn.id = "fordelbutton"
                        btn.style.cssText = 'background-color: white'







                        //btn.style.backgroundImage = "url('./del.png')";
                        btn.style.cssText = ('width: 30px; height: 30px; margin-right: 0px; color:red; font-size: 13px; font-weight: bold; float: right;  margin-top: -7px; position: absolute; right: 14px;');
                        list.insertBefore(li, list.childNodes[0]);
                        li.appendChild(btn);

                        $('#TextBox4').val("");

                        document.getElementById("TextBox1").value = "1";


                        var varclientname = document.getElementById("clientname").value;


                        if (varclientname == '') {
                            varclientname = 'General Customer';
                        }


                        var varinvoicedate = document.getElementById("TextBox6").value;

                        var varinvoicenumber = document.getElementById("TextBox5").value;

                        var varcompanyid = document.getElementById("companyxid").innerHTML;

                        var varcompanyname = "companyname";

                        var varusername = document.getElementById("users").innerHTML;

                        var employee = {};
                        employee.unitprice = unitprice;
                        employee.unitqty = mainbox2;
                        employee.unittotal = totalx;

                        employee.totalpayable = vartotal;

                        employee.description2 = varitemname;

                        employee.ddate = varinvoicedate;

                        employee.invoiceno = varinvoicenumber;

                        employee.companyxid = varcompanyid;

                        employee.users = varusername;

                        employee.clientname = varclientname;

                        employee.companyx = varcompanyname;




                        $.ajax({

                            url: 'salesinsert2022.asmx/Addsales',
                            method: 'post',
                            data: '{emp: ' + JSON.stringify(employee) + '}',
                            contentType: "application/json; charset=utf-8",
                            success: function () {

                            },
                            error: function (err) {

                            }
                        });






                        $('#fordelbutton').click(function (e) {



                            let box = document.getElementById('list');
                            let li = e.target.parentNode;
                            //var linetext = e.target.;
                            let vartotaldel = vartotal;
                            vartotaldel = vartotaldel.replace(/[$,]+/g, "");
                            vartotaldel = Math.round(vartotaldel);

                            var box2 = li.textContent;
                            //var box2 = txt;
                            var parts = box2.split(/[.#\?&]/g); // split the string with these characters




                            var str2 = parts;

                            function countWords(str2) {
                                return str.split(/\S+/).length;

                            }

                            forcount = countWords(str2);

                            //alert(forcount);

                            forcount = forcount - 2;
                            //alert(forcount);


                            let text = str2;

                            const myArray = text.split(/[.#\?&]/g);
                            alert("i'm here for");
                            let word = myArray[1];

                            //alert(word);








                            // find the piece with the key `iamlookingforthis`
                            var filteredParts = parts.filter(function (part) {
                                return part.split('-|- ')[0] === ' ';
                            });




                            box2 = box2.replace(/[$,]+/g, "");
                            var linetotal = box2.match(/=(\d+)/i)[1];













                            //shit

                            //sshit 








































                            var unitprice2 = (iamlookingforthis);
                            //alert(unitprice2);
                            newtotal = document.getElementById("totamount").innerHTML
                            unitprice2 = unitprice.replace(/[$,]+/g, "");
                            newtotal = newtotal.replace(/[$,]+/g, "");
                            newtotal = Math.round(newtotal);


                            var newtotal3 = eval(newtotal) - eval(linetotal);


                            newtotal3 = (newtotal3).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');

                            document.getElementById("totamount").innerHTML = (newtotal3);


                            //alert(linetotal);
                            //alert(box2);
                            //alert(unitprice2);
                            //alert(parts);
                            //var streetaddress = (newtotal3).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
                            //alert(streetaddress);
                            newtotal3 = '';
                            newtotal = '';
                            unitprice = '';
                            unitprice2 = '';

                            //alert(newtotal);
                            box.removeChild(li);
                            // prevent click action
                            e.preventDefault();






                            return false;
                        });




                        //$('#list').on('click', function () {
                        //    alert("kola");
                        //});


                    }


                    return false;

                }


            }).change();





        });

    </script>







</head>













<body onload="getus()">
    
    <form id="form1" runat="server"  >
        <div class="allbody">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>



<div class="headingx1">
            <asp:Label ID="users" CssClass="txt12x"  runat="server" Text="Sales Page 6.1"></asp:Label>
           
        





    <div class="wrap">
   <div class="search">
  
       <input id="clientname" class="searchTerm" placeholder="Customer" type="text" />
      <button type="submit" class="searchButton">
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>
















   <%--<asp:UpdatePanel ID="UpdatePanel2x" runat="server">
                <ContentTemplate>--%>
                  

<asp:Button ID="Button2"  runat="server" Text="Menu" OnClientClick="window.location.href='/dashboard/dashboard.html'; return false;" />
    

              <%--  </ContentTemplate>
            </asp:UpdatePanel>--%>


        </div>

          



          


        <div class="a">
           
               <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Save Record" />
                </ContentTemplate>
            </asp:UpdatePanel>


            
                 <asp:Button ID="Button24" runat="server" Text="Post Sales"  />
              



              <div class="smain">

                <a href="#" class="previous">&laquo;</a>
               
                    <asp:TextBox ID="TextBox1" CssClass="s1" placeholder="Qty" runat="server"></asp:TextBox>
           
               <asp:TextBox ID="TextBox2" CssClass="s2" placeholder="Search Products" runat="server"></asp:TextBox>

                 <button id="searchsmall" type="submit"><i class="fa fa-search"></i></button>
            </div>
           

            


           


            <%-- <div class="forradiob"> 

                <asp:RadioButton ID="RadioButton1" CssClass="ml2" Text="" runat="server" /><asp:Label ID="Label4" CssClass="ml" runat="server" Text="Save and Print"></asp:Label>
                <asp:RadioButton ID="RadioButton2" CssClass="ml3" Text="" runat="server" /><asp:Label ID="Label8" CssClass="ml" runat="server" Text="Save"></asp:Label>

            </div>--%>



         

          
          
               
                    
               

                
                       
                       
           
           









           


           






       

           















              <asp:Panel ID="Panel3" ScrollBars="Vertical" runat="server" Width="100%" Height="200px">
                           <div class="vi">
                                <div class="element-list">
                    <ul id="list">
                    </ul>


<script type="text/javascript">
    function printList() {
        var list = document.getElementById("list").innerHTML;
        var printWindow = window.open('', '', 'height=500,width=500');

var pageStyle = '@page { size: 80mm 297mm; margin: 0; }';
  var head = document.head || document.getElementsByTagName('head')[0];
  var style = document.createElement('style');
  
  style.type = 'text/css';
  style.media = 'print';
  style.appendChild(document.createTextNode(pageStyle));
  head.appendChild(style);



        printWindow.document.write('<html><head><title>CRA</title></head><body>');
        printWindow.document.write(list);
        printWindow.document.write('</body></html>');
        printWindow.document.close();
        printWindow.print();
        printWindow.close();


 var style = document.createElement('style');
  style.type = 'text/css';
  style.innerHTML = '@media print { header, footer { display: none !important; } }';
  document.head.appendChild(style);


        return false;
    }
</script>






                </div>
                            </div>
                     </asp:Panel>


            <div class="hrl">
                <div class="tot">

                    <img class ="iconimage" src="bill_icon.png" />
                    <asp:Label ID="total" CssClass="t1" runat="server" Text="TOTAL"></asp:Label><asp:Label ID="totamount" CssClass="amount1" runat="server" Text="00.00"></asp:Label>
                </div>
                <div class="tot">
                    <img class ="iconimage" src="quantity_icon.png" />
                    <asp:Label ID="tax" CssClass="t1" runat="server" Text="Item Count"></asp:Label><asp:Label ID="total_qty" CssClass="amount" runat="server" Text="00.00"></asp:Label>
                </div>
                <div class="tot">
                    <img class ="iconimage" src="net_icon.png" />
                    <asp:Label ID="net" CssClass="t1" runat="server" Text="NET"></asp:Label><asp:Label ID="netamount" CssClass="amount" runat="server" Text="00.00"></asp:Label>
                </div>
            </div>







            <style>
                    .fordatalist1x{
                        width: 90%;
          margin-left: 5%;
                  float: left  ;
            
              margin-top : -5px;
      
        border: 1px red;
   

                    }

                 .edescription {
	
   
    font-size:14px;
    color: black;
  font-family: Arial;
   
  overflow: hidden;
  
   /*display: block;*/
  margin-left: auto;
  margin-right: auto;
  width:auto;
  height : 50px;
 
   color: #404040;
  text-align : center;
  margin-top : 5px;
  /*padding-bottom : 20px;*/
    
}

.maincircle{
   
     inline-size: auto; 
  overflow: hidden;
  width: 80%;
  float: left;
  margin-left : 2%;
  
   


  
    height: 80px;
    
    margin: 10px;
  /*  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.01), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
    padding: 5px;
    align-content : center ;
    text-decoration : none;
  border-radius: 5px;
    background-color: #B7E2F3;
   cursor: pointer ;
   position : relative ;

    





  
   



  
}



 .maincircle:hover {
        box-shadow: 2px 2px 6px gray;
        background-color: #F4C343;
    }












 .eprice {
	
   
    font-size:16px;
    color: black;
  font-family: Arial;
   
 
  margin-top : 5px;
   /*display: block;*/
  margin-left: auto;
  margin-right: auto;
  width:auto;
  height : auto;


   color: #404040;
  text-align : center;
 
  overflow: hidden;
  /*  white-space: nowrap;*/
    text-overflow:ellipsis;
}



                  

                   

            </style>





             <asp:Panel ID="Panel2"  ScrollBars="Vertical" runat="server" Width="100%" Height="1px">
                   
                <div class="fordatalist1x">
                       <asp:DataList ID="DataList1" runat="server"   RepeatColumns="3" >
                                    <ItemTemplate>
                                      
                            <div class="maincircle"   >
                                 <div class="eprice"><asp:Label ID="Label2"  runat="server" Text='<%# Eval("price", "{0:#,###}") %>'></asp:Label></div>
                            <div class="edescription" ><asp:Label ID="Label1"   runat="server" Text='<%# Eval("description2") %>'></asp:Label></div>
 
                                </div>
                            </ItemTemplate>
                                                       </asp:DataList>
                    
            </div>        
                 </asp:Panel>


           

            <asp:Label ID="companyxid" CssClass ="hidemex" runat="server" Width="1px" Font-Size ="0px"></asp:Label>
            <asp:TextBox ID="TextBox5" CssClass ="hidemex"  Width="1px" runat="server"> </asp:TextBox>
            <asp:TextBox ID="TextBox6" CssClass ="hidemex"  placeholder="" runat="server"></asp:TextBox>
            <asp:Label ID="companyname" CssClass ="hidemex"  runat="server" Width="1px" Text=""></asp:Label>
            <asp:TextBox ID="TextBox3" CssClass ="hidemex"  placeholder="0.00" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox4" CssClass ="hidemex"  placeholder="0.00" runat="server"></asp:TextBox>

                
         




            <div class="printer">
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" TypeName="main_sales.DataSet1TableAdapters."></asp:ObjectDataSource>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" SizeToReportContent="true" ProcessingMode="Remote" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                    <LocalReport ReportPath="Report1.rdlc" DisplayName="none">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                   </div>


        </div>

     





           <div class="b">
         
            <asp:Button ID="Button3" runat="server" Text="+" CssClass="but" UseSubmitBehavior="false" />

            <asp:Button ID="Button4" runat="server" Text="Item 1" CssClass="but0" />
            <asp:Button ID="Button5" runat="server" Text="Item 2" CssClass="but0" />
            <asp:Button ID="Button6" runat="server" Text="Item 3" CssClass="but0" />
            <asp:Button ID="Button7" runat="server" Text="Item 4" CssClass="but0" />
            <asp:Button ID="Button8" runat="server" Text="Item 5" CssClass="but0" />
            <asp:Button ID="Button9" runat="server" Text="Item 6" CssClass="but0" />
            <asp:Button ID="Button10" runat="server" Text="" CssClass="but11" />
            <asp:Button ID="Button11" runat="server" Text="" CssClass="but11" />
            <asp:Button ID="Button12" runat="server" Text="" CssClass="but11" />
            <asp:Button ID="Button13" runat="server" Text="" CssClass="but11" />
            <asp:Button ID="Button14" runat="server" Text="" CssClass="but11" />
            <asp:Button ID="Button15" runat="server" Text="" CssClass="but11" />
            <asp:Button ID="Button16" runat="server" Text="" CssClass="but11" />
            <asp:Button ID="Button17" runat="server" Text="" CssClass="but7" />
            <asp:Button ID="Button18" runat="server" Text="" CssClass="but7" />
            <asp:Button ID="Button19" runat="server" Text="" CssClass="but7" />
            <asp:Button ID="Button20" runat="server" Text="" CssClass="but7" />
            <asp:Button ID="Button21" runat="server" Text="" CssClass="but7" />
            <asp:Button ID="Button22" runat="server" Text="" CssClass="but7" />
            <asp:Button ID="Button23" runat="server" Text="" CssClass="but7" />
            <div class="but0">
                <img class="badd" src="sales/add.png" />
            </div>
            <div class="but0">
                <p class="txtp">Recentp>Sales</p>
            </div>
            <div class="but0">
                <p class="txtp">Pickup</p>
                <p>Orders</p>
            </div>
            <div class="but0">
                <p class="txtp">E-Commerce </p>
                <p>Orders</p>
            </div>
            <div class="but0">
                <p class="txtp">END </p>
                <p>SALES</p>
            </div>
            <div class="but0">
                <img class="bre" src="sales/re.png" /><p>X-Report</p>
            </div>
            <div class="but0">
                <p class="txtp">Cash </p>
                <p>In/Out</p>
            </div>
            <div class="but0">
                <img class="bstp" src="sales/stp.png" /><p>Stock & Price</p>
            </div>
            <div class="but0">
                <img class="bclock" src="sales/clock.png" /><p>Clock In/Out</p>
            </div>
            <div class="but0">
                <p class="txtp2">Check gift</p>
                <p>Card</p>
                <p>Balance</p>
            </div>
            <div class="but0">
                <img class="bprint" src="sales/print.png" /><p>Coupons</p>
            </div>
            <asp:Button ID="Button36" runat="server" Text="" CssClass="but0" />
            <asp:Button ID="Button37" runat="server" Text="" CssClass="but0" />

            <asp:Button ID="Button45" runat="server" Text="New sale" CssClass="but9" />
            <asp:Button ID="Button42" runat="server" Text="Save Sale" CssClass="but9" />
            <div class="but9">
                <p class="txtp1">Save as</p>
                <p>Order</p>
            </div>
            <div class="but9">
                <p class="txtp1">Save as</p>
                <p>waiting</p>
            </div>
            <div class="but9">
                <img class="bper" src="sales/per.png" /><p>Discount</p>
            </div>
            <asp:Button ID="Button43" runat="server" Text="Tax Exempt" CssClass="but9" />
            <div class="but9">
                <img class="bnotes" src="sales/notes.png" /><p>Notes</p>
            </div>
            <a href="print_new.html" class="but9">
                <img class="bprint" src="sales/print.png" /><p>Last Print</p>
            </a>
            <div class="but9">
                <img class="bdraw" src="sales/drawer.png" /><p>Cashdrawer</p>
            </div>
            <asp:Button ID="Button47" runat="server" Text="Promotions" CssClass="but9" />
            <asp:Button ID="Button48" runat="server" Text="" CssClass="but9" />
            <div class="but9">
                <img class="bgift" src="sales/gift.png" /><p>Reciept</p>
            </div>
            <div class="but9">
                <p class="txtp1">Add </p>
                <p>Shipping</p>
            </div>
            <asp:Button ID="Button51" runat="server" Text="" CssClass="but9" />
            <div class="lst">


                </div>
            <asp:Button ID="Button25" runat="server" Text="" CssClass="but9" />
            <div class="lst">







                <div class="but1">
                    <img src="sales/pic.png" class="but1img" />
                </div>
                <div class="but2">
                    <img class="blocimg" src="sales/lock.png" />
                </div>
                <asp:Button ID="Button54" runat="server" Text="PAY POS" CssClass="but3" />
                <asp:Button ID="Button55" runat="server" Text="PAY CASH" CssClass="but4" />



                  </div>
            <asp:Button ID="Button26" runat="server" Text="" CssClass="but9" />
            <div class="lst">


                  </div>
            <asp:Button ID="Button27" runat="server" Text="" CssClass="but9" />
            <div class="lst">

               

                </div>
            <asp:Button ID="Button28" runat="server" Text="" CssClass="but9" />
            <div class="lst">

             


    <br />
   
                </div>
            </div>







           
        </div>


         
    <script type="text/javascript">


        function getus() {

            document.getElementById("companyxid").innerHTML = localStorage.getItem("forusername");
            document.getElementById("users").innerHTML = localStorage.getItem("username1");




            return false;
        }


    </script>



















    </form>
    <script>
        function myfunction() {
            return false;
        }

    </script>



     
</body>
</html>


