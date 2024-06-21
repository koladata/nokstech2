<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta  name="viewport" content="width=device-width, initial-scale=1.0>" />
    <link href="Register.css" rel="stylesheet" />
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="topdiv">
    <div class="logo">
        <div class="logobus">
                     <img class="img" src="images/logomain4.0.png" /></div>
                     <div class="newtext">NOKS</div>
                     <div class="newtext1">POS</div>
                 </div>
    </div>
        <div class="maindiv">
            <div class="div">Create Your NoksPos Account.</div>
            <asp:TextBox CssClass="textbox" ID="TextBox1" placeholder="Enter Full Name" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="textbox" ID="TextBox2" placeholder="Phone Number" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="textbox" ID="TextBox3" placeholder="Choose Username" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="textbox" ID="TextBox4" placeholder="Enter Email Address" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="textbox" ID="TextBox5" placeholder="Password" runat="server"></asp:TextBox>
            <div class="housing">
            <div class="divbox">
                <div class="divbox1">
                    <img class="image" src="images/correct.png" />
                    <div class="text">At least 8 characters</div>
                </div>
                
                 <div class="divbox1">
                     <img class="image" src="images/correct.png" />
                    <div class="text">At least 1 uppercase letter</div>
                 </div>
                 <div class="divbox1">
                     <img class="image" src="images/correct.png" />
                    <div class="text">At least 1 special character</div>
                 </div>
            </div>




              <div class="divbox2">
                <div class="divbox1">
                     <img class="image" src="images/correct.png" />
                    <div class="text">At least 1 lowercase letter</div>
                </div>
                
                 <div class="divbox1">
                      <img class="image" src="images/correct.png" />
                    <div class="text">At least 1 numerical number</div>
                 </div>
               
            </div>

            </div>

            <div class="divbox3">Register</div>
            <div class="housingbox">
            <div class="divbox4">Already Have An Account?</div>
            <a class="divbox5" href="http://noksworld-003-site22.btempurl.com/" target="_blank" rel="noopener noreferrer">Login</a>
            </div>
        </div>
    </form>
</body>
</html>
