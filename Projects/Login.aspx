<%@ Page Title="Login" Language="C#" MasterPageFile="~/Projects/UserMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusTicketReservationSystem.Projects.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<center style="font-size: medium; font-weight: bold; background-color: #CCFF99" >
<br />
<br />
<br />
<br />
<br />
<table align="center" 
        style="background-color: #C0C0C0; width: 35%; height: 250px;  font-size: large; font-weight: bold;">
        <tr>
            
            <td colspan="3" style="height: 100px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF" > Login</h1>
            </td>
        </tr>
        
        
        
       <tr>
        <td style="width: 169px; height: 57px" align="center"><label>Username</label></td>
        <td style="height: 57px">
            <asp:TextBox ID="txtUsename" placeholder="Username" runat="server" 
         Height="40px" Width="200px" BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 50px" align="center"><label>Password</label></td>
            <td style="height: 50px"><asp:TextBox ID="txtpass" TextMode="Password" 
                    placeholder="Password" runat="server" 
             Height="40px" Width="200px"   BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
       <td colspan="2" align="center">
       <asp:Button ID="btnSignIn" class="login login-submit" runat="server" Text="Login" 
                Font-Bold="True" Font-Size="Large" ForeColor="Black" 
               Height="34px" Width="250px" BackColor="#0099CC" OnClick="btnSignIn_Click"/>
           <asp:LinkButton ID="LinkButtonSignUp" runat="server" OnClick="LinkButtonSignUp_Click">SignUp</asp:LinkButton>
       </td>
       </tr>
       
       
</table>
<br />
<br />
<br />
<br />
<br />
</center>



</asp:Content>
