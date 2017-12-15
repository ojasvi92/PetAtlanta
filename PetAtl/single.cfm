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
<!----details-product-slider--->
<!-- Include the Etalage files -->
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
						jQuery(document).ready(function($){
			
							$('#etalage').etalage({
								thumb_image_width: 300,
								thumb_image_height: 400,
								
								show_hint: true,
								click_callback: function(image_anchor, instance_id){
									alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
								}
							});
							// This is for the dropdown list example:
							$('.dropdownlist').change(function(){
								etalage_show( $(this).find('option:selected').attr('class') );
							});

					});
				</script>
				<!----//details-product-slider--->	
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
			   </script>
			   <cfquery name="Categories" datasource="UnivDB">
select distinct category from product
</cfquery>	


<cfquery name="singleprod" datasource="UnivDB">
select * from product where productid =#URL.prodid#
</cfquery>	


<cfquery name="prodrev" datasource="UnivDB">
select  (c.CustName || '(' || r.rating || '/5): ' || r.comments) as UserReview from review r
inner join customer c on c.custid=r.custid
inner join product p on p.productid=r.productid
where r.productid=#URL.prodid#
</cfquery>


<cfparam name="url.crtid" type="numeric" default="0" />
<cfset cartid=url.crtid />

</head>
<body>
<div class="sales">
    <div class="container">
	  <div class="header_top">
   		<div class="logo">
			<a href="index.cfm"><img src="images/logo_w.png" alt="" style="height:100px;"/></a>
		</div>	
		<div class="header-bottom-right">
			<cfoutput query="singleprod">
	       <ul class="icon1 sub-icon1 profile_img">
					 <li><a class="active-icon c1" href="">My Cart </a><div class="rate">1</div>
						<ul class="sub-icon1 list">
						  <h3>Recently added items (1)</h3>
						  <div class="shopping_cart">
							  <div class="cart_box">
							   	 <div class="message">
							   	     <div class="alert-close"> </div> 
					                <div class="list_img"><img src="#image1#" class="img-responsive" alt=""/></div>
								    <div class="list_desc"><h4><a href="">#productname#</a></h4>1 x<span class="actual">
		                             $#saleprice#</span></div>
		                              <div class="clearfix"></div>
	                              </div>
	                            </div>
	                        </div>
	                        <div class="total">
	                        	<div class="total_left">CartSubtotal : </div>
	                        	<div class="total_right">$#saleprice#</div>
	                        	<div class="clearfix"> </div>
	                        </div>
	                    </cfoutput>
                            <div class="login_buttons">
							  <cfoutput><div class="check_button"><a href="checkout.cfm?crtid=#cartid#">Check out</a></div></cfoutput>
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
                       <a href="index.cfm" title="Go to Home Page">Home</a>
                       <span>&gt;</span>
                    </li>
                   <cfoutput query="singleprod" maxrows="1">
                    <li class="home">&nbsp;
                        #category#&nbsp;
                        <span>&gt;</span>
                    </li>
                    </cfoutput>
                    <cfoutput query="singleprod" maxrows="1">
                    <li class="home">&nbsp;
                        #productname#&nbsp;
                        <span>&gt;</span>
                    </li>
                    </cfoutput>
                    
                </ul>
                <ul class="previous">
                	<li><a href="index.cfm">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   <cfoutput query="singleprod">
			   <div class="singel_right">
			     <div class="labout span_1_of_a1">
				<!-- start product_slider -->
				     <ul id="etalage">
							<li>
								<a href="optionallink.cfm">
									<img class="etalage_thumb_image" src="#image1#" class="img-responsive" />
									<img class="etalage_source_image" src="#image1#" class="img-responsive" />
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image" src="#image2#" class="img-responsive" />
								<img class="etalage_source_image" src="#image2#" class="img-responsive" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="#image3#" class="img-responsive" />
								<img class="etalage_source_image" src="#image3#" class="img-responsive" />
							</li>
					
							<div class="clearfix"> </div>
						</ul>
					<!-- end product_slider -->
			  </div>
			  
			  <div class="cont1 span_2_of_a1">
				<h1> #productname#</h1>
				<div class="price_single">
				  <span class="reducedfrom">$#mrp#</span>
				  <span class="actual">$#saleprice#</span>
				</div>
				<h2 class="quick">Quick Overview:</h2>
				<p class="quick_desc">#product_desc#</p>
			    <ul class="size">
					<h3>Rating</h3>
					<li>#rating#</li>
				</ul>
				<ul class="product-qty">
				   <span>Quantity:</span>
				   <select>
					 <option>1</option>
					 <option>2</option>
					 <option>3</option>
					 <option>4</option>
					 <option>5</option>
					 <option>6</option>
				   </select>
			    </ul>
			    <div class="btn_form">
				   <form action="new.cfm" name="AddCartForm" method="post">
				   	<input type="hidden" value=#productid# name="prodidurl">
				   	<input type="hidden" value=#productname# name="prodnme">
				   	<input type="hidden" value=#quantity# name="prodqty">

					 <input type="submit" value="Add to Cart" title="">
				  </form>
				</div>
			</div>
		
			<div class="clearfix"></div>
		   </div>
		   <div class="sap_tabs">	
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Product Description</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Reviews</span></li>
							  <div class="clear"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
									<div class="facts">
									  <ul class="tab_list">
									  </cfoutput>
									  	<cfoutput query="singleprod">
									  	<li>#product_desc#</li>
									  	</cfoutput>
									  </ul>           
							        </div>
							     </div>	
							      <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="facts">
									  <ul class="tab_list">
									   <cfoutput query="prodrev">
									  	<li>#UserReview#</li></cfoutput>
									  	
									  </ul>           
							        </div>
							     </div>	
							 </div>
					      </div>
					 </div>	
					 
					 <h3 class="like">You Might Also Like</h3>        			
				     <ul id="flexiselDemo3">
						<li><img src="/PetAtl/images/products/10.1.png" class="img-responsive"/><div class="grid-flex"><a href="#">Syenergy 2mm</a><p>$ 85</p></div></li>
						<li><img src="/PetAtl/images/products/11.1.png" class="img-responsive"/><div class="grid-flex"><a href="#">Surf Yoke</a><p>$ 50</p></div></li>
						<li><img src="/PetAtl/images/products/8.1.png" class="img-responsive"/><div class="grid-flex"><a href="#">Salty Daiz</a><p>$ 99</p></div></li>
						<li><img src="/PetAtl/images/products/7.1.png" class="img-responsive"/><div class="grid-flex"><a href="#">Cheeky Zane</a><p>$ 85</p></div></li>
						<li><img src="/PetAtl/images/products/11.1.png" class="img-responsive"/><div class="grid-flex"><a href="#">Synergy</a><p>$ 87</p></div></li>
				     </ul>
				    <script type="text/javascript">
					 $(window).load(function() {
						$("#flexiselDemo3").flexisel({
							visibleItems: 3,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
					    	responsiveBreakpoints: { 
					    		portrait: { 
					    			changePoint:480,
					    			visibleItems: 1
					    		}, 
					    		landscape: { 
					    			changePoint:640,
					    			visibleItems: 2
					    		},
					    		tablet: { 
					    			changePoint:768,
					    			visibleItems: 3
					    		}
					    	}
					    });
					    
					});
				   </script>
				   <script type="text/javascript" src="js/jquery.flexisel.js"></script>
				   
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