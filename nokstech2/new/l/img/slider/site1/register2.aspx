<%@ Import Namespace="System.Data.sqlclient"%>
<%@ Import Namespace="System.Data"%>
<%@ Page Language="vb" runat="server" Explicit="True"%>


<SCRIPT language="vb" runat="server">
dim msg as string

		Sub LogIn(S as Object,E as EventArgs)
        
			
			
        Dim connection5q4q As SqlConnection
        Dim recordinsert5q4q As SqlCommand
        Dim searchrecord5q4q As SqlDataReader
        Dim strquery5q4q As String
        Dim strconn As String
			
        strconn = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        connection5q4q = New SqlConnection(strconn)

        connection5q4q.Open()
        strquery5q4q = "insert into user_list (full_name,e_mail,password)values ('" & full_name.Text & "','" & e_mail.text & "','" & password.text & "')"
			

        recordinsert5q4q = New SqlCommand(strquery5q4q, connection5q4q)
        searchrecord5q4q = recordinsert5q4q.ExecuteReader
        recordinsert5q4q.CommandTimeout = 0
        connection5q4q.Close()
			

        msg = "Your registration was successfully"
        Response.Write("<" & "script language=javaScript>")
        Response.Write("alert( """ & msg & """)<" & "/script>")
        Response.Redirect("members.aspx")

			
        full_name.Text = ""
        e_mail.text = ""
        password.text = ""
			
			
			
End Sub

</script>



<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>Tootenhill Lagos</title>
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
<body style="background : url(../images/bg-body.jpg) no-repeat center center;background-size:cover;">

<form runat="server" method="post">
 <div>
     <div style="margin:0 auto;max-width:900px;margin-top:5%">
         <div style="max-width:900px;height:40px">
            <a href="http://www.nifrex.org"> <img src="images/home.png" style="float:right;margin-right:75px" border="0" ></a>
         </div>
         <div style="float:left;max-width:600px">
             <img src="images/shopnow.jpg" style="max-width:100%" />
         </div>
       <center>
            <div style="background-color:#d9d9d9;padding:10px;float:left;max-width:300px;height:312px">
            <h1>Members Login</h1>
           <center>  <img src="images/members.png" style="max-width:140px" /></center>
             <p><asp:TextBox CssClass="t1" placeholder="Full Name" ID="full_name" runat="server" /></p><br />
             <p><asp:TextBox CssClass="t1" placeholder="Email Address" ID="e_mail" runat="server" /></p><br />
             <p><asp:TextBox CssClass="t1" placeholder="Password" ID="password" runat="server" TextMode="Password" /></p><br />
             <p><center><asp:Button CssClass="myButton" ID="submit" runat="server" onclick ="Login" class="submit" Text="login" /></center></p>
         </div>
           </center> 
     </div>
 </div>
    
 
      
    
  </form>


<map name="Map"><area shape="rect" coords="655,3,907,37" href="http://www.nifrex.org">
</map></body>
</html>

