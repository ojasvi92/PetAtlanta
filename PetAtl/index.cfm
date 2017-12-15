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
<meta name="keywords" content="PetAtl Dry Dog Food" />
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


</head>
<body>
<div class="index-banner">
    <div class="container">
	  <div class="header_top">
   		<div class="logo">
			<a href="index.cfm"><img src="images/logo.png" alt="" style="height:100px;"/></a>
		</div>	
		<div class="header-bottom-right">
	       <ul class="icon1 sub-icon1 profile_img">
					 <li><a class="active-icon c1" href="#">My Cart </a><div class="rate">0</div>
						<ul class="sub-icon1 list">
						  <h3>Recently added items (0)</h3>
						  <div class="shopping_cart">
	                        </div>
	                        <div class="total">
	                        	<div class="total_left">CartSubtotal : </div>
	                        	<div class="total_right">$0.00</div>
	                        	<div class="clearfix"> </div>
	                        </div>
                            <div class="login_buttons">
							  <div class="check_button"><a href="checkout.cfm">Check out</a></div>
							  <div class="login_button"><a href="login.cfm">Login</a></div>
							  <div class="clearfix"></div>
						    </div>
					      <div class="clearfix"></div>
						</ul>
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
							   <li><a href="contact.cfm">Contact Us</a></li>
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
	    <div class="wmuSlider example1">
			    <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	<div class="banner-wrap">
						<h1>Live.</h1>
					</div>
				 </article>
				 <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	<div class="banner-wrap">
						<h1>Love.</h1>
					</div>
				 </article>
				  <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	<div class="banner-wrap">
						<h1>Bark.</h1>
					</div>
				 </article>
		  </div>
                  <script src="js/jquery.wmuSlider.js"></script> 
					<script>
       				     $('.example1').wmuSlider();         
   					</script> 	           	      
</div>
<div class="content_top">
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
		   <div class="content_right-box">
			<div class="col-md-8">
			  <div class="grid1">
			    <h5>DRY DOG FOOD</h5>
   				  <div class="view view-first">
                     <img src="images/products/1.1.png" class="img-responsive" alt=""/>
   				       <a href="sales.cfm?cat=0-1%20YRS"><div class="mask">
   			            <h3>Quick Look</h3>
                        <p>-----Or----</p>
                        <h4>Add To Basket</h4>
                      </div></a>
                   </div> 
               <h6>$499</h6>
			  </div>
			   <div class="grid1 box4">
			    <h5>PEDIGREE</h5>
   				  <div class="view view-first">
                     <img src="images/products/1.2.png" class="img-responsive" alt=""/>
                     <a href="sales.cfm?cat=0-1%20YRS"><div class="mask mask1">
   			            <h3>Quick Look</h3>
                        <p>-----Or----</p>
                        <h4>Add To Basket</h4>
                      </div></a>
   				  </div> 
               <h6>$59</h6>
			  </div>
			</div>
			<div class="col-md-4">
			  <a href="sales.cfm?cat=0-1%20YRS"><div class="grid2">
				  <div class="view view-first">
                     <img src="images/products/2.1.png" class="img-responsive" alt=""/>
   				      <h5>TUNA</h5>
   				      <h6>$55</h6>
   			      </div> 
               </a></div>
			   <a href="sales.cfm?cat=0-1%20YRS"><div class="grid2 span_1">
				  <div class="view view-first">
                     <img src="images/products/2.2.png" class="img-responsive" alt=""/>
   				      <h5>CHICKEN</h5>
   				      <h6>$244</h6>
   			      </div> 
              </div></a>
              <a href="sales.cfm?cat=0-1%20YRS"> <div class="grid2 span_1">
				  <div class="view view-first">
                     <img src="images/products/3.1.png" class="img-responsive" alt=""/>
   				      <h5>BEEF</h5>
   				        <h6>$199</h6>
   			      </div> 
              </div></a>
			</div>
			<div class="clearfix"> </div>
		   </div>
		   <div class="box3">
			   <div class="col-md-4">
			    <a href="sales.cfm?cat=0-1%20YRS"> <div class="grid3 view view-first">
			   	   <img src="images/products/3.2.png" class="img-responsive" alt=""/>
			   	</div></a>
			   </div>
			   <div class="col-md-4">
			     <a href="sales.cfm?cat=0-1%20YRS"><div class="grid3  view view-first">
			   	   <img src="images/products/4.1.png" class="img-responsive" alt=""/>
			   	 </div></a>
			   </div>
			   <div class="col-md-4">
			     <a href="sales.cfm?cat=1-2%20YRS"><div class="grid3 view view-first">
			   	   <img src="images/products/4.2.png" class="img-responsive" alt=""/>
			   	 </div></a>
			   </div>
			   <div class="clearfix"> </div>
			</div>
			<div class="box4">
				<div class="col-md-6">
				 <div class="grid1">
				    <h5>PORK</h5>
	   				  <div class="view view-first">
	                     <img src="images/products/5.1.png" class="img-responsive" alt=""/>
	   				       <a href="sales.cfm?cat=1-2%20YRS"><div class="mask mask2">
	   			            <h3>Quick Look</h3>
	                        <p>-----Or----</p>
	                        <h4>Add To Basket</h4>
	                      </div></a>
	                   </div> 
		               <h6>$199</h6>
				  </div>
				</div>
				<div class="col-md-6">
				   <div class="grid1">
				    <h5>TURKEY</h5>
	   				  <div class="view view-first">
	                     <img src="images/products/5.2.png" class="img-responsive" alt=""/>
	   				       <a href="sales.cfm?cat=1-2%20YRS"><div class="mask mask2">
	   			            <h3>Quick Look</h3>
	                        <p>-----Or----</p>
	                        <h4>Add To Basket</h4>
	                      </div></a>
	                   </div> 
		               <h6>$295</h6>
				  </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"> </div>
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