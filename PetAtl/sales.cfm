<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>PetAtl Dry Dog Food Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Suity Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close2').on('click', function(c){
		$('.message2').fadeOut('slow', function(c){
	  		$('.message2').remove();
		});
	});	  
});
</script>

<cfquery name="Categories" datasource="UnivDB">
select distinct category from product
</cfquery>

<cfquery name="ProdbyCat" datasource="UnivDB">
select image1, productid, ProductName, Product_Desc, SalePrice, quantity from product where Category='#URL.cat#'
</cfquery>

</head>
<body>
<div class="sales">
    <div class="container">
	  <div class="header_top">
   		<div class="logo">
			<a href="index.cfm"><img src="images/logo_w.png" alt="" style="height:100px;"/></a>
		</div>	
		<div class="header-bottom-right">
	       <ul class="icon1 sub-icon1 profile_img">
					 <li><a class="active-icon c1" href="#">My Cart </a><div class="rate">0</div>
					 </li>
		      </ul>
              <div class="clearfix"></div>
          </div>
		<div class="menu">																
			<a href="#" class="right_bt" id="activator"><img src="images/menu.png" alt=""/></a>
				<div class="box" id="box">
				   <div class="box_content_center">
					   <div class="menu_box_list">
						   <ul>
							   <li><a href="index.cfm">New Arrivals</a></li>
							   <li class="active"><a href="sales.cfm">Sales</a></li> 
							   <li><a href="sales.cfm">Collection</a></li> 
							   <li><a href="about.cfm">About Us</a></li>
							   <li><a href="contact.cfm">Contact</a></li>
						   </ul>
						</div>
						<a class="boxclose" id="boxclose"><img src="images/close.png" alt=""/></a>
					  </div>                
					</div>
			                 <script type="text/javascript">
								var $ = jQuery.noConflict();
									$(function() {
										$('#activator').click(function(){
												$('#box').animate({'left':'0px'},500);
										});
										$('#boxclose').click(function(){
												$('#box').animate({'left':'-2300px'},500);
										});
									});
									$(document).ready(function(){
									
									//Hide (Collapse) the toggle containers on load
									$(".toggle_container").hide(); 
									
									//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
									$(".trigger").click(function(){
										$(this).toggleClass("active").next().slideToggle("slow");
										return false; //Prevent the browser jump to the link anchor
									});
									
									});
								</script>
			         </div> 	
			         <div class="clearfix"></div>		
		      </div>
		</div>	
</div>
<div class="about_top">
  <div class="container">
		<div class="col-md-3">
		<div class="box1">
			<ul class="box1_list">
				<cfoutput query="Categories">
				<li><a href="sales.cfm?cat=#category#">#category#</a></li>
				</cfoutput>
			</ul>
		</div>
	<ul class="box2_list">
				<li><a href="about.cfm">About Us</a></li>
				<li><a href="contact.cfm">Contact Us</a></li>
		 </ul>
		</div>
		<div class="col-md-9 content_right">
		   <div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="index.cfm" title="Go to Home Page">Home</a>&nbsp;
                       <span>&gt;</span>
                    </li>
			   	<cfoutput query="ProdbyCat" maxrows="1">
                    <li class="home">&nbsp;
                        '#URL.cat#'&nbsp;
                        <span>&gt;</span>
                    </li>
                    </cfoutput>
               </ul>
           
                <ul class="previous">
                	<li><a href="index.cfm">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			    <div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
					<div class="cbp-vm-options">
						<a href="#" class="cbp-vm-icon cbp-vm-grid cbp-vm-selected" data-view="cbp-vm-view-grid" title="grid">Grid View</a>
						<a href="#" class="cbp-vm-icon cbp-vm-list" data-view="cbp-vm-view-list" title="list">List View</a>
					</div>
					<div class="pages">
       	   </div>
					<div class="clearfix"></div>
					<ul>
						<cfoutput query="ProdbyCat">
					  <li>
							<a class="cbp-vm-image" href="single.cfm?prodid=#productid#">
							 <div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="#image1#" class="img-responsive" alt=""/>
									<div class="product_container">
									   <div class="cart-left">
										 <p class="title">#ProductName#</p>
									   </div>
									   <div class="price">$#SalePrice#</div>
									   <div class="clearfix"></div>
								     </div>		
								  </div>
			                     </div>
		                      </div>
		                    </a>
							<div class="cbp-vm-details">
								#Product_Desc#
							</div>
							
							<form action="new1.cfm" name="AddCartForm" method="post">
				   	<input type="hidden" value=#productid# name="prodidurl">
				   	<input type="hidden" value=#ProductName# name="prodnme">
				   	<input type="hidden" value="1" name="prodqty">
				   	<input type="hidden" value='#URL.cat#' name="prodcat">
					 <input class="cbp-vm-icon cbp-vm-add" type="submit" value="Add to Cart">
				  </form>
						</li>
					</cfoutput>
						
					</ul>
				</div>
			  
				<link href="css/component.css" rel='stylesheet' type='text/css' />
                <script src="js/cbpViewModeSwitch.js" type="text/javascript"></script>
                <script src="js/classie1.js" type="text/javascript"></script>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>   	
</div>   
<div class="footer">
	<div class="container">
		<img src="images/logo_w.png" alt="" style="height:100px;"/>
		<p><a href="mailto:info@mycompany.com">info@petatl.com</a></p>
		<ul class="social">
		  <li><a href="#"> <i class="fb"> </i> </a></li>
		  <li><a href="#"> <i class="tw"> </i> </a></li>
		</ul>
	</div>
</div>
</body>
</html>		