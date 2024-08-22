<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineBooking/onlinebookin.Master" AutoEventWireup="true" CodeBehind="HotelList.aspx.cs" Inherits="ECCVWebsite.OnlineBooking.HotelList" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   


    	
<div class="container container_12">
	<!-- Header -->
	<div class="grid_12">
		<!-- Logo container -->
	
		
	</div>
	<!-- End of Header -->
	
	<!-- Left column -->

	<div class="col-sm-4" id="leftcolumn">
		<div class="box radius">
		<div class="padded">
		<div id="LabTesting">

<h2 class="headline radius">Find hotel by City</h2><label>Enter City</label><br />   
     <asp:TextBox ID="txtCity" Runat="server" 
     Width="270px" ></asp:TextBox><br /><br />
        <asp:Button ID="btnFindHotel" Runat="server" Text="Find Hotel" 
                class="btn btn-custom radius fr"    />

</div></div>
<br /><br />

<div class="padded">
		<div id="Div1">

<h2 class="headline radius">Find hotel by Name</h2><label>Enter Hotel Name</label><br />   
     <asp:TextBox ID="txtHotel" Runat="server" 
    Width="270px" ></asp:TextBox><br />
    <br /><br />
        <asp:Button ID="btnRoomsAvailable" Runat="server" Text="Check" 
                class="btn btn-custom radius fr"   />

</div></div>
<br /><br />

<div class="padded">
		<div id="Div2">

<h2 class="headline radius">Subscribe a newsletter</h2><label>Enter email</label><br />   
     <asp:TextBox ID="txtEmail" Runat="server" ValidateRequestMode="Disabled"    Width="270px" ></asp:TextBox><br />
    <br /><br />
        <asp:Button ID="btnEmail" Runat="server" Text="Subscribe" class="btn btn-custom radius fr"  />

