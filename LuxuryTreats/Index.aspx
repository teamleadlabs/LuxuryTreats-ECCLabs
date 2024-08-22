<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ECCVWebsite.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceholder" runat="server">



    <div class=""></div>
    <div class="row">
        <div class="col-sm-12">
            <div class="notice" runat="server" id="divNotice" visible="false">
                <asp:Literal runat="server" EnableViewState="False" ID="labelMessage">Hello! Please log in to view your private customer data</asp:Literal>
            </div>

            <asp:Panel ID="PanelError" runat="server" Visible="false">
                <div class="error">
                    <asp:Literal runat="server" EnableViewState="False" ID="labelError" Text="Your are not logged in.  Please authenticate before proceeding."></asp:Literal>
                </div>
            </asp:Panel>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 main-bg4">
            <div class="col-sm-4" style="background-color: rgba(0,0,0,0.6); margin-top: 12%; padding: 20px;">

                <div class="form-group">
                    <label for="email" style="font-weight: normal; font-size: 15px; color: #ffffff;">User Name:</label>
                    <asp:TextBox ID="txt_email" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="pwd" style="font-weight: normal; font-size: 15px; color: #ffffff;">Password:</label>

                    <asp:TextBox ID="txt_password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="checkbox" style="color: #ffffff;">
                    <label>
                        <input type="checkbox" />
                        Remember me</label>
                </div>

                <asp:Button ID="btn_login" class="btn btn-warning" runat="server" Text="Login" OnClick="btn_login_Click" />

            </div>
        </div>


    </div>
    <br />
    <br />
    <div class="row">

        <div class="col-sm-4 sub-img1">
            <h4 class="sub-absolute">Carlton Hotel<br />
                Singapore</h4>

        </div>

        <div class="col-sm-4 sub-img3">
            <h4 class="sub-absolute" style="color: #000;">Four Seasons Hotel
                <br />
                Sydney</h4>
        </div>
        <div class="col-sm-4 sub-img2">
            <h4 class="sub-absolute">Chatrium Hotel Riverside
                <br />
                Bangkok</h4>
        </div>


    </div>
    <div class="row">
        <div style="margin-top: 2%;">
            <div class="wrapper pad_bot2">
                <div class="col-sm-3 nopadding">
                    <img src="images/59071265_y@2x.jpeg" alt="image" class="pull-left width2" />
                </div>
                <div class="col-sm-9">
                    <p class="pad_bot1">
                        <strong class="color3" style="font-family: Arial;">Atlantis The Palm</strong><br />
                        Situated on an amazing private beach and man-made peninsula, Palm Island, Atlantis The Palm is a five-star hotel offering travellers a vacation experience of a lifetime.

Needless to say, basic provisions such as TVs and en-suite bathrooms come standard, as do gulf or island views and a balcony. Extras vary between rooms and suites and can range from small comforts like brand-name toiletries to opulent separate lounges and bedrooms.

Guests are spoilt for choice when it comes to ways to relax: have a spa day, enjoy the water park, spend time in the salon. Break a sweat at the tennis courts, or stroll through the aquarium. The day (and night) is yours.

Atlantis The Palm has a diverse collection of 23 restaurants on site that are open to all guests staying at this resort.

If you have time to spend outside of the resort, the mainland can be reached in 12 minutes by car, where the rest of Dubai lies in wait.

                    </p>
                    <a href="HotelList.aspx" class="btn btn-custom radius frpull-left" style="color: #ffffff;">Search For Hotels</a><br />
                    <br />
                </div>

            </div>

            <div class="clearfix"></div>
            <div class="wrapper pad_bot2">
                <div class="col-sm-3 nopadding">
                    <img src="images/228095296_x.jpeg" alt="image" class="pull-left width2" />
                </div>
                <div class="col-sm-9">
                    <p class="pad_bot1">
                        <strong class="color3" style="font-family: Arial;">Hyatt Centric Times Square New York</strong><br />
                        Sleep chic at Hyatt Centric Times Square New York in the heart of the theatre district.

The George Wong designed rooms have floor-to-ceiling windows and pop-art lounge chairs. Rooms come equipped flat screen TV with cable or satellite, refrigerator, coffee machine, and dual line phones. Walk-in showers and deluxe toiletries are included in the en suite bathrooms.

Hyatt Centric Times Square New York has on hand a fitness centre, Timeless - Marilyn Monroe Spa, a concierge service, and meeting and event rooms.

t45 restaurant serves American bistro cuisine, and the rooftop lounge Bar 54 is the highest in the Big Apple, serving up unique cocktails and Hudson River views.

Steps away from Times Square and Broadway, the hotel is close to famous Manhattan landmarks, such as fashionable Bryant Park, Rockefeller Center, the New York Library, and the Empire State Building. Grand Central Station is just 10 minutes away by foot.

                    </p>
                    <a href="HotelList.aspx" class="btn btn-custom radius frpull-left" style="color: #ffffff;">Search For Hotels</a><br />
                    <br />
                </div>

            </div>
            <div class="clearfix"></div>
            <div class="wrapper pad_bot2">
                <div class="col-sm-3 nopadding">
                    <img src="images/179561230_l.jpeg" alt="image" class="pull-left width2" />
                </div>
                <div class="col-sm-9">
                    <p class="pad_bot1">
                        <strong class="color3" style="font-family: Arial;">Pan Pacific Manila</strong><br />
                        Stay rejuvenated at Manila’s best luxury hotel

