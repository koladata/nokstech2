<%@ Import Namespace="System.Data.sqlclient"%>
<%@ Import Namespace="System.Data"%>
<%@ Page Language="vb" runat="server" Explicit="True"%>


<SCRIPT language="vb" runat="server">
dim msg as string



		 


Public Sub Savein(S as Object,E as EventArgs)

			
			
			
			
			
			Dim connection5q4q As SqlConnection
            Dim recordinsert5q4q As SqlCommand
            Dim searchrecord5q4q As SqlDataReader
            Dim strquery5q4q As String
			Dim strconn as string 
			
            strconn=System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
			connection5q4q = new SqlConnection(StrConn)

            connection5q4q.Open()
            strquery5q4q = "insert into user_list (full_name,e_mail,password)values ('" & full_name.text & "','" & e_mail.text & "','" & password.text & "')"
			

            recordinsert5q4q = New SqlCommand(strquery5q4q, connection5q4q)
            searchrecord5q4q = recordinsert5q4q.ExecuteReader
            recordinsert5q4q.CommandTimeout = 0
        connection5q4q.Close()
        
        
        Dim connection5q4qx As SqlConnection
        Dim recordinsert5q4qx As SqlCommand
        Dim searchrecord5q4qx As SqlDataReader
        Dim strquery5q4qx As String
        Dim strconnx As String
			
        strconnx = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        connection5q4qx = New SqlConnection(strconnx)

        connection5q4qx.Open()
        strquery5q4qx = "insert into tbl_User_Parameter_Value (full_name,user_name,password)values ('" & full_name.Text & "','" & e_mail.Text & "','" & password.Text & "')"
			

        recordinsert5q4qx = New SqlCommand(strquery5q4qx, connection5q4qx)
        searchrecord5q4qx = recordinsert5q4qx.ExecuteReader
        recordinsert5q4qx.CommandTimeout = 0
        connection5q4qx.Close()
        
			

			msg ="Your registration was successfully"
			Response.Write("<" & "script language=javaScript>") 
			Response.Write("alert( """ & msg & """)<" & "/script>") 
			response.redirect("members.aspx")

			
			full_name.text = ""
			e_mail.text = ""
			password.text = ""
			
			
		End Sub


</script>



<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Tootenhill Lagos</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
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






        .style1
        {
            height: 29px;
        }
        .style2
        {
            height: 27px;
        }






-->
    </style>
</head>
<body style="background-image:url('images/26.jpg')">

<form runat="server" method="post">
 <div>
    <div style="margin:0 auto;max-width:900px;">
      <img src="images/logo.png" width="202px"  height="50px"/>
     <p align="right" style="margin-top:-50px">
       
     <asp:TextBox style=" border:none;border-radius:10px; width:300px; " placeholder="Search" ID="txt_search" runat="server"></asp:TextBox>
         <asp:Button ID="btn_search" 
             style=" border:none;border-radius:5px; width:100px; margin-top:-5px; " Text="Search" 
             runat="server" CssClass="myButton"  />
        </p>
    
    </div>
 <div style="margin:0 auto;max-width:900px;margin-top:5%">
         <div style="max-width:900px;height:40px">
         <div style="width:70px;height:20px;border-radius:5px;background-color:Green;padding:5px; vertical-align: top;"> 
             <a href="index.aspx"> 
         <table style="width:100%">
         <tr style="width:100%">
         <td style="width:30%">
          <img src="images/back_icon.png" width="20px" /</td>
         <td style="width:70%;text-align:right;">
           <span style="color: #FFFFFF;margin-top:-15px" > Home</span></td>
         </tr>
         </table>
         ></a>
           
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
             <img src="images/shopnow.jpg" style="max-width:100%;border-radius:5px" />
         </div>
      
            <div style="background-color:white;padding:0px;float:right; margin-right:20px; max-width:241px;height:335px; border-radius:5px; width: 296px;">
                <table width="241" height="100%" border="0" style="margin-left:auto;margin-right:0px; border-radius:5px;margin-top:0px;">
      <tr>
        <td colspan="2" align="center" class="style1">
           
                <h1 class="navy-blue">
                                Sign Up
                            </h1>
          </td>
      </tr>
      <tr>
	   
        <td width="18" height="46" align="left" valign="middle">&nbsp;</td>
        <td width="213" align="center" valign="middle"><asp:TextBox CssClass="t1" placeholder="Full Name" ID="full_name" runat="server" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ControlToValidate="full_name" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator> 
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="*" ControlToValidate="full_name" ForeColor="white" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        
          </td>
      </tr>
      <tr>
        <td rowspan="4" align="center" valign="middle">&nbsp;</td>
        <td height="44" align="center" valign="middle"><asp:TextBox CssClass="t1" placeholder="Email Address" ID="e_mail" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ControlToValidate="e_mail" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="*" ControlToValidate="e_mail" ForeColor="white" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        
        </td>
      </tr>
      <tr>
        <td height="45" align="center" valign="middle"><asp:TextBox CssClass="t1" placeholder="Password" ID="password" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="*" ControlToValidate="password" ForeColor="Red" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="*" ControlToValidate="password" ForeColor="white" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        
        </td>
      </tr>
      <tr>
       <td height="45" align="center" valign="middle"><asp:TextBox CssClass="t1" placeholder="Confirm Password" ID="TextBox1" runat="server" TextMode="Password" />
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red" 
               ValidationGroup="a"></asp:RequiredFieldValidator>
           <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="*" ForeColor="Red" ControlToCompare="password" 
               ControlToValidate="TextBox1" ValidationGroup="a"></asp:CompareValidator>
       </td>
      </tr>
      <tr>
       <td align="center" valign="middle" class="style2"></td>
        
       <p> 
            <a href="members.aspx" style="text-decoration:none" > 
            <font size="2" color="red">
            <h5><center>Already a member? Login</h5>
            </font>
            </a>
            </p>
           
      </tr>
      <tr>
      
        <td align="center" valign="middle">&nbsp;</td>
        
        <td align="center" valign="middle"><asp:Button CssClass="myButton" ID="submit" 
                runat="server" onclick ="Savein" class="submit" Text="Register" 
                ValidationGroup="a" /></td>
      </tr>
      <tr>
        <td align="center" valign="middle">&nbsp;</td>
        <td align="center" valign="middle">&nbsp;</td>
      </tr>
    </table>
        
         </div>
         
     </div>
 </div>
    
<%--<table width="904" height="510" border="0" style="margin-left:auto;margin-right:auto;">
  <tr>
    <td height="105" colspan="2"><label>
  
    </label></td>
  </tr>
 <tr >
    <td height="40" colspan="2"><img src="images/head.png"  style="border-radius:5px" width="912" height="40" border="0" usemap="#Map"></td>
  </tr>
  <tr>
    <td width="633" align="left" id="back3" valign="top">&nbsp;</td>
    <td width="261" valign="top" id="back4"><table width="241" height="303" border="0" style="margin-left:auto;margin-right:0px; background-color:White; border-radius:5px;margin-top:15px;">
      <tr>
        <td height="100" colspan="2" align="center">
           
                <h1 class="navy-blue">
                                Sign Up
                            </h1>
          </td>
      </tr>
      <tr>
	   
        <td width="18" height="46" align="left" valign="middle">&nbsp;</td>
        <td width="213" align="center" valign="middle"><asp:TextBox CssClass="t1" placeholder="Full Name" ID="full_name" runat="server" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ControlToValidate="full_name" ForeColor="Red"></asp:RequiredFieldValidator> 
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="*" ControlToValidate="full_name" ForeColor="white"></asp:RequiredFieldValidator>
        
          </td>
      </tr>
      <tr>
        <td height="56" rowspan="4" align="center" valign="middle">&nbsp;</td>
        <td height="44" align="center" valign="middle"><asp:TextBox CssClass="t1" placeholder="Email Address" ID="e_mail" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ControlToValidate="e_mail" ForeColor="Red"></asp:RequiredFieldValidator>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="*" ControlToValidate="e_mail" ForeColor="white"></asp:RequiredFieldValidator>
        
        </td>
      </tr>
      <tr>
        <td height="45" align="center" valign="middle"><asp:TextBox CssClass="t1" placeholder="Password" ID="password" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="*" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="*" ControlToValidate="password" ForeColor="white"></asp:RequiredFieldValidator>
        
        </td>
      </tr>
      <tr>
       <td height="45" align="center" valign="middle"><asp:TextBox CssClass="t1" placeholder="Confirm Password" ID="TextBox1" runat="server" TextMode="Password" />
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
           <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="*" ForeColor="Red" ControlToCompare="password" 
               ControlToValidate="TextBox1"></asp:CompareValidator>
       </td>
      </tr>
      <tr>
       <td height="45" align="center" valign="middle">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="middle">&nbsp;</td>
        <td align="center" valign="middle"><asp:Button CssClass="myButton" ID="submit" runat="server" onclick ="Savein" class="submit" Text="Register" /></td>
      </tr>
      <tr>
        <td align="center" valign="middle">&nbsp;</td>
        <td align="center" valign="middle">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  </table>--%>
  </form>


<map name="Map"><area shape="rect" coords="655,3,907,37" href="http://www.nifrex.org">
</map></body>
</html>