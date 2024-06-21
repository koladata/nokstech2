﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cb_main.aspx.vb" Inherits="cb_main" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<meta charset="UTF-8">
	<title>Central Bank</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
<!--
.textbox { 
    border: 0px solid #848484; 
    border-radius: 15px; 
    outline:0; 
    height:25px; 
    width: 120px; 
    padding-left:25px; 
    padding-right:25px; 
	font-size:12px
  } 
  
 .bigbox { 
	width: 160px; 
	font-size: 12px;
	 border-radius: 15px; 
	color: #333;
	padding: 5px; 
	height: 140px; 
	border: 1px solid #ccc;  
	background: #fff; 
	}
 #popUpYes
            {
              width: 60px;
              height: 30px;
              background-color: black;
            }
            #popUpYes:hover
            {
              background-color: white;
			  
            } 
#newb {
background-position: 0 -93px;
	color: #222d05;
	cursor: pointer;
	font-family: 'HammersmithOneRegular';
	font-style: oblique;
	font-size: 15px;
	height: 29px;
	width: 198px;
	border: 0;
	margin: 18px 0 0;
	padding: 0 0 0 10px;
	text-align: left;
	text-transform: uppercase;
	}
#btn {
  background: #a2d2f2;
  background-image: -webkit-linear-gradient(top, #a2d2f2, #2980b9);
  background-image: -moz-linear-gradient(top, #a2d2f2, #2980b9);
  background-image: -ms-linear-gradient(top, #a2d2f2, #2980b9);
  background-image: -o-linear-gradient(top, #a2d2f2, #2980b9);
  background-image: linear-gradient(to bottom, #a2d2f2, #2980b9);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  text-shadow: 4px 0px 2px #663366;
  font-family: Arial;
  color: #ffffff;
  font-size: 30px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

#btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}



.myButton {
	-moz-box-shadow:inset 0px 39px 0px -24px #e67a73;
	-webkit-box-shadow:inset 0px 39px 0px -24px #e67a73;
	box-shadow:inset 0px 39px 0px -24px #e67a73;
	background-color:#e4685d;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:4px;
	border:1px solid #ffffff;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:15px;
	padding:6px 15px;
	text-decoration:none;
	text-shadow:0px 1px 0px #b23e35;
	text-align:center;
	text-indent:inherit;
	vertical-align: text-top;
	
	


	

	width: 140px;
	
}
.myButton:hover {
	background-color:#eb675e;
}
.myButton:active {
	position:relative;
	top:1px;
}




  .t1 { 
    border: 1px solid #c4c4c4; 
    height: 15px; 
    width: 180px; 
    font-size: 13px; 
    padding: 4px 4px 4px 4px; 
    border-radius: 4px; 
    -moz-border-radius: 4px; 
    -webkit-border-radius: 4px; 
    box-shadow: 0px 0px 8px #d9d9d9; 
    -moz-box-shadow: 0px 0px 8px #d9d9d9; 
    -webkit-box-shadow: 0px 0px 8px #d9d9d9; 
    
} 
 
.t1:focus { 
    outline: none; 
    border: 1px solid #7bc1f7; 
    box-shadow: 0px 0px 8px #7bc1f7; 
    -moz-box-shadow: 0px 0px 8px #7bc1f7; 
    -webkit-box-shadow: 0px 0px 8px #7bc1f7; 
} 


    </style>
</head>
<body bgcolor="#E6E6FA">
<form id="Form1" runat="server" method="post">
 <div>
    <div style="margin:0 auto;max-width:900px;">
     <p align="right" style="margin-top:-50px">
       
         v<asp:TextBox style=" border:none;border-radius:10px; width:300px; " placeholder="Search" ID="txt_search" runat="server"></asp:TextBox>
         <asp:Button ID="btn_search" 
             style=" border:none;border-radius:5px; width:100px; margin-top:-5px; " Text="Search" 
             runat="server" CssClass="myButton"  />
        </p>
    
    </div>
 <div style="margin:0 auto;max-width:900px;margin-top:5%">
         <div style="max-width:900px;height:40px">
         <div style="width:70px;height:20px;border-radius:5px;background-color:#007CB9;padding:5px; vertical-align: top;"> 
           
           <a href="cb_change.aspx"> 
         <table style="width:100%">
         
         <td style="width:100%;text-align:right;">
                   <span style="color: #FFFFFF;margin-top:-15px" >Password</span></td>
                  </tr>
         </table>




           </a>
            </div>
            <div style="margin-top:-30px; float:right;">
            <a href="http://standardch1-001-site3.ftempurl.com/"> <img src="images/homex1.png" style="float:right;margin-right:35px" border="0" ></a>
            </div>
            
         </div>
         <%--  <table>
              <tr >
    <td height="40" colspan="2"><img src="images/head.png"  style="border-radius:5px" width="912" height="40" border="0" usemap="#Map"></td>
  </tr>
         </table>--%>
     
         <div style="float:left; border-left:50px;max-width:1000px;background-color:#d9d9d9;padding:10px; height:453px; width:500px;" >
             <h2>Register User</h2>
          
          
          
             <div
             <td align="center" valign="middle">&nbsp;</td> </div>
             <p><left><b>  Full Name: </b>&nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                 <asp:TextBox CssClass="t1" placeholder="Full Name" ID="full_name" 
                     runat="server" ReadOnly="True" /> 
             <div>
             &nbsp;
             </div>
             <p><left><b>  Address : </b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                 <asp:TextBox CssClass="t1" placeholder="Address" ID="address" runat="server" 
                     ReadOnly="True" /> 
                              
                       <div>
             &nbsp;
             </div>
             <p><left><b>  Zip Code: </b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                 <asp:TextBox CssClass="t1" placeholder="Zip Code" ID="zip_code" 
                     runat="server" ReadOnly="True" /> 
                       
                       
                       <div>
             &nbsp;
             </div>
             <p><left><b>  Beneficiary's Bank : </b>&nbsp; &nbsp; 
                 <asp:TextBox CssClass="t1" placeholder="Beneficiary's Bank" 
                     ID="beneficiary_bank" runat="server" ReadOnly="True" /> 
                       
                       <div>
             &nbsp;
             </div>
             <p><left><b>  Account Number: </b>&nbsp; &nbsp; &nbsp; &nbsp; 
                 <asp:TextBox CssClass="t1" placeholder="Account Number:" ID="account_number" 
                     runat="server" ReadOnly="True" /> 
                       
                       
                       <div>
             &nbsp;
             </div>
             <p><left><b>  Gold: </b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  
                 <asp:TextBox CssClass="t1" placeholder="Gold:" ID="gold" runat="server" 
                     ReadOnly="True" /> 
                       
                       
                       <div>
             &nbsp;
             </div>
             <p><left><b>  Amount: </b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  
                 <asp:TextBox CssClass="t1" placeholder="Amount:" ID="amount" runat="server" 
                     ReadOnly="True" /> 
                         
                          </p>
                           <div>
             &nbsp;
             </div>
                          
                          <p><left><b>  </b> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  
                 <asp:TextBox CssClass="t1" placeholder="User Name:" ID="user_name" runat="server" /> 
                         
                          </p>
                           <div>
             &nbsp;
             </div>

                          
                          <br />
             <p><span id="error_msg" runat="server" style="color:Red;margin-left:auto;margin-right:auto;"></span><center><asp:Button CssClass="myButton" ID="submit" runat="server" 
                    onclick ="Login" class="submit" Text="Transfer Fund" ValidationGroup="a" /></center></p>
                             </div>
           
      
            <div style="background-color:#d9d9d9;padding:10px;float:right; margin-right:20px; max-width:300px;height:453px;border-radius:5px;">
             <img src="images/login_background2.png" style="max-width:100%;border-radius:5px" />
           <center>  </center>
           
         
     </div>
 </div>
    
 
      
    
  </form>


<map name="Map"><area shape="rect" coords="655,3,907,37" href="http://www.nifrex.org">
</map></body>
</html>