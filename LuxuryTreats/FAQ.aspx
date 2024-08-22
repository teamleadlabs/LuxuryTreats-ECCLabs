<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HelpContentPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContentPlaceholder" Runat="Server">
   <style type="text/css">
      

body {
  color: #333;
  background: #eee;
  font-family: Arial;
  font-size: 1em;
  overflow-x: hidden;
  padding: 0 1.5em;
}

.faq-header{
  font-size: 2em;
  border-bottom: 1px dotted #ccc;
  padding: 1em 0;
}

.faq-c {
  border-bottom: 1px dotted #ccc;
  padding: 1em 0;
}

.faq-t {
  line-height: 1em;
  color: #aaa; 
  font-family: sans-serif; 
  float:left; 
      padding-top: 4px;
  font-weight: 700; 
  padding-right: 0.3em; 
  -webkit-transition: all 200ms;
  -moz-transition: all 200ms;
  transition: all 200ms;
}

.faq-o {
  transform: rotate(-45deg);
  transform-origin: 50% 50%;
  -ms-transform: rotate(-45deg);
  -ms-transform-origin: 50% 50%;
  -webkit-transform: rotate(-45deg);
  -webkit-transform-origin: 50% 50%;
  -webkit-transition: all 200ms;
  -moz-transition: all 200ms;
  transition: all 200ms;
}

.faq-q {
  cursor: pointer;
  font-size: 18px;
  font-weight: 100;
}

.faq-a {
  clear: both;
  color: #666;
  display: none;
  padding-left: 1.5em;
}
.faq-q:hover{
    color:#f3b21d;
}

</style>
    <div class="faq-header">Making a Reservation</div>

<div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>How do I reserve my room?</div>
  <div class="faq-a">
    <p>Our reservation process is very simple. Go to Search for hotels and Select a destination, enter the dates of arrival and departure, and the number of guests.
A list of hotels or vacation rentals will appear on the screen. For more information, click the name of the property or the Select button.
After room types and rates are returned to your screen, you will be able to choose the rate you desire by reading the room information in the center of the screen, then clicking on the Book It button on the right side of the screen.
After you have selected your desired room type, you will be taken to a "Secure Reservation Request" form. Then you will need to review the "Reservation Information" and fill in the blanks on the "Guest Information" section. Be sure your name and email address are spelled correctly.
After you fill out all of the needed information, press the "Submit Reservation" button.
If further correspondence is necessary prior to confirming the reservation, a Customer Care agent will reply back to you with an email within 24 hours.</p>
  </div>
</div>

<div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>Is it safe to use my credit card?</div>
  <div class="faq-a">
    <p>Yes. We take this matter very seriously. To ensure your security, Luxury Treats utilizes a secure commerce server, which encrypts the credit card number and encodes it into a non-usable form.</p>
  </div>
</div>

<div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>What credit cards do you accept?</div>
  <div class="faq-a">
    <p>The card types accepted will be listed in the Info section of the hotel description.</p>
  </div>
</div>
    <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>My credit card number is correct, but the hotel is not accepting it. Why?</div>
  <div class="faq-a">
    <p>There are a few possibilities:
Your card type is not accepted at the hotel.
The card expiration date precedes the reservation date.
You have reached your credit limit.
There is a computer error.</p>
  </div>
</div>
      <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>Can I specify where I would like my room located (preferred floor, next to pool, etc.)?</div>
  <div class="faq-a">
    <p>If special requests are accepted by the lodging, a section will appear on the Reservation Form to insert such requests and submit them to the hotel. The hotel staff will do their best to accommodate special requests. We cannot guarantee that your requests will be granted because they are subject to availability.</p>
  </div>
</div>
      <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>Is the room rate per person or per night?</div>
  <div class="faq-a">
    <p>All rates displayed are nightly, and based on double occupancy per room unless otherwise specified. Carefully review the room descriptions and rate rules to ensure the room you select can accommodate your entire party. Any extra adults or children above the rooms listed occupancy may be subject to additional charges at the property's discretion. Some rates may require special identification. Taxes, and other surcharges imposed by the hotel are not included.</p>
  </div>
</div>
      <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>What about the special discounts? </div>
  <div class="faq-a">
    <p>Many of the participating hotels offer "Special Internet Rates" to our users. These rates offer substantial savings. See the section Special Internet Rates for more information.</p>
  </div>
</div>
      <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>I should receive a discounted rate. How do I get this?</div>
  <div class="faq-a">
    <p>The rates displayed are the only rates available to this site for making reservations. These rates may include government, corporate, or senior discounts. You may need special documentation at check-in to confirm you are qualified to receive that rate. Please do not expect to receive such a rate at check-in without the proper identification even if you have selected to book it online.
back to top[+]</p>
  </div>
</div>
      <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>
Can I book my reservation by phone? </div>
  <div class="faq-a">
    <p>Our hotel experts are available 24 hours a day, 7 days a week to assist you in booking your reservations by phone.</p>
  </div>