Nestled in the heart of a thriving metropolis is an elegant urban retreat that is ranked among the region’s finest by Condé Nast Traveler. Voted as the city’s best luxury accommodation by TripAdvisor, Pan Pacific Manila delivers an immersive experience that will refresh your senses.

The calm, modern elegance of our Pan Pacific hotel in Manila eases the mind and refreshes the senses. Famed for personal and effortless service, this five star hotel is a place where tradition meets modernity.

The Pan Pacific Manila hotel is centrally located in Malate, eight kilometres from the international airport with convention, exhibition and business centres nearby. Situated in the historic Spanish Quarter, the hotel offers easy access to many cultural highlights and great restaurants in Manila. Expect a memorable luxury experience when you stay at our delightful hotel.

                    </p>
                    <a href="HotelList.aspx" class="btn btn-custom radius frpull-left" style="color: #ffffff;">Search For Hotels</a><br />
                    <br />
                </div>

            </div>
            <div class="clearfix"></div>
            <div class="wrapper pad_bot2">
                <div class="col-sm-3 nopadding">
                    <img src="images/16988426_y@2x.jpeg" alt="image" class="pull-left width2" />
                </div>
                <div class="col-sm-9">
                    <p class="pad_bot1">
                        <strong class="color3" style="font-family: Arial;">Pullman Paris Centre Bercy</strong><br />
                        A light-filled business hotel in a lively neighbourhood - what more could we want? Within easy reach of central Paris, train stations and airports, the Pullman Paris Bercy is adjacent to all the restaurants, shops and cinemas in Bercy Village. Just finishing a meeting? Have a light meal or a glass of wine without leaving the hotel.
                    </p>
                    <a href="HotelList.aspx" class="btn btn-custom radius frpull-left" style="color: #ffffff;">Search For Hotels</a><br />
                    <br />
                </div>

            </div>
            <div class="clearfix"></div>
            <div class="wrapper pad_bot2">
                <div class="col-sm-3 nopadding">
                    <img src="images/8573572_y@2x.jpeg" alt="image" class="pull-left width2" />
                </div>
                <div class="col-sm-9">
                    <p class="pad_bot1">
                        <strong class="color3" style="font-family: Arial;">Radisson Hotel Los Angeles Midtown At Usc</strong><br />
                        The upmarket Radisson Hotel Los Angeles Midtown at USC is just one street away from the University of Southern California and provides a range of accommodation options.

Rooms are decorated in a contemporary style and include en-suite bathrooms, air conditioning, flat screen cable TV, hairdryer, coffee maker, desk and chair, free Wi-Fi and room service. Upgraded suites also include kitchenettes.

Radisson Hotel Los Angeles Midtown at USC features a 24-hour front desk and concierge, fitness center and business center, both 24-hours, heated outdoor pool, hot tub and onsite parking.

McKay's restaurant and bar lounge serves a variety of breakfast, lunch and dinner options in a casual and comfortable setting. The hotel also features an onsite pizzeria.

The hotel is four miles from Walt Disney Concert Hall and the Museum of Contemporary Art. Los Angeles Memorial Coliseum, Los Angeles Convention Center and Los Angeles International Airport are all within easy reach.

                    </p>
                    <a href="HotelList.aspx" class="btn btn-custom radius frpull-left" style="color: #ffffff;">Search For Hotels</a><br />
                    <br />
                </div>

            </div>



        </div>
    </div>

    <div class="row">


        <!-- Subfooter -->
        <div id="subfooter">
            <div class="container_12 padded">
                <div class='col-sm-12'>
                    <h5 class="tc" style="padding-top: 15px;">We guarantee the lowest online rate!</h5>
                </div>
                <div class="clear">&nbsp;</div>
            </div>
        </div>
        <!-- End of Subfooter -->

        <!-- Footer -->
        <div id="footer">
            <div class="container_12 padded">
                <div class="col-sm-4">
                    <h3>Online Booking</h3>
                    <p>
                        Copyright &copy; 2012 - <a href="http://localhost/secureprogrammer/" onclick="window.open(this.href); return false;">Secure Programmer</a> - All rights reserved. 
                    </p>
                    <p class="small">Book online or call: <b>1-800-123-986563</b></p>


                </div>

                <div class='col-sm-4'>
                    <h3>About</h3>
                    <ul>
                        <li><a href="AboutUs.aspx">About Us</a></li>
                        <li><a href="CustomerService.aspx">Customer Service</a></li>
                        <li><a href="FAQ.aspx">FAQ</a></li>
                        <li><a href="terms-conditions.aspx">Terms &amp; Conditions</a></li>
                        <li><a href="PrivacyStatement.aspx">Privacy Statement</a></li>

                    </ul>
                </div>
                <div class='col-sm-4'>
                    <h3>Affiliate/Partner Login</h3>

                    <p>
                        <label class="" for="email">Email</label><br />
                        <input type="text" id="email" class="full" value="" name="email" />
                    </p>
                    <p>
                        <label class="" for="password">Password</label><br />
                        <input type="password" id="password" class="full" value="" name="password" />
                    </p>
                    <p>
                        <input type="checkbox" id="remember" class="" value="1" name="remember" />
                        <label class="choice" for="remember">Remember me</label>
                    </p>
                    <input type="submit" class="btn btn-warning radius fr" value="Sign in &raquo;" />

                </div>
                <div class="clear">&nbsp;</div>
            </div>
        </div>
        <!-- End of Footer -->
    </div>
</asp:Content>
