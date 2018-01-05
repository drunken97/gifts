<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html>
<head>
<title>Customised gifts zone</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion Mania Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function () { $(".memenu").memenu(); });</script>
<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
</head>
<body>
    <!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
		<div class="col-md-4 world">
					
				</div>
				<div class="col-md-4 logo">
					<a href="index.aspx"><img src="images/logo.png" alt=""></a>	
				</div>
		
			<div class="col-md-4 header-left">		

					<div class="clearfix"> </div>
			</div>
				<div class="clearfix"> </div>
		</div>
		</div>
<!--//header-->
    <div class="container">
	<div class="register">
		<h1>Login</h1>
    <form id="form1" runat="server">
    <div>
    <!--Email ID-->                
 <asp:TextBox ID="lemail" Text="Email ID" runat="server" style="position:relative; left:40%; top:50%" Width="360px" class="form-control floatlabel" ForeColor="Gray" onfocus="clearWaterMark('Email ID',this);" onblur="createWaterMark('Email ID',this);"></asp:TextBox>
                   <script type="text/javascript">
                       function clearWaterMark(defaultText, textBoxControl) {
                           if (textBoxControl.value == defaultText) {
                               textBoxControl.value = "";
                               textBoxControl.style.color = "black";
                           }
                       }
                       function createWaterMark(defaultText, textBoxControl) {
                           if (textBoxControl.value == "") {
                               textBoxControl.value = defaultText;
                               textBoxControl.style.color = "gray";
                           }
                       }
                   </script>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="position:relative; left:40%; top:55%" ControlToValidate="lemail" ErrorMessage="Please enter Email ID" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                <br /><br />
    <!--//Email ID-->

    <!--Password-->
                   
                <asp:TextBox ID="lpass" runat="server" Text="Password" ForeColor="Gray" style="position:relative; left:40%; top:65%" Width="360px" class="form-control floatlabel" onblur="WaterMark(this, event);" onfocus="WaterMark(this, event);" onkeypress="myFunction(this, event)" />
         <script type="text/javascript">
             function WaterMark(txtName, event) {
                 var defaultText = "Password";

                 if (txtName.value.length == 0 & event.type == "blur") {

                     txtName.style.color = "Gray";
                     txtName.value = defaultText;
                     txtName.setAttribute("type", "input");
                 }

                 if (txtName.value == defaultText & event.type == "focus") {
                     txtName.style.color = "black";
                     txtName.value = "";
                 }
             }

             function myFunction(txtName, event) {
                 txtName.setAttribute("type", "Password");
             }
                </script>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" style="position:relative; left:40%; top:70%" ControlToValidate="lpass" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><br />
    <!--//Password-->                
            
        <asp:Button ID="Button2" runat="server" style="position:relative; left:40%; top:100%" Width="180px" Text="Login" OnClick="Button2_Click" />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" >Forget Password?</asp:LinkButton>

    </div>
    </form>
</body>
</html>
