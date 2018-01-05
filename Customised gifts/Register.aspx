<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html>
<head>
<title>Customised gifts zone</title>

    <link rel="stylesheet" href="css/intlTelInput.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/demo.css" type="text/css" media="all">

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
		<h1>Register</h1>
		  	 <form id="form1" runat="server">
   <!--Enter Name-->                
<asp:TextBox ID="name" Text="Enter Name" runat="server" style="position:relative; left:40%; top:40%" Width="360px" class="form-control floatlabel" ForeColor="Gray" onfocus="clearWaterMark('Enter Name',this);" onblur="createWaterMark('Enter Name',this);"></asp:TextBox>
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
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="position:relative; left:40%; top:40%" ControlToValidate="name" ErrorMessage="User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
 <br /><br />
   <!--//Enter Name-->  
                                         
   <!--Email ID-->                
 <asp:TextBox ID="email" Text="Email ID" runat="server" style="position:relative; left:40%; top:50%" Width="360px" class="form-control floatlabel" ForeColor="Gray" onfocus="clearWaterMark('Email ID',this);" onblur="createWaterMark('Email ID',this);"></asp:TextBox>
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
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="position:relative; left:40%; top:55%" ControlToValidate="email" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" style="position:relative; left:40%; top:60%" ControlToValidate="email" ErrorMessage="You must enter the valid E-mail ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 
                <br /><br />
    <!--//Email ID-->

    <!--Password-->
                   
                <asp:TextBox ID="pass" runat="server" Text="Password" ForeColor="Gray" style="position:relative; left:40%; top:65%" Width="360px" class="form-control floatlabel" onblur="WaterMark(this, event);" onfocus="WaterMark(this, event);" onkeypress="myFunction(this, event)" />
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
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" style="position:relative; left:40%; top:70%" ControlToValidate="pass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><br />
    <!--//Password-->
    
    <!--Phone-->
                   <asp:TextBox ID="phone" runat="server" style="position:relative; left:35%; top:75%" Width="180px" class="form-control floatlabel"></asp:TextBox>
                   <script src="js/jquery.min.js"></script>
                   <script src="js/intlTelInput.js"></script>
                   <script src="js/defaultCountryIp.js"></script>
                   <script>
                       $("#phone").intlTelInput({
                           initialCountry:"auto",
                           geoIpLookup:function(callback){
                       $.get('http://ipinfo.io',function(){},"jsonp").always(function(resp){
                           var countryCode=(resp && resp.country) ? resp.country:"";
                           callback(countryCode);
                       });
                       },
                       utilsScript:"js/utils.js"
                       });
                   </script>
                   <br /><br />

    <!--//Phone-->
                <asp:Button ID="Button1" runat="server" style="position:relative; left:40%; top:100%" Width="180px" Text="Submit" OnClick="Button1_Click"  />&nbsp;&nbsp;
                <input id="Reset1" style="position:relative; left:40%; top:100%" Width="180px" type="reset" value="reset" />  
</form>

<!--footer-->
				<div class="clearfix"> </div>
				<p class="footer-class"> © 2018 Customised Gifts Zone. All Rights Reserved</p>
			</div>
	</div>
</div>

<!--//footer-->
</body>
</html>

