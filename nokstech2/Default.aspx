<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" EnableEventValidation="false" Inherits="login" %>




<!DOCTYPE HTML>
<html>

<head>
	<title>Login</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Triple Forms Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	
	<!-- css files -->
	<link rel="stylesheet" href="css_login/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css_login/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext"
	 rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body onload="startus()">
     <form id="form1" runat="server">



         <div class="main-bg">
		<!-- title -->
		<h1><asp:Label ID="admintext" runat="server" Text=""></asp:Label></h1>
		<!-- //title -->
		<div class="sub-main-w3">
			<div class="image-style">

			</div>
			<!-- vertical tabs -->
			<div class="vertical-tab">
				<div id="section1" class="section-w3ls">
					<input type="radio" name="sections" id="option1">
					<label  for="option1" class="icon-left-w3pvt "><span class="fa fa-user-circle" aria-hidden="true"></span>-</label>
					<article class ="nosee">
						<form action="#" method="post">
							<h3 class="legend">CRA 5.1 Login Here</h3>
							<div class="input"  >
								<span class="fa fa-envelope-o" aria-hidden="true"></span>
								 <asp:TextBox ID="username"    runat="server" type="text" placeholder="User Name"  > </asp:TextBox>
							</div>
							<div class="input">
								<span class="fa fa-key" aria-hidden="true"></span>
								<asp:TextBox ID="password" runat="server"  type="password" placeholder="Password" name="password" ></asp:TextBox>
							</div>
							<asp:Button ID="Button1" runat="server" type="submit" Text="Login  1" class="btn submit"></asp:Button>
							<a href="#" class="bottom-text-w3ls">Forgot Password?</a>
                             <asp:Button ID="Button3" runat="server" Text="Button" />
						</form>
					</article>
				</div>
              
				<div id="section2" class="section-w3ls">
					<input type="radio" name="sections" id="option2"  checked>
					<label for="option2" class="icon-left-w3pvt"><span class="fa fa-user-circle" aria-hidden="true"></span>Admin</label>
					<article>
						<div class="tg">
							<h3 class="legend">CRA 5.1 Login Here</h3>

							

							<div class="input">
								<span class="fa fa-envelope-o" aria-hidden="true"></span>
								 <asp:TextBox ID="username2" runat="server" type="text" placeholder="Company ID"  ></asp:TextBox>
							</div>


							<div class="input">
								<span class="fa fa-envelope-o" aria-hidden="true"></span>
								 <asp:TextBox ID="username1" runat="server" type="text" placeholder="User Name"  ></asp:TextBox>
							</div>


							<div class="input">
								<span class="fa fa-key" aria-hidden="true"></span>
								<asp:TextBox ID="password2" runat="server"  type="password" placeholder="Password" name="password" ></asp:TextBox>
							</div>
							<asp:Button ID="Button2" runat="server" type="submit" Text="Login" class="btn submit" OnClientClick="getus();" OnClick="Button2_Click" CausesValidation="False"/>
							<a href="#" class="bottom-text-w3ls">Forgot Password?</a>
                            </div>
					</article>
				</div>
				<div id="section3" class="section-w3ls">
					<input type="radio" name="sections" id="option3">
					<label for="option3" class="icon-left-w3pvt"><span class="fa fa-lock" aria-hidden="true"></span>Forgot Password?</label>
					<article>
						<form action="#" method="post">
							<h3 class="legend last">Reset Password</h3>
							<p class="para-style">Enter your email address below and we'll send you an email with instructions.</p>
							<p class="para-style-2"><strong>Need Help?</strong> Learn more about how to <a href="#">retrieve an existing
									account.</a></p>
							<div class="input">
								<span class="fa fa-envelope-o" aria-hidden="true"></span>
								<input type="email" placeholder="Email" name="email"  />
							</div>
							<button type="submit" class="btn submit last-btn">Reset</button>
						</form>
					</article>
				</div>
			</div>
			<!-- //vertical tabs -->
			<div class="clear"></div>
		</div>
		<!-- copyright -->
		<div class="copyright">
			<h2>&copy;  (DESIGNED: NOKS)
				<a href="" target="_blank"></a>
			</h2>
		</div>
		<!-- //copyright -->
	</div>
         </form>




	 <script type="text/javascript">

		 function getus() {
			 //alert("kola");
             var username1 = document.getElementById("username1").value;
             var username2 = document.getElementById("username2").value;
             var password2 = document.getElementById("password2").value;
             //var email2 = document.getElementById("email").value;

             //if (phone2 != "") {
             localStorage.setItem("forusername", username2);
			 localStorage.setItem("password2", password2);
             localStorage.setItem("username1", username1);
                 //localStorage.setItem("email", email2);

             //}


             //if (phone2 == "") {
             //    document.getElementById("phone").value = localStorage.getItem("phone");
             //    //document.getElementById("email").value = localStorage.getItem("email");
             //    document.getElementById("username").innerText = localStorage.getItem("username");
             //    //alert("kola");
             //}


             //if (email2 == "") {

             //    document.getElementById("email").value = Math.floor(Math.random() * 9000000000);
             //    var email3 = document.getElementById("email").value;
             //    localStorage.setItem("email", email3);
             //}

         }






         function startus() {
         

			  //alert("start1");
			 document.getElementById("username2").value = localStorage.getItem("forusername");
             document.getElementById("username1").value = localStorage.getItem("username1");
             document.getElementById("password2").value = localStorage.getItem("password2");
             //alert("start2");
         }









     </script>

    </body> 

</html>