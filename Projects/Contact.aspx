<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Projects/UserMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BusTicketReservationSystem.Projects.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="content">
			<div class="contact">
				<div class="container">
					
					<div class="contact-grids">
						<div class="col-md-6 contact-right">
							<form>
								<h5>name</h5>
								<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
								<%--<input type="text">--%>
								<h5>emailaddress</h5>
								<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
								<%--<input type="text">--%>
								<h5>message</h5>
								<asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server"></asp:TextBox>
								 <%--<textarea></textarea>--%>

								<asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
								<%-- <input type="submit" value="send">--%>
						 	 </form>
						</div>
						<div class="col-md-6 contact-left">
							<p>JK Bus Booking System.</p>
								<address>
									<p>JK Bus Booking.</p>
									<p>NH-51 Bhavanagar,</p>
									<p>Gujrat-India.</p>
									<p>Telephone : +91 8585968585</p>
									<p>FAX : +1 200 889 9898</p>
									<p>E-mail : <a href="#">jkbusbooking@gmail.com</a></p>
								</address>
						</div>
						<div class="clearfix"></div>
				</div>
				</div>
			</div>




</asp:Content>
