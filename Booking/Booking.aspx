﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="BusTicketReservationSystem.Booking.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Bus Ticket Reservation" />
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="css/jquery.seat-charts.css"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" //>
<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="js/jquery.seat-charts.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="content">
	<h1>Bus Ticket Reservation Widget</h1>
	<div class="main">
		<h2>Book Your Seat Now?</h2>
		<div class="wrapper">
			<div id="seat-map">
				<div class="front-indicator"><h3>Front</h3></div>
			</div>
			<div class="booking-details">
						<div id="legend"></div>
						<h3> Selected Seats (<span id="counter">0</span>):</h3>
						<ul id="selected-seats" class="scrollbar scrollbar1"></ul>
						
						Total: <b>$<span id="total">0</span></b>
				<asp:Button ID="btnConfirm" class="checkout-button" runat="server" Text="Confirm" BackColor="#66FF33" Font-Bold="True" Font-Size="Medium" ForeColor="#333300" Height="62px" OnClick="btnConfirm_Click" />
						<%--<button class="checkout-button">Pay Now</button>--%>
			</div>
			<div class="clear">
				<asp:Button ID="btnLogout" runat="server" Text="Logout" BackColor="Red" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnLogout_Click" Width="148px" />
			</div>
		</div>
		<script type="text/javascript">
				var firstSeatLabel = 1;
			
				$(document).ready(function() {
					var $cart = $('#selected-seats'),
						$counter = $('#counter'),
						$total = $('#total'),
						sc = $('#seat-map').seatCharts({
						map: [
							'ff_ff',
							'ff_ff',
							'ee_ee',
							'ee_ee',
							'ee___',
							'ee_ee',
							'ee_ee',
							'ee_ee',
							'eeeee',
						],
						seats: {
							f: {
								price   : 100,
								classes : 'first-class', //your custom CSS class
								category: 'First Class'
							},
							e: {
								price   : 40,
								classes : 'economy-class', //your custom CSS class
								category: 'Economy Class'
							}					
						
						},
						naming : {
							top : false,
							getLabel : function (character, row, column) {
								return firstSeatLabel++;
							},
						},
						legend : {
							node : $('#legend'),
							items : [
								[ 'f', 'available',   'First Class' ],
								[ 'e', 'available',   'Economy Class'],
								[ 'f', 'unavailable', 'Already Booked']
							]					
						},
						click: function () {
							if (this.status() == 'available') {
								//let's create a new <li> which we'll add to the cart items
								$('<li>'+this.data().category+' : Seat no '+this.settings.label+': <b>$'+this.data().price+'</b> <a href="#" class="cancel-cart-item">[cancel]</a></li>')
									.attr('id', 'cart-item-'+this.settings.id)
									.data('seatId', this.settings.id)
									.appendTo($cart);
								
								/*
								 * Lets update the counter and total
								 *
								 * .find function will not find the current seat, because it will change its stauts only after return
								 * 'selected'. This is why we have to add 1 to the length and the current seat price to the total.
								 */
								$counter.text(sc.find('selected').length+1);
								$total.text(recalculateTotal(sc)+this.data().price);
								
								return 'selected';
							} else if (this.status() == 'selected') {
								//update the counter
								$counter.text(sc.find('selected').length-1);
								//and total
								$total.text(recalculateTotal(sc)-this.data().price);
							
								//remove the item from our cart
								$('#cart-item-'+this.settings.id).remove();
							
								//seat has been vacated
								return 'available';
							} else if (this.status() == 'unavailable') {
								//seat has been already booked
								return 'unavailable';
							} else {
								return this.style();
							}
						}
					});

					//this will handle "[cancel]" link clicks
					$('#selected-seats').on('click', '.cancel-cart-item', function () {
						//let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
						sc.get($(this).parents('li:first').data('seatId')).click();
					});

					//let's pretend some seats have already been booked
					sc.get(['1_2', '4_1', '7_1', '7_2']).status('unavailable');
			
			});

			function recalculateTotal(sc) {
				var total = 0;
			
				//basically find every selected seat and sum its price
				sc.find('selected').each(function () {
					total += this.data().price;
				});
				
				return total;
			}
        </script>
	</div>
	<p class="copy_rights">&copy; 2021 JK Bus Booking. All Rights Reserved | Design by  <a href="#" target="_blank">Jayesh Ahir</a></p>
</div>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="js/scripts.js" type="text/javascript"></script>


        </div>
    </form>
</body>
</html>