</div>
      <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>What happens when I make a reservation?</div>
  <div class="faq-a">
    <p>Reservation requests will result in a new screen showing an Booking Number, which should be kept and used with any future correspondence with Luxury Treats. You may also be quoted a Confirmation Number. Additionally, all reservations will be followed up within 2 to 4 hours with an email using the same Booking Number and, if available, a Confirmation Number.</p>
  </div>
</div>
      <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>How long will it take Luxury Treats to respond to my reservation request?</div>
  <div class="faq-a">
    <p>All reservation requests will result in a new screen showing a booking Number, which should be kept and used with any future correspondence with Luxury Treats. Additionally, all reservations will be followed up with an email within 2 to 4 hours using the same Booking Number with the status of your reservation.</p>
  </div>
</div>
    <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>How do I check on my request for a lodging?</div>
  <div class="faq-a">
    <p>You may view your reservation using the "View/Cancel Reservation" link. Always feel free to contact us with any inquiries regarding your request. For fastest service, please include your "Booking Number" which you will receive after you submit your booking.</p>
  </div>
</div>
    <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>I don't have long to wait for a confirmation. What can I do?</div>
  <div class="faq-a">
    <p>Typically, most lodging reservations are made in real time and your confirmation should only take a few seconds. You will be notified of the status of your reservation within 2 to 4 hours. However, there can be delays. In such cases, you will receive an email from us without a confirmation number. When we receive the confirmation number from the property, it will be emailed to you. If there is a special request or rate change associated with your reservation, the request will be sent to a Customer Care agent for processing. You may contact us directly at travel@Luxury Treats.</p>
  </div>
</div>
    <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>When will my reservation be at the hotel?</div>
  <div class="faq-a">
    <p>Special Internet Rates Rates: 
Your name will not appear at the hotel until 72 hours before your arrival date. Rest assured, the room is booked; however, the hotel just does not know that you will be the person staying in it.
"Additional Rates":
It takes a minimum of 24 hours before your reservation details reach the lodging's computer system. Rest assured, the room is booked; however, the hotel simply has not entered your details into their system yet.
 </p>
  </div>
</div>
    <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>Once I have made my reservation, will I receive any written confirmation from the hotel?</div>
  <div class="faq-a">
    <p>No. The email confirmation you receive from Luxury Treats is all you will need. It displays your Luxury Treats Booking Number, the hotel information, the rate, confirmation number, and the hotel's cancellation policy.</p>
  </div>
</div>
    <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>What is the cancellation policy on my reservation?</div>
  <div class="faq-a">
    <p>When you are completing the Secure Lodging Reservation Form, the Cancellation Policy will be provided in red or there will be a link to read the cancellation policy. You can also view the property information page to find the cancellation policy. These policies will vary from lodging to lodging, so you must read each one carefully. In general, the standard increments are that you must cancel the room(s) by 4 or 6 PM on the arrival date, or 24, 48, or 72 hours prior to your specified arrival; however, these are just general guidelines and the specific policy of the property will prevail. If you cancel before the deadline, generally you will not be charged a penalty by the lodging provider. Canceling after the stated period will result in a cancellation penalty fee from the lodging provider. Some reservations are non-refundable and cannot be canceled after booking.

If the cancellation is outside of the time allotted, you may be charged for one night's stay including tax recovery charges and service fees. Please read the specific cancellation policy provided for each property on the site and in any emails regarding your reservation.
 </p>
  </div>
</div>
    <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>How do I cancel a reservation?</div>
  <div class="faq-a">
    <p>Use the "View/Cancel Reservation" link provided on the home page.</p>
  </div>
</div>
    <div class="faq-c">
  <div class="faq-q"><span class="faq-t">+</span>What is a Vacation Rental?</div>
  <div class="faq-a">
    <p>A vacation rental is any suite-type lodging that has self-catering facilities (wet bar, refrigerator, microwave, etc.) Most vacation rentals have separate bedrooms, fully equipped kitchens, one or more bathrooms, washer and dryer, and sometimes a balcony or patio. Towels and linens are provided. Daily maid service and other hotel conveniences are usually available.

Unlike hotels with per person pricing, there is a set price for an entire vacation rental with a maximum number of persons allowed. Most one-bedroom units sleep a maximum of four using a sleeper/sofa in the living room. Most two-bedroom vacation rentals sleep a maximum of six, and most three-bedroom vacation rentals sleep up to eight.

Please carefully read the vacation rental descriptions to learn the specifics of what is provided and how many people are allowed.</p>
  </div>
</div>



    <script type="text/javascript">
        $(".faq-q").click(function () {
            var container = $(this).parents(".faq-c");
            var answer = container.find(".faq-a");
            var trigger = container.find(".faq-t");

            answer.slideToggle(200);

            if (trigger.hasClass("faq-o")) {
                trigger.removeClass("faq-o");
            }
            else {
                trigger.addClass("faq-o");
            }
        });
    </script>

</asp:Content>