</div></div>
<br />
<br />

			<!-- Search form -->
			<div class="padded">
				<h2 class="headline radius"><b>Search</b> Hotels</h2>
				
					<!-- calendar image container -->
					<span style="display:none;"><img class="trigger" id="trigger" alt="" src="img/blank.gif" /></span>
					<fieldset class="radius">
						<p>
							<label class="" for="destination">Where are you going?</label><br/>
							<input type="text" id="destination" class="full" value="" name="destination"/>
						</p>
						<p>
							<label class="" for="startdate">Check in</label><br/>
							<input type="text" id="startdate" class="" value="" name="startdate"/>
							<input type="hidden" name="sd_timestamp" id="sd_timestamp" />
						</p>
						<p>
							<label class="" for="enddate">Check out</label><br/>
							<input type="text" id="enddate" class="" value="" name="enddate"/>
							<input type="hidden" name="ed_timestamp" id="ed_timestamp" /> <span class="nights"></span>
						</p>
						<p><input type="checkbox" id="flexible" class="" value="1" name="flexible"/> <label class="choice" for="flexible">My dates are flexible</label></p>
						<p>
							<label class="" for="adults">How many people?</label><br/>
							Adults <select id="adults" name="adults">
								<option value="1" selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
							Children <select id="children" name="children">
								<option value="0" selected="selected">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</p>
						<hr class="thin" />
						<p>
							<label class="" for="sortOrder">Sorted by</label><br/>
							<select id="sortOrder" name="sortOrder">
								<option title="Sort by price - low to high" value="PRICE_ASC">Price - low to high</option>
								<option title="Sort by price - low to high" value="PRICE_DESC">Price - high to low</option>
								<option title="Sort by star rating - high to low" value="STAR_RATING_DESC">Star rating - high to low</option>
								<option title="Sort by star rating - low to high" value="STAR_RATING_ASC">Star rating - low to high</option>
								<option title="Sort by guest rating" value="GUEST_RATING_ASC">Guest rating</option>
							</select>
						</p>
						<input type="submit" class="btn btn-custom radius fr" value="Search &raquo;" />
					</fieldset>
				
			</div>
			<!-- End of Search form -->
			
			<!-- Refine your search boxes -->
			<div class="padded">
				<h2 class="gray radius">Refine your search:</h2>

				<div class="content-box radius">
					<div class="header">Stars</div>
					<div class="section">
						<table class="full">
							<tbody>
								<tr>
									<td><a href="#">1 *</a></td>
									<td class="tr"><small>11 hotels</small></td>
								</tr>
								<tr>
									<td><a href="#">2 **</a></td>
									<td class="tr"><small>2 hotels</small></td>
								</tr>
								<tr>
									<td><a href="#">3 ***</a></td>
									<td class="tr"><small>21 hotels</small></td>
								</tr>
								<tr class="selected">
									<td>4 ****</td>
									<td class="tr"><a href="#" title="uncheck">x</a></td>
								</tr>
								<tr>
									<td><a href="#">5 *****</a></td>
									<td class="tr"><small>3 hotels</small></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="content-box radius">
					<div class="header">Price Range ($)</div>
					<div class="section">
						<table class="full">
							<tbody>
								<tr>
									<td><a href="#">0 - 49</a></td>
									<td class="tr"><small>3 hotels</small></td>
								</tr>
								<tr class="selected">
									<td>50 - 99</td>
									<td class="tr"><a href="#" title="uncheck">x</a></td>
								</tr>
								<tr>
									<td><a href="#">100 - 149</a></td>
									<td class="tr"><small>2 hotels</small></td>
								</tr>
								<tr>
									<td><a href="#">150 - 199</a></td>
									<td class="tr"><small>12 hotels</small></td>
								</tr>
								<tr>
									<td><a href="#">200+</a></td>
									<td class="tr"><small>11 hotels</small></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="content-box radius">
					<div class="header">Hotel Type</div>
					<div class="section">
						<table class="full">
							<tbody>
								<tr>
									<td><a href="#">Apartment</a></td>
									<td class="tr"><small>1 hotel</small></td>
								</tr>
								<tr>
									<td><a href="#">Guest accommodation</a></td>
									<td class="tr"><small>51 hotels</small></td>
								</tr>
								<tr>
									<td><a href="#">Hotel</a></td>
									<td class="tr"><small>29 hotels</small></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End of Refine your search boxes -->

			<!-- Google map -->
			<div class="padded">
				<h2 class="gray radius">Map</h2>
				<div id="map_canvas" style="height:282px"></div>
				<a href="#">Enlarge map</a>
			</div>
			<!-- End of Google map -->
		</div>
		<div class="">&nbsp;</div>
		<!-- Money exchange box -->
		<div class="box radius">
			<div class="padded">
				<h2 class="gray radius">Money Exchange</h2>
			
					<fieldset class="radius">
						<p>
							<input type="text" id="value_from_amount" class="" value="" name="value_from_amount"/>
							<select id="currency_from">
								<option value="EUR" selected="selected">EUR</option>
								<option value="USD">USD</option>
								<option value="GBP">GBP</option>
								<option value="CHF">CHF</option>
								<option value="CAD">CAD</option>
							</select>
						</p>
						<p>
							<input type="text" id="value_to_amount" class="" value="" name="value_to_amount" disabled="disabled" />
							<select id="currency_to">
								<option value="EUR">EUR</option>
								<option value="USD" selected="selected">USD</option>
								<option value="GBP">GBP</option>
								<option value="CHF">CHF</option>
								<option value="CAD">CAD</option>
							</select>
						</p>
						<a href="#" onclick="return false;" class="btn radius small">Calculate</a>
					</fieldset>
						
			</div>
		</div>
		<!-- End of Money exchange box -->
		<div class="">&nbsp;</div>
	</div>
	<!-- End of Left column -->
	
	<!-- Right column -->
	<div class='col-sm-8 searchpanel'>
		<h3 class="">81 Hotels found, 48 Available</h3>
		
		<p><span class="fr"><a href="#">&lt; Previous page</a> | <a href="#">Next page &gt;</a></span> <b>Showing 1 – 10</b></p>
		<p class="box padded">
			Sort by: <b>price (low to high)</b> &middot; <a href="#">price (high to low)</a> &middot; <a href="#">popularity</a> &middot; <a href="#">stars (1..5)</a> &middot;  <a href="#">stars (5..1)</a> &middot; <a href="#">review score</a>
		</p>
		
		<!-- Search item -->
		<div class="infopanel padded">
			<a class="previewimg nyroModal fl" href="img/hotels/room-1.jpg" title="Hotel Name"><img src="img/hotels/room-1t.jpg" alt="" /></a>
			<small class="fr tr"><a href="#">13 reviews</a><br /><b>6.9</b> / 10</small>
			<h3><a href="hotel.aspx">Hotel Vital Resort</a> <img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /></h3>
			<div class="address">Cierna Voda 611, Shangai [ <a href="print-map.aspx">Show on map</a> ]</div>
			<p>Hotel Vital Resort, with online availability, direct booking and best room prices . The impressive vital resort hotel is situated north-east of Shangai  on the edge of a nature reserve, 10 minutes from the centre and 5 minutes from the airport. Choos<a href="hotel.aspx">more &raquo;</a></p>
			<table class="roomlist full">
				<thead>
					<tr>
						<th class="tl w13">Available room types</th>
						<th class="tc w13">Persons</th>
						<th class="tr w13">Rate</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">Single room</a> <span class="label labelred">Last room</span></td>
						<td class="tc">1</td>
						<td class="tr">from <strong class="price">$59.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Double room</a></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price">$74.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Twin room</a></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price">$74.99</strong></td>
					</tr>
				</tbody>
			</table>
			<div class="clear">&nbsp;</div>
		</div>
		<hr class="thin"/>
		<!-- End of Search item -->
		
		<!-- Search item -->
		<div class="infopanel padded odditem">
			<a class="previewimg nyroModal fl" href="img/hotels/room-2.jpg" title="Hotel Name"><img src="img/hotels/room-2t.jpg" alt="" /></a>
			<small class="fr tr"><a href="#">13 reviews</a><br /><b>6.9</b> / 10</small>
			<h3><a href="hotel.aspx">Hotel Monasterio</a> <img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /></h3>
			<div class="address">Av. Salaverry 2599, , Lima [ <a href="print-map.aspx">Show on map</a> ]</div>
			<p>Hotel Monasterio has 150 guestrooms, 20 junior suites, 1 suite deluxe,8 presidential suites and 10 royal suites. Facilities at Hotel Monasterio include 3 banquet and meeting rooms, a bar, lounge, business center, clothing and gift shop....<a href="hotel.aspx">more &raquo;</a></p>
			<table class="roomlist full">
				<thead>
					<tr>
						<th class="tl w13">Available room types</th>
						<th class="tc w13">Persons</th>
						<th class="tr w13">Rate</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">Single room</a></td>
						<td class="tc">1</td>
						<td class="tr">from <strong class="price">$59.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Double room</a> <span class="label labelgreen">Discount</span></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price"><span>$79.99</span> $74.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Twin room</a></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price">$74.99</strong></td>
					</tr>
				</tbody>
			</table>
			<div class="clear">&nbsp;</div>
		</div>
		<hr class="thin"/>
		<!-- End of Search item -->
		
		<!-- Search item -->
		<div class="infopanel padded">
			<a class="previewimg nyroModal fl" href="img/hotels/room-3.jpg" title="Hotel Name"><img src="img/hotels/room-3t.jpg" alt="" /></a>
			<small class="fr tr"><a href="#">13 reviews</a><br /><b>6.9</b> / 10</small>
			<h3><a href="hotel.aspx">Park Hotel</a> <img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /></h3>
			<div class="address">Calle Ruinas 42, Cusco[ <a href="print-map.aspx">Show on map</a> ]</div>
			<p>Located in the most attractive business and residential district of Cusco. Its unique location provides easy access to important financial institutions and major corporations as well as boutiques, restaurants, and nightlife. Our exclusive Hotel's combines... <a href="hotel.aspx">more &raquo;</a></p>
			<table class="roomlist full">
				<thead>
					<tr>
						<th class="tl w13">Available room types</th>
						<th class="tc w13">Persons</th>
						<th class="tr w13">Rate</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">Single room</a> <span class="label labelred">Only 2 rooms left</span></td>
						<td class="tc">1</td>
						<td class="tr">from <strong class="price">$59.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Double room</a></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price">$74.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Twin room</a></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price">$74.99</strong></td>
					</tr>
				</tbody>
			</table>
			<div class="clear">&nbsp;</div>
		</div>
		<hr class="thin"/>
		<!-- End of Search item -->

		<!-- Search item -->
		<div class="infopanel padded odditem">
			<a class="previewimg nyroModal fl" href="img/hotels/room-4.jpg" title="Hotel Name"><img src="img/hotels/room-4t.jpg" alt="" /></a>
			<small class="fr tr"><a href="#">13 reviews</a><br /><b>6.9</b> / 10</small>
			<h3><a href="hotel.aspx">Hotel Pearl</a> <img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /></h3>
			<div class="address">Paita, , Rue De Gadji [ <a href="print-map.aspx">Show on map</a> ]</div>
			<p>Be welcomed at the Best Western Premier Paita , Spacious layout of all rooms with magnificent views of the surrounding countryside in a very quiet area like a home,Rooms and Suites with balcony or terrace, sea or garden view and it combines both..... <a href="hotel.aspx">more &raquo;</a></p>
			<table class="roomlist full">
				<thead>
					<tr>
						<th class="tl w13">Available room types</th>
						<th class="tc w13">Persons</th>
						<th class="tr w13">Rate</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">Single room</a></td>
						<td class="tc">1</td>
						<td class="tr">from <strong class="price">$59.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Double room</a></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price">$74.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Twin room</a></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price">$74.99</strong></td>
					</tr>
				</tbody>
			</table>
			<div class="clear">&nbsp;</div>
		</div>
		<hr class="thin" />
		<!-- End of Search item -->
		
		<!-- Search item -->
		<div class="infopanel padded">
			<a class="previewimg nyroModal fl" href="img/hotels/room-5.jpg" title="Hotel Name"><img src="img/hotels/room-5t.jpg" alt="" /></a>
			<small class="fr tr"><a href="#">13 reviews</a><br /><b>6.9</b> / 10</small>
			<h3><a href="hotel.aspx">Hotel Mont Palace</a> <img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /></h3>
			<div class="address">53 Cocotiers, Douala [ <a href="print-map.aspx">Show on map</a> ]</div>
			<p>This Hotel is Situated in the heart of the city centre, within walking distance of the commercial centre and Government ministries , with its 320-rooms Single rooms is an international hotel in Douala. Well known for its high level ... <a href="#">more &raquo;</a></p>
			<table class="roomlist full">
				<thead>
					<tr>
						<th class="tl w13">Available room types</th>
						<th class="tc w13">Persons</th>
						<th class="tr w13">Rate</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">Single room</a></td>
						<td class="tc">1</td>
						<td class="tr">from <strong class="price">$59.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Double room</a></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price">$74.99</strong></td>
					</tr>
					<tr>
						<td><a href="#">Twin room</a></td>
						<td class="tc">2</td>
						<td class="tr">from <strong class="price">$74.99</strong></td>
					</tr>
				</tbody>
			</table>
			<div class="clear">&nbsp;</div>
		</div>
		<hr class="thin" />
		<!-- End of Search item -->

		<p class="box padded"><span class="fr"><a href="#">Next page &gt;</a></span><a href="#">&lt; Previous page</a></p>
		
		<p>&nbsp;</p>
		<!-- Shortcut buttons -->
		<div class="fr">
			<button class="box radius" title="Print this page" onclick="window.print();"><img src="img/print.gif" alt="Print" /></button>
			<button class="box radius" title="Email to a friend"><img src="img/email.gif" alt="Email" /></button>
			<button class="box radius" title="Bookmark"><img src="img/bookmark.gif" alt="Bookmark" /></button>
		</div>
		<!-- End of Shortcut buttons -->
		
		<div class="clear">&nbsp;</div>
	
	</div>
	
	<p>&nbsp;</p>
	<div class="clear">&nbsp;</div>
	
