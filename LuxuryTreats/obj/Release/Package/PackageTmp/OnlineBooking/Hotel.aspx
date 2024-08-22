<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/OnlineBooking/onlinebookin.Master"  CodeBehind="Hotel.aspx.cs" Inherits="ECCVWebsite.OnlineBooking.Hotel"  EnableEventValidation="false"%>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container container_12">
	<!-- Header -->
	<div class="col-sm-12">
		<!-- Logo container -->
	
		
		<!-- Aside menu -->
		
		<!-- End of Aside menu -->
		
		<!-- Main navigation -->
		
		<!-- End of Main navigation -->
		
	</div>
	<!-- End of Header -->
	
	<!-- Left column -->
	
	<!-- End of Left column -->
	
	<!-- Right column -->	
	<div class='col-sm-8 searchpanel'>		
		<h1 class="">Hotel Name <img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /><img src="img/star.png" alt="*" /></h1>
		<input type="submit" class="btn btn-custom radius fr" value="Book Now!" onclick="tabs.tabs('select', 0); Site.scroll_to_hash('#availability'); return false;" />
		
		<p><em>Address, City, Country</em></p>
		
		<!-- Tabs -->
		<div id="tabs">
			<ul>
				<li><a href="#tabs-1">Hotel Overview</a></li>
				<li><a href="#tabs-2">Guest Reviews</a></li>
				<li><a href="#maptab">Show on Map</a></li>
			</ul>
			<!-- Tab 1: Hotel Overview -->
			<div id="tabs-1">
				<div class="infopanel padded">
					<span class="padded fl tc score"><b>8.40</b><br/><a href="#" onclick="tabs.tabs('select', 1); return false;"><small>32 reviews</small></a></span>
					<p class="tj"><img src="img/hotels/room-1.jpg" alt="" class="w12 big" />Set among the woodlands 10km from Boulogne sur Mer, its beach, old town centre, shopping and fishing port in Hesdin, stands Hotel Clev. The romantic architecture of 17th century , the Beautiful bourgeois manor house is nestled in a beautiful seven hectare park. The peaceful ambiance of the Hotel Clev is reflected in each of the bedrooms, the farm-house or the cottages .In the kitchen the refined yet simple cuisine enchants the senses with its authentic flavour..the sensation of being "at home" will pervade you. Every detail of the decoration and the unique personality of each room captures the harmony of the setting.  Spend a moment in comfortable bar or in front of the fire . with the romantic park ,Immerse yourself in the gentle way of life, and newly equipped gym. Venture into the Boulonnais where the old town of Boulogne and its surprising panoramas of countryside perched on the sea will only reinforce your feeling of well-being. In the nearby area: the forest of Boulogne, Nausicaa - the aquarium, Hardelot and Le Touquet - beaches, magnificent golf courses including sports facilities and town centers .</p>
					
					<div class="tc box padded">
						<a href="img/hotels/room-1.jpg" class="nyroModal" title="Hotel Name" rel="gal"><img class="small" src="img/hotels/room-1t.jpg" alt="" /></a>
						<a href="img/hotels/room-2.jpg" class="nyroModal" title="Hotel Name" rel="gal"><img class="small" src="img/hotels/room-2t.jpg" alt="" /></a>
						<a href="img/hotels/room-3.jpg" class="nyroModal" title="Hotel Name" rel="gal"><img class="small" src="img/hotels/room-3t.jpg" alt="" /></a>
						<a href="img/hotels/room-4.jpg" class="nyroModal" title="Hotel Name" rel="gal"><img class="small" src="img/hotels/room-4t.jpg" alt="" /></a>
						<a href="img/hotels/room-5.jpg" class="nyroModal" title="Hotel Name" rel="gal"><img class="small" src="img/hotels/room-5t.jpg" alt="" /></a>
					</div>
					
					<h6 id="availability">Availability</h6>
					<div class="padded">
						<p>Available rooms from Sat 24 Jul 2010, to Sun 25 Jul 2010 [ <a href="#" onclick="$('#changedates').show(); return false;">Change dates</a> ]</p>
						<p>Most recent booking for this hotel was yesterday at 19:12 from Czech Republic</p>
					</div>
					<form name="changedates" id="changedates" method="get" action="" style="display:none;">
						<fieldset class="box">
							<p class="fl">
								<label class="" for="startdate_change">Check-in</label><br/>
								<input type="text" id="startdate_change" class="" value="" name="startdate_change"/>
								<input type="hidden" name="sd_timestamp_change" id="sd_timestamp_change" />
							</p>
							<p class="fl">
								<label class="" for="enddate_change">Check-out</label><br/>
								<input type="text" id="enddate_change" class="" value="" name="enddate_change"/>
								<input type="hidden" name="ed_timestamp_change" id="ed_timestamp_change" />
							</p>
							<p class="fl">
								<label class="" for="number_change">Persons</label><br/>
								<select id="number_change" name="number_change">
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
							</p>
							<div class="clear"></div>
							<input type="submit" class="btn radius small" value="Check availability" /> or <a href="#" onclick="$('#changedates').hide(); return false;">close</a>
						</fieldset>
					</form>
					<table class="full box">
						<tbody>
							<tr>
								<td class="w12 padded"><b class="big">Double bed room</b><br /><small><a href="#" onclick="$('#roomid_1').toggle(); return false;">Details &raquo;</a></small></td>
								<td class="w12 padded tr">price from (person/day): <span class="price"><em>$29.99</em></span></td>
							</tr>
							<tr style="display:none;" id="roomid_1" class="oddbox">
								<td class="padded" colspan="2">
									<p class="small">
										<a class="previewimg nyroModal" title="Hotel Name: Double bed room" href="img/hotels/room-1.jpg"><img src="img/hotels/room-1t.jpg" alt="" class="fl" /></a>
										<b>Room Facilities:</b> Shower, Bath, Safety Deposit Box, TV, Telephone, Air Conditioning, Balcony, Radio, Toilet, Satellite TV, Cable TV, Tea/Coffee Maker, Hairdryer, Iron, Refrigerator, Work Desk, DVD Player, Microwave, Dishwasher, Washing Machine, Kitchen<br />
										<b>Room Size:</b> 110 square metres<br />
										<b>Bed Size(s):</b> 1 Extra large double bed
									</p>
									<hr class="thin" />
									<b>Bed and breakfast (person/day)</b>
									<table class="full roomlist">
										<thead>
											<tr>
												<th class="tc w14">Persons</th>
												<th class="tc w14">Days</th>
												<th class="tc w12" colspan="2">Rate</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="tc">1</td>
												<td class="tc">1</td>
												<td class="tr"><span class="price">$49.99</span></td>
												<td class="tl"><asp:Button ID="Button7" CssClass="radius" runat="server" Text="Book"  OnClick="Btn_Book_Click"/></td>
											</tr>
											<tr>
												<td class="tc">2</td>
												<td class="tc">1</td>
												<td class="tr"><span class="price">$41.99</span></td>
                                                <asp:HiddenField ID="hdf_roomtype" runat="server"  Value="Delux"/>
                                                <asp:HiddenField ID="hdf_noofperson" runat="server" Value="2"/>
                                                <asp:HiddenField ID="hdf_cost" runat="server" Value="49"/>
												<!--<td class="tl"><input type="submit" class="radius" value="Book" /></td> -->
                                                <td class="tl"><asp:Button ID="Btn_Book" CssClass="radius" runat="server" Text="Book"  OnClick="Btn_Book_Click"/></td>
											</tr>
										</tbody>
									</table>
									<b>Half board (person/day)</b>
									<table class="full roomlist">
										<thead>
											<tr>
												<th class="tc w14">Persons</th>
												<th class="tc w14">Days</th>
												<th class="tc w12" colspan="2">Rate</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="tc">1</td>
												<td class="tc">1</td>
												<td class="tr"><span class="price">$49.99</span></td>
												<td class="tl"><asp:Button ID="Button4" CssClass="radius" runat="server" Text="Book"  OnClick="Btn_Book_Click"/></td>
											</tr>
											<tr>
												<td class="tc">2</td>
												<td class="tc">1</td>
												<td class="tr"><span class="price">$41.99</span></td>
												<td class="tl"><asp:Button ID="Button5" CssClass="radius" runat="server" Text="Book" OnClick="Btn_Book_Click" /></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr class="dashed">
								<td class="w12 padded"><b class="big">Suite</b><br /><small><a href="#" onclick="$('#roomid_2').toggle(); return false;">Details &raquo;</a></small></td>
								<td class="w12 padded tr">price from (person/day): <span class="price"><em>$39.99</em></span></td>
							</tr>
							<tr style="display:none;" id="roomid_2" class="oddbox">
								<td class="padded" colspan="2">
									<p class="small">
										<a class="previewimg nyroModal" title="Hotel Name: Suite" href="img/hotels/room-2.jpg"><img src="img/hotels/room-2t.jpg" alt="" class="fl" /></a>
										<b>Room Facilities:</b> Shower, Bath, Safety Deposit Box, TV, Telephone, Air Conditioning, Balcony, Radio, Toilet, Satellite TV, Cable TV, Tea/Coffee Maker, Hairdryer, Iron, Refrigerator, Work Desk, DVD Player, Microwave, Dishwasher, Washing Machine, Kitchen<br />
										<b>Room Size:</b> 110 square metres<br />
										<b>Bed Size(s):</b> 1 Extra large double bed
									</p>
									<hr class="thin" />
									<b>Bed and breakfast (person/day)</b>
									<table class="full roomlist">
										<thead>
											<tr>
												<th class="tc w14">Persons</th>
												<th class="tc w14">Days</th>
												<th class="tc w12" colspan="2">Rate</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="tc">1</td>
												<td class="tc">1</td>
												<td class="tr"><span class="price">$49.99</span></td>
												<td class="tl"><asp:Button ID="Button6" CssClass="radius" runat="server" Text="Book" OnClick="Btn_Book_Click"/></td>
											</tr>
											<tr>
												<td class="tc">2</td>
												<td class="tc">1</td>
												<td class="tr"><span class="price">$41.99</span></td>
												<td class="tl"><asp:Button ID="Button1" CssClass="radius" runat="server" Text="Book" OnClick="Btn_Book_Click" /></td>
											</tr>
										</tbody>
									</table>
									<b>Half board (person/day)</b>
									<table class="full roomlist">
										<thead>
											<tr>
												<th class="tc w14">Persons</th>
												<th class="tc w14">Days</th>
												<th class="tc w12" colspan="2">Rate</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="tc">1</td>
												<td class="tc">1</td>
												<td class="tr"><span class="price">$49.99</span></td>
												<td class="tl"><asp:Button ID="Button2" CssClass="radius" runat="server" Text="Book" OnClick="Btn_Book_Click" /></td>
											</tr>
											<tr>
												<td class="tc">2</td>
												<td class="tc">1</td>
												<td class="tr"><span class="price">$41.99</span></td>
												<td class="tl"><asp:Button ID="Button3" CssClass="radius" runat="server" Text="Book"  OnClick="Btn_Book_Click"/></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
					<p class="padded"><b>You will pay in the hotel's preferred currency (AED) after your stay at the hotel. The exchange rate is subject to fluctuations.</b></p>
					
					<!-- Hotel Facilities -->
					<h6>Hotel Facilities</h6>
					<table class="full">
						<tbody>
							<tr>
								<td class="w14 padded"><b>General</b></td>
								<td class="w34 padded">Restaurant, Bar, 24-Hour Front Desk, Newspapers, Terrace, Non-Smoking Rooms, Rooms/Facilities for Disabled Guests, Elevator, Express Check-In/Check-Out, Safety Deposit Box, Soundproofed Rooms, Design Hotel, Baggage Storage, Ski Storage, Airconditioning.</td>
							</tr>
							<tr class="dashed">
								<td class="w14 padded"><b>Activities</b></td>
								<td class="w34 padded">Tennis Court, Sauna, Fitness Center, Golf Course (within 2 miles), Skiing, Spa &amp; Health Club, Massage, Ski School, Outdoor Swimming Pool. </td>
							</tr>
							<tr class="dashed">
								<td class="w14 padded"><b>Services</b></td>
								<td class="w34 padded">Room Service, Meeting/Banquet Facilities, Airport Shuttle, Business Center, Babysitting/Child Services, Laundry, Dry Cleaning, Barber/Beauty Shop, VIP Room Facilities, Breakfast in the Room, Ironing Service, Currency Exchange, Shoe Shine, Car Rental, Tour Desk, Fax/Photocopying. </td>
							</tr>
						</tbody>
					</table>
					<!-- End of Hotel Facilities -->
					
					<!-- Hotel Policies -->
					<h6>Hotel Policies</h6>
					<table class="full">
						<tbody>
							<tr>
								<td class="w14 padded"><b>Check-in</b></td>
								<td class="w34 padded">From 15:00 hours </td>
							</tr>
							<tr class="dashed">
								<td class="w14 padded"><b>Check-out</b></td>
								<td class="w34 padded">Until 12:00 hours </td>
							</tr>
							<tr class="dashed">
								<td class="w14 padded"><b>Pets</b></td>
								<td class="w34 padded">Pets are NOT allowed.</td>
							</tr>
						</tbody>
					</table>
					<!-- End of Hotel Policies -->
					
					<!-- Important Information -->
					<h6>Important Information</h6>
					<div class="padded">
						<p>A security deposit or pre-authorization on the credit card is taken upon arrival. Full payment of the stay is required upon departure or during the stay. Late check-out fees apply after 12pm.</p>
						<p>Transportation to/from the airport can be arranged at an additional cost in a luxury limousine with prior request.</p>
						<p>Some nationalities can get an entry permit stamped in their passport upon arrival at the airport. Please check your visa requirements before traveling.</p>
						<p>This hotel can arrange a visa for you after your reservation is made. Please contact them via phone or email (details provided in your confirmation).</p>
					</div>
					<!-- End of Important Information -->
					
				</div>
			</div>
			<!-- End of Tab 1: Hotel Overview -->
			
			<!-- Tab 2: Guest Review -->
			<div id="tabs-2">
				<div class="padded">
					<table class="full">
						<tbody>
							<tr>
								<td class="w14 tc">
									<div class="box radius padded tc score">Total Score<br /><b class="color-green">8.40</b></div>
								</td>
								<td class="w34">
									<!-- Progress bars -->
									<table class="full">
										<tbody>
											<tr>
												<td class="tr">Clean&nbsp;</td>
												<td><div class="progress progress-green"><span style="width:88%"><b>8.80</b></span></div></td>
											</tr>
											<tr>
												<td class="tr">Comfort&nbsp;</td>
												<td><div class="progress progress-green"><span style="width:88%"><b>8.80</b></span></div></td>
											</tr>
											<tr>
												<td class="tr">Location&nbsp;</td>
												<td><div class="progress progress-green"><span style="width:89%"><b>8.90</b></span></div></td>
											</tr>
											<tr>
												<td class="tr">Services&nbsp;</td>
												<td><div class="progress progress-green"><span style="width:86%"><b>8.60</b></span></div></td>
											</tr>
											<tr>
												<td class="tr">Staff&nbsp;</td>
												<td><div class="progress progress-yellow"><span style="width:74%"><b>7.40</b></span></div></td>
											</tr>
											<tr>
												<td class="tr">Value for money&nbsp;</td>
												<td><div class="progress progress-red"><span style="width:71%"><b>7.10</b></span></div>	</td>
											</tr>
										</tbody>
									</table>
									<!-- End of Progress bars -->
								</td>
							</tr>
						</tbody>
					</table>
					
					<!-- Guest Reviews -->
					<h6>Individual Guest Reviews (32)</h6>
					
					<hr class="thin" />
					<div class="padded">
						<table class="full">
							<tbody>
								<tr>
									<td class="w14 padded">
										<b>John</b><br/><small>July 20, 2010</small>
									</td>
									<td class="w12 padded">
										<p class="comment_good">this hotel was excellent value. The staff were wonderful, breakfast wonderful, room wonderful and location excellent. </p>
										<p class="comment_bad">the only problem was that there was no restaurant open in the evening but this may have been because it was winter, I am not sure. </p>
									</td>
									<td class="w14 tc padded">
										<span class="baloon-green"><b>9.00</b></span>
									</td>
								</tr>
								<tr class="dashed">
									<td class="w14 padded">
										<b>Adam</b><br/><small>July 19, 2010</small>
									</td>
									<td class="w12 padded">
										<p class="comment_good">room with terrace on 7th foor </p>
										<p class="comment_bad">Champaign on arrival was promised in the room, was not there, needed to remind them </p>
									</td>
									<td class="w14 tc padded">
										<span class="baloon-red"><b>7.50</b></span>
									</td>
								</tr>
								<tr class="dashed">
									<td class="w14 padded">
										<b>Pat</b><br/><small>July 19, 2010</small>
									</td>
									<td class="w12 padded">
										<p class="comment_good">Price was relatively less than the Hotels around and also Location was convenient.  </p>
										<p class="comment_bad">Rooms were very compact and would have loved some fresh fruit and a variety of fresh bread for breakfast especially as the fresh food market is so close! .</p>
									</td>
									<td class="w14 tc padded">
										<span class="baloon-green"><b>9.00</b></span>
									</td>
								</tr>
								<tr class="dashed">
									<td class="w14 padded">
										<b>Morphy</b><br/><small>July 10, 2010</small>
									</td>
									<td class="w12 padded">
										<p class="comment_good">Receptionists are very helpful with recommendations on travelling, evening shows, restaurants. Speak English good enough. Roommates work well. </p>
										<p class="comment_bad">Very small bed, Wifi was promised but did not work. </p>
									</td>
									<td class="w14 tc padded">
										<span class="baloon-red"><b>7.50</b></span>
									</td>
								</tr>
								<tr class="dashed">
									<td class="w14 padded">
										<b>peter</b><br/><small>July 10, 2010</small>
									</td>
									<td class="w12 padded">
										<p class="comment_good">Great location,, good staff, good breakfast,Low Price compared to Other Hotels </p>
										<p class="comment_bad">Washing up liquid in the kitchenette would have been useful </p>
									</td>
									<td class="w14 tc padded">
										<span class="baloon-green"><b>10.00</b></span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- End of Guest Reviews -->
					
					<hr class="thin" />
					<p><span class="fr"><a href="#">Next page &gt;</a></span><a href="#">&lt; Previous page</a></p>
				</div>
			</div>
			<!-- End of Tab 2: Guest Review -->
			
			<!-- Tab 3: Google map -->
			<div id="maptab">
				<div id="map_canvas" style="height:310px;"></div>
				<div id="pano" style="height: 310px;"></div>
			</div>
			<!-- End of Tab 3: Google map -->

		</div> 
		<!-- End of Tabs -->
		
		<!-- Shortcut buttons -->
		<div class="fr">
			<button class="box radius" title="Print this page" onclick="window.print();"><img src="img/print.gif" alt="Print" /></button>
			<button class="box radius" title="Email to a friend"><img src="img/email.gif" alt="Email" /></button>
			<button class="box radius" title="Bookmark"><img src="img/bookmark.gif" alt="Bookmark" /></button>
		</div>
		<!-- End of Shortcut buttons -->
		
		<div class="clear">&nbsp;</div>
		<p>&nbsp;</p>
		
	</div>
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
			<form name="login" action="">
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
			</form>
		</div>
		<div class="clear">&nbsp;</div>
	</div>
</div>
<!-- End of Footer -->

<!-- Scroll to top link -->
<a href="#" id="totop" class="radius" title="back to top"><img src="img/top.png" alt="back to top" /></a>




  </asp:Content>

