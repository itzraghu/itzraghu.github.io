<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<head>
	<title>Free Smart Store Website Template | About :: w3layouts</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
	<link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	<script src="js/script.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script> 
	<script type="text/javascript" src="js/nav.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript" src="js/nav-hover.js"></script>
	<script type="text/javascript">
		$(document).ready(function($){
			$('#dc_mega-menu-orange').dcMegaMenu({rowItems:'4',speed:'fast',effect:'fade'});
		});
	</script>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="header_top">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt="" /></a>
				</div>
				<div class="header_top_right">
					<div class="search_box">
						<form>
							<input type="text" value="Search for Products" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search for Products';}"><input type="submit" value="SEARCH">
						</form>
					</div>
					<div class="shopping_cart">
						<div class="cart">
							<a href="#" title="View my shopping cart" rel="nofollow">
								<strong class="opencart"> </strong>
								<span class="cart_title">Cart</span>
								<span class="no_product">(empty)</span>
							</a>
						</div>
					</div>
					<div class="languages">
						<div id="language" class="wrapper-dropdown" tabindex="1">EN
							<strong class="opencart"> </strong>
							<ul class="dropdown languges">					
								<li>
									<a href="#" title="Fran??ais">
										<span><img src="images/gb.png" alt="en" width="26" height="26"></span><span class="lang">English</span>
									</a>
								</li>
								<li>
									<a href="#" title="Fran??ais">
										<span><img src="images/au.png" alt="fr" width="26" height="26"></span><span class="lang">Fran??ais</span>
									</a>
								</li>
								<li>
									<a href="#" title="Espa??ol">
										<span><img src="images/bm.png" alt="es" width="26" height="26"></span><span class="lang">Espa??ol</span>
									</a>
								</li>
								<li>
									<a href="#" title="Deutsch">
										<span><img src="images/ck.png" alt="de" width="26" height="26"></span><span class="lang">Deutsch</span>
									</a>
								</li>
								<li>
									<a href="$" title="Russian">
										<span><img src="images/cu.png" alt="ru" width="26" height="26"></span><span class="lang">Russian</span>
									</a>
								</li>					
							</ul>
						</div>
						<script type="text/javascript">
							function DropDown(el) {
								this.dd = el;
								this.initEvents();
							}
							DropDown.prototype = {
								initEvents : function() {
									var obj = this;

									obj.dd.on('click', function(event){
										$(this).toggleClass('active');
										event.stopPropagation();
									});	
								}
							}

							$(function() {

								var dd = new DropDown( $('#language') );

								$(document).click(function() {
					// all dropdowns
					$('.wrapper-dropdown').removeClass('active');
				});

							});

						</script>
					</div>
					<div class="currency">
						<div id="currency" class="wrapper-dropdown" tabindex="1">$
							<strong class="opencart"> </strong>
							<ul class="dropdown">
								<li><a href="#"><span>$</span>Dollar</a></li>
								<li><a href="#"><span>???</span>Euro</a></li>
							</ul>
						</div>
						<script type="text/javascript">
							function DropDown(el) {
								this.dd = el;
								this.initEvents();
							}
							DropDown.prototype = {
								initEvents : function() {
									var obj = this;

									obj.dd.on('click', function(event){
										$(this).toggleClass('active');
										event.stopPropagation();
									});	
								}
							}

							$(function() {

								var dd = new DropDown( $('#currency') );

								$(document).click(function() {
					// all dropdowns
					$('.wrapper-dropdown').removeClass('active');
				});

							});

						</script>
					</div>
					<div class="login">
						<span><a href="login.html"><img src="images/login.png" alt="" title="login"/></a></span>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="menu">
				<ul id="dc_mega-menu-orange" class="dc_mm-orange">
					<li><a href="index.html">Home</a></li>
					<li><a href="products.html">Products</a>
						<ul>
							<li><a href="products.html">Mobile Phones</a>
								<ul>
									<li><a href="preview-2.html">Product 1</a></li>
									<li><a href="preview-3.html">Product 2</a></li>
									<li><a href="#">Product 3</a></li>
									<li><a href="#">Product 4</a></li>
									<li><a href="preview-6.html">Product 5</a></li>
									<li><a href="#">Product 6</a></li>
								</ul>
							</li>
							<li><a href="products.html">Desktop</a>
								<ul>
									<li><a href="preview.html">Product 1</a></li>
									<li><a href="preview-5.html">Product 2</a></li>
									<li><a href="preview-3.html">Product 3</a></li>
									<li><a href="#">Product 4</a></li>
									<li><a href="#">Product 5</a></li>
									<li><a href="#">Product 6</a></li>
								</ul>
							</li>
							<li><a href="products.html">Laptop</a>
								<ul>
									<li><a href="preview-2.html">Product 10</a></li>
									<li><a href="preview-5.html">Product 11</a></li>
									<li><a href="#">Product 12</a></li>
									<li><a href="#">Product 13</a></li>
								</ul>
							</li>
							<li><a href="#">Accessories</a>
								<ul>
									<li><a href="#">Product 14</a></li>
									<li><a href="#">Product 15</a></li>
								</ul>
							</li>
							<li><a href="#">Software</a>
								<ul>
									<li><a href="#">Product 16</a></li>
									<li><a href="#">Product 17</a></li>
									<li><a href="#">Product 18</a></li>
									<li><a href="#">Product 19</a></li>
								</ul>
							</li>
							<li><a href="#">Sports & Fitness</a>
								<ul>
									<li><a href="#">Product 16</a></li>
									<li><a href="#">Product 17</a></li>
									<li><a href="#">Product 18</a></li>
									<li><a href="#">Product 19</a></li>
								</ul>
							</li>
							<li><a href="#">Footwear</a>
								<ul>
									<li><a href="#">Product 16</a></li>
									<li><a href="#">Product 17</a></li>
									<li><a href="#">Product 18</a></li>
									<li><a href="#">Product 19</a></li>
								</ul>
							</li>
							<li><a href="#">Jewellery</a>
								<ul>
									<li><a href="#">Product 16</a></li>
									<li><a href="#">Product 17</a></li>
									<li><a href="#">Product 18</a></li>
									<li><a href="#">Product 19</a></li>
								</ul>
							</li>
							<li><a href="#">Clothing</a>
								<ul>
									<li><a href="#">Product 16</a></li>
									<li><a href="#">Product 17</a></li>
									<li><a href="#">Product 18</a></li>
									<li><a href="#">Product 19</a></li>
								</ul>
							</li>
							<li><a href="#">Home Decor & Kitchen</a>
								<ul>
									<li><a href="#">Product 16</a></li>
									<li><a href="#">Product 17</a></li>
									<li><a href="#">Product 18</a></li>
									<li><a href="#">Product 19</a></li>
								</ul>
							</li>
							<li><a href="#">Beauty & Healthcare</a>
								<ul>
									<li><a href="#">Product 16</a></li>
									<li><a href="#">Product 17</a></li>
									<li><a href="#">Product 18</a></li>
									<li><a href="#">Product 19</a></li>
								</ul>
							</li>
							<li><a href="#">Toys, Kids & Babies</a>
								<ul>
									<li><a href="#">Product 16</a></li>
									<li><a href="#">Product 17</a></li>
									<li><a href="#">Product 18</a></li>
									<li><a href="#">Product 19</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="products.html">Top Brands</a>
						<ul>
							<li><a href="products.html">Brand Name 1</a></li>
							<li><a href="products.html">Brand Name 2</a></li>
							<li><a href="products.html">Brand Name 3</a></li>
							<li><a href="#">Brand Name 4</a></li>
							<li><a href="#">Brand Name 5</a></li>
							<li><a href="#">Brand Name 6</a></li>
							<li><a href="#">Brand Name 7</a></li>
							<li><a href="#">Brand Name 8</a></li>
							<li><a href="#">Brand Name 9</a></li>
							<li><a href="#">Brand Name 10</a></li>
						</ul>
					</li>
					<li><a href="faq.html">Services</a>
						<ul>
							<li><a href="#">Service 1</a>
								<ul>
									<li><a href="#">Service Detail A</a></li>
									<li><a href="#">Service Detail B</a></li>
								</ul>
							</li>
							<li><a href="#">Service 2</a>
								<ul>
									<li><a href="#">Service Detail C</a></li>
								</ul>
							</li>
							<li><a href="#">Service 3</a>
								<ul>
									<li><a href="#">Service Detail D</a></li>
									<li><a href="#">Service Detail E</a></li>
									<li><a href="#">Service Detail F</a></li>
								</ul>
							</li>
							<li><a href="#">Service 4</a></li>
						</ul>
					</li>
					<li><a href="about.html">About</a></li>
					<li><a href="#">Delivery</a></li>
					<li><a href="faq.html">FAQS</a></li>
					<li><a href="contact.html">Contact</a> </li>
					<div class="clear"></div>
				</ul>
			</div>
		</div>
		<div class="main">
			<div class="content">
				<div class="section group">
					<div class="col_1_of_3 span_1_of_3">
						<h3>Who We Are</h3>
						<img src="images/about-img.jpg" alt="" />
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					</div>
					<div class="col_1_of_3 span_1_of_3">
						<h3>Our History</h3>
						<div class="history-desc">
							<div class="year"><p>1998 -</p></div>
							<p class="history">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<div class="clear"></div>
						</div>
						<div class="history-desc">
							<div class="year"><p>2001 -</p></div>
							<p class="history">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
							<div class="clear"></div>
						</div>
						<div class="history-desc">
							<div class="year"><p>2006 -</p></div>
							<p class="history">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<div class="clear"></div>
						</div>
						<div class="history-desc">
							<div class="year"><p>2010 -</p></div>
							<p class="history">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<div class="clear"></div>
						</div>
						<div class="history-desc">
							<div class="year"><p>2013 -</p></div>
							<p class="history">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
							<div class="clear"></div>
						</div>
					</div>
					<div class="col_1_of_3 span_1_of_3">
						<h3>Opportunities</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
						<div class="list">
							<ul>
								<li><a href="#">Text of the printing</a></li>
								<li><a href="#">Lorem Ipsum has been the standard</a></li>
								<li><a href="#">Dummy text ever since the 1500s</a></li>
								<li><a href="#">Unknown printer took a galley</a></li>
								<li><a href="#">Led it to make a type specimen</a></li>
								<li><a href="#">Not only five centuries</a></li>
								<li><a href="#">Electronic typesetting</a></li>
								<li><a href="#">Unchanged. It was popularised</a></li>
								<li><a href="#">Sheets containing Lorem Ipsume</a></li>
							</ul>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					</div>
				</div>
				<h2>OUR TEAM</h2>
				<div class="section group">
					<div class="grid_1_of_5 images_1_of_5">					
						<img src="images/team1.jpg" alt="" />
						<h3>Lorem Ipsum is simply </h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<img src="images/team2.jpg" alt="" />
						<h3>Lorem Ipsum is simply </h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<img src="images/team3.jpg" alt="" />
						<h3>Lorem Ipsum is simply </h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<img src="images/team4.jpg" alt="" />
						<h3>Lorem Ipsum is simply </h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<img src="images/team2.jpg" alt="" />
						<h3>Lorem Ipsum is simply </h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
				</div>
				<div>
				</div>
			</div>
		</div>
	</div>
	<?php require_once 'footer.php' ?>
	
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
	  			containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
	 		};
	 		*/
	 		
	 		$().UItoTop({ easingType: 'easeOutQuart' });
	 		
	 	});
	 </script>
	 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
	</body>
	</html>