</div>
<!-- End of Right column -->

<!-- Subfooter -->
<div id="subfooter">
	<div class="container_12 padded">
		<div class='grid_12'>
			<h5 class="tc">We guarantee the lowest online rate!</h5>
		</div>
		<div class="clear">&nbsp;</div>
	</div>
</div>
<!-- End of Subfooter -->

<!-- Footer -->
<div id="footer">
	<div class="container_12 padded">
		<div class="grid_3">
			<h3>Online Booking</h3>
		<p>
							Copyright &copy; 2012 - <a href="http://localhost/secureprogrammer/" onclick="window.open(this.href); return false;">Secure Programmer</a> - All rights reserved. 
							</p>
			<p class="small">Book online or call: <b>1-800-123-986563</b></p>
			<a href="http://twitter.com"><img src="img/social/twitter.png" alt="twitter" /></a> 
			<a href="http://facebook.com"><img src="img/social/facebook.png" alt="facebook" /></a> 
			<a href="http://flickr.com"><img src="img/social/flickr.png" alt="flickr" /></a>
			<a href="http://youtube.com"><img src="img/social/youtube.png" alt="YouTube" /></a>
			<a href="http://feebburner.com"><img src="img/social/rss.png" alt="RSS" /></a>
			
		</div>
		<div class='grid_3'>
			<h3>Suppliers, Affiliates, Media</h3>
			<ul>
				<li><a href="Contact.aspx">Add Hotel</a></li>
				<li><a href="contact.aspx">Affiliate With Us</a></li>
				<li><a href="about-us.aspx">Promote With Us</a></li>
				<li><a href="patners.aspx">Travel Agents</a></li>
				<li><a href="about-us.aspx">Press Office</a></li>
			</ul>
		</div>
		<div class='grid_3'>
			<h3>About</h3>
			<ul>
				<li><a href="about-us.aspx">About Us</a></li>
				<li><a href="patners.aspx">Partners</a></li>
				<li><a href="patners.aspx">Customer Service</a></li>
				<li><a href="faq.aspx">FAQ</a></li>
				<li><a href="terms-conditions.aspx">Terms &amp; Conditions</a></li>
				<li><a href="terms-conditions.aspx">Privacy Statement</a></li>

			</ul>
		</div>
		<div class='grid_3'>
			<h3>Affiliate/Partner Login</h3>
		
				<p>
					<label class="" for="email">Email</label><br/>
					<input type="text" id="email" class="full" value="" name="email"/>
				</p>
				<p>
					<label class="" for="password">Password</label><br/>
					<input type="password" id="password" class="full" value="" name="password"/>
				</p>
				<p>
					<input type="checkbox" id="remember" class="" value="1" name="remember" />
					<label class="choice" for="remember">Remember me</label>
				</p>
				<input type="submit" class="btn radius fr" value="Sign in &raquo;" />
			
		</div>
		<div class="clear">&nbsp;</div>
	</div>
</div>
<!-- End of Footer -->

<!-- Scroll to top link -->
<a href="#" id="totop" class="radius" title="back to top"><img src="img/top.png" alt="back to top" /></a>


</asp:Content>
