﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cb_admin.aspx.vb" Inherits="cb_admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html>
<head>
	<meta charset="UTF-8">
	<title>Central Bank</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
<!--
.style1 {color: #FF0000}
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
      <img src="images/cb_logo.png" width="202px"  height="50px"/>
     <p align="right" style="margin-top:-50px">
       
     <asp:TextBox style=" border:none;border-radius:10px; width:300px; " placeholder="Search" ID="txt_search" runat="server"></asp:TextBox>
         <asp:Button ID="btn_search" 
             style=" border:none;border-radius:5px; width:100px; margin-top:-5px; " Text="Search" 
             runat="server" CssClass="myButton"  />
        </p>
    
    </div>
 <div style="margin:0 auto;max-width:900px;margin-top:5%">
         <div style="max-width:900px;height:40px">
         <div style="width:70px;height:20px;border-radius:5px;background-color:#007CB9;padding:5px; vertical-align: top;"> 
           <a href="index.aspx"> 
         <table style="width:100%">
         <tr style="width:100%">
         <td style="width:30%">
      <img src="images/back_icon.png" width="20px" /></td>
         <td style="width:70%;text-align:right;">
           <span style="color: #FFFFFF;margin-top:-15px" > Home</span></td>
         </tr>
         </table>
           </a>
            </div>
            <div style="margin-top:-30px; float:right;">
            <a href="index.aspx"> <img src="images/home.png" style="float:right;margin-right:75px" border="0" ></a>
            </div>
            
         </div>
       <%--  <table>
              <tr >
    <td height="40" colspan="2"><img src="images/head.png"  style="border-radius:5px" width="912" height="40" border="0" usemap="#Map"></td>
  </tr>
         </table>--%>
     
         <div style="float:left;max-width:600px; " >
             <img src="images/login_background.png" style="max-width:100%;border-radius:5px" />
         </div>
      
            <div style="background-color:#d9d9d9;padding:10px;float:right; margin-right:20px; max-width:300px;height:390px;border-radius:5px;">
            <h1>Admin Login</h1>
           <center>  <img src="images/members.png" style="max-width:140px" /></center>
           <div
             <td align="center" valign="middle">&nbsp;</td> </div>
             <div
             <td align="center" valign="middle">&nbsp;</td> </div>
             <p><center><asp:TextBox CssClass="t1" placeholder="User Name" ID="user_name" runat="server" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ControlToValidate="user_name" ForeColor="Red" 
                     ValidationGroup="a"></asp:RequiredFieldValidator> 
        
                </p><br />
             <p><center></centre><asp:TextBox CssClass="t1" placeholder="Password" ID="user_password" runat="server" TextMode="Password" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ControlToValidate="user_password" ForeColor="Red" 
                     ValidationGroup="a"></asp:RequiredFieldValidator> 
        
                </p><br />
             <p><span id="error_msg" runat="server" style="color:Red;margin-left:auto;margin-right:auto;"></span><center><asp:Button CssClass="myButton" ID="submit" runat="server" 
                    onclick ="Login" class="submit" Text="login" ValidationGroup="a" /></center></p>
         </div>
         
     </div>
 </div>
    
 
      
    
  </form>


<map name="Map"><area shape="rect" coords="655,3,907,37" href="http://www.nifrex.org">
</map></body>
</html>