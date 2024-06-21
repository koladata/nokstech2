<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta  name="viewport" content="width=device-width, initial-scale=1.0>" />
    <link href="login.css" rel="stylesheet" />
    <title>login</title>
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

        <div class="maindiv">
              <div class="div">Login to your account</div>
             <asp:TextBox CssClass="textbox" ID="TextBox1" placeholder="Enter Full Name" runat="server"></asp:TextBox>
            <asp:TextBox CssClass="textbox" ID="TextBox2" placeholder="Phone Number" runat="server"></asp:TextBox>
        </div>


    </div>
    </form>
</body>
</html>
