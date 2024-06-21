
<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sales.aspx.vb" Inherits="sales" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sales Records</title>





    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<!-- CSS file links -->
<link href="serv/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
<link href="serv/css/jquery.bxslider.css" rel="stylesheet" media="screen"/>
<link href="serv/css/style.css" rel="stylesheet" type="text/css" media="all" />
     <link type="text/css" rel="stylesheet" href="css/tablecss.css" />
<link href="serv/css/responsive.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="serv/css/yamm.css" rel="stylesheet" type="text/css" media="all" />
<link href="serv/css/jquery.nouislider.min.css" rel="stylesheet" type="text/css" media="all" />

     <link rel="stylesheet" href="serv/css/components.css">
     

    <link rel="stylesheet" href="serv/css/template-style.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'/>









 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
  $( function() {
      $("#datepicker").datepicker();
      $("#datepicker2").datepicker();
  } );
    </script>




    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />

 


    
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvCustomers]').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                "responsive": true,
                "sPaginationType": "full_numbers"
            });
        });
    </script>
    <style type="text/css">



        body {
            font-family: Arial;
            font-size: 10pt;
        }



        .pager
      {
         margin-top:20px;
      }

        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=40);
            opacity: 0.4;
        }

        .modalPopup {
            background-color: #FFFFFF;
            width: auto;
            /*min-width:400px;*/
            border: 3px solid #000;
        }

            .modalPopup .header {
                background-color: #2FBDF1;
                height: 30px;
                color: White;
                line-height: 30px;
                text-align: center;
                font-weight: bold;
            }

            .modalPopup .body {
                min-height: 50px;
                line-height: 30px;
                text-align: center;
                padding: 5px
            }

            .modalPopup .footer {
                padding: 3px;
            }

            .modalPopup .button {
                height: 23px;
                color: White;
                line-height: 23px;
                text-align: center;
                font-weight: bold;
                cursor: pointer;
                background-color: #9F9F9F;
                border: 1px solid #5C5C5C;
                margin: 5px;
            }

            .modalPopup td {
                text-align: left;
            }


        .back1
        {
           

            height : 400px;
            width : 800px;
        }


        .tdcss {
            width: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

          <div class="topm">
        </div>
    <div class="firstline">
	
     	</div>
	
               
<div class="searchbanner">
    <div class="div1 " > &nbsp;</div>
            <div class="div2 ">
                <input class="sbox" style="font-size:16px; height:40px"  type="text" placeholder="Enter Invoice Number" name="search" />
     <button class="btn btn-primary mbut" style="font-size:38px"> <i class="fa fa-search"></i></button>
    </div>
        <div class="div4x">
       
        <ul>
  <li><a href="" ><b> Profit Report </b></a></li>
  <li><a  href="stock_list.aspx" ><b>Stock List</b></a></li>
 
          <li> <a href="index.aspx"  class="btn btn-large btn-success divmenux2">Home</a></li>
</ul>
            </div>
          
            </div>
         <%--<div class="ecom" > </div>--%>
        <div class="tota" > 
              
        
                <div class="totalecom" >
                    <p class="sp2">Search Date</p>
                     <p class="ddate"><asp:TextBox ID="datepicker" runat="server" type="text" class="sboxxt input" style="font-size:13px; height:25px"  placeholder="Start Date"  ></asp:TextBox></p>
                     <p class="ddate"><asp:TextBox ID="datepicker2" runat="server" type="text" class="sboxxt input" style="font-size:13px; height:25px"  placeholder="End Date"  ></asp:TextBox></p>
                  
                </div>
               <div class="totalecom2" ><asp:Button ID="Button1" runat="server" class="sboxxt2 buttontest2" Text="Search" ValidationGroup="vgA"  />
                </div> 
            <div class="totalecom3" >
                <p class="sp">Total Sales Analysis :</p>
                 <p class="ddate"><asp:TextBox ID="grosstotal" runat="server" type="text" class="sboxxt input" style="font-size:12px; height:25px"  placeholder="Total Sales"  ></asp:TextBox></p>
                 <p class="ddate"><asp:TextBox ID="totalpaid" runat="server" type="text" class="sboxxt input" style="font-size:12px; height:25px"  placeholder="Total Paid"  ></asp:TextBox></p>
              

                </div> 
 <div class="totalecom3" >
                <p class="sp">Payment Method :</p>
                 <p class="ddate"><asp:TextBox ID="totaloutstanding" runat="server" type="text" class="sboxxt input" style="font-size:12px; height:25px"  placeholder="Total Outstanding"  ></asp:TextBox></p>
                 <p class="ddate"><asp:TextBox ID="totalonline" runat="server" type="text" class="sboxxt input" style="font-size:12px; height:25px"  placeholder="POS & Transfer"  ></asp:TextBox></p>
              

                </div> 

            </div>
         
           

             <div class ="bacK1">


       
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>
        <div id="container-fluid" style="margin: 10px">
            <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" class="table table-striped"
                Width="100%" OnSelectedIndexChanged="gvCustomers_SelectedIndexChanged">
                <Columns>
           
                 
                     <asp:BoundField DataField="clientname" HeaderText="Customer Name" />
                     <asp:BoundField DataField="totalpayable" HeaderText="Total Payable" />
                      <asp:BoundField DataField="description2" HeaderText="Item Name" />
                    
                    <asp:BoundField DataField="status" HeaderText="Payament Status" />
                    <asp:BoundField DataField="total_qty" HeaderText="Quantity" />
                   <asp:BoundField DataField="otherinvoicenumber" HeaderText="Invoice No" />
                    <asp:BoundField DataField="totalpaid" HeaderText="Total Paid" />
                    <asp:BoundField DataField="balance" HeaderText="Balance" />
                    <asp:BoundField DataField="subfileno" HeaderText="Payment Type" />
                   <asp:BoundField DataField="ddate" HeaderText="Date Sold" />

                    <asp:ButtonField Text="Show Invoice Details" CommandName="Select" ItemStyle-Width="30" HeaderText="Action" />
                </Columns>
            </asp:GridView>



           
        </div>
        <asp:Button ID="btnHide" runat="server" Style="display: none" />
        <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnHide"
            CancelControlID="btnClose" BackgroundCssClass="modalBackground">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <div class="popupBackground">
                <div class="header">
                    Details
                </div>
                <div class="body table-responsive">
                    <table id="tablee" runat="server" border="0" cellpadding="0" cellspacing="0" class="table">
                        <tr>
                            <td class="tdcss">
                                <b>Client Name: </b>
                            </td>
                            <td>
                                <asp:Label ID="lblclientName" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="tdcss">
                                <b>Total Paid: </b>
                            </td>
                            <td>
                                <asp:Label ID="lbltotalPaid" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="tdcss">
                                <b>Invoice Number: </b>
                            </td>
                            <td>
                                <asp:Label ID="lblInvoiceNumber" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="tdcss">
                                <b>End Sales: </b>
                            </td>
                            <td>
                                <asp:Label ID="lblendsales" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="tdcss">
                                <b>Status: </b>
                            </td>
                            <td>
                                <asp:Label ID="lblStatus" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="tdcss">
                                <b>Total Qty: </b>
                            </td>
                            <td>
                                <asp:Label ID="lbltotalQty" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="tdcss">
                                <b>Total Payable: </b>
                            </td>
                            <td>
                                <asp:Label ID="lbltotalPayable" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="tdcss">
                                <b>Balance: </b>
                            </td>
                            <td>
                                <asp:Label ID="lblBalance" runat="server" />
                            </td>
                        </tr>
                        <tr>
                                              <td class="tdcss">
                                <b>expatriates: </b>
                            </td>
                            <td>
                                <asp:Label ID="lblexpatriates" runat="server" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="footer" align="right">
                    <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="button" />
                </div>
            </div>
        </asp:Panel>




                  
                 
             </div>


            
   


             ``    


          
         
      </div>
        
         
         <div class="buttomdiv" >
            
            <div class="down1"><img class="c44" src="serv/images/pay.png" alt="Image"/> </div>
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
				<a href="#"><img width="60" height="60" src="serv/images/facebook.png" title="facebook" alt="facebook"/></a>
				<a href="#"><img width="60" height="60" src="serv/images/twitter.png" title="twitter" alt="twitter"/></a>
				<a href="#"><img width="60" height="60" src="serv/images/youtube.png" title="youtube" alt="youtube"/>
				</a>
		
            </div>

        </div>












































        


    </form>
</body>
</html>




