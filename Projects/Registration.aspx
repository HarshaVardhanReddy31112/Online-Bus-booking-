<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Projects/UserMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="BusTicketReservationSystem.Projects.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<center style="background-color: #CCFF99">
<table align="center" 
        
        style=" width: 50%; height: 800px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="2" style=" font-size: large; font-weight: bold;">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Registration</h1>
            </td>
        </tr>
        
        
        <tr>
            <td  align="center">
                <asp:Label ID="lbl_id1" runat="server" Text="Id"></asp:Label>
  
            </td>
            <td  align="center" >
                <asp:Label ID="lblUserId" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        
        <tr>
            <td  align="center">
              <asp:Label ID="lbl_signup_name" runat="server" Text="Name"></asp:Label>
            </td>
            <td align="center" >
                <asp:TextBox ID="txtName" placeholder="Name" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox> 
               <%-- <asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                
            </td>
            
        </tr>
        
        <tr>
            <td  align="center">
               <asp:Label ID="lbl_signup_username1" runat="server" Text="Username"></asp:Label><br />
            </td>
            <td  align="center">
               <asp:TextBox ID="txtUsername" placeholder="Username" runat="server" 
               Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox> 
            <%--<asp:RequiredFieldValidator ID="validuser" runat="server" ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            
            </td>
            
        </tr>
        
        <tr>
            <td  align="center">
                <asp:Label ID="lbl_signup_gender" runat="server" Text="Gender"></asp:Label><br />
            </td>
            <td  align="center">
                <asp:RadioButtonList ID="DropdownlistGender" runat="server">
                
                <asp:ListItem Text="male" Value="0">male</asp:ListItem>
                <asp:ListItem Text="female" Value="1">female</asp:ListItem>
                </asp:RadioButtonList>
                
            </td>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_mobile" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td  align="center">
                <asp:TextBox ID="txtMobile" placeholder="Mobile" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
               <%-- <asp:RequiredFieldValidator ID="validmobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                
            </td>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_email" runat="server" Text="Email"></asp:Label></td>
            <td align="center">
             <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>   
           <%-- <asp:RequiredFieldValidator ID="validemail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
            <asp:RegularExpressionValidator ID="Regulare_mail" runat="server" ErrorMessage="Valid Email ID" ValidationGroup="vgSubmit" ControlToValidate="txtEmail"  ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>--%>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txtPass" placeholder="Password" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
           <%-- <asp:RequiredFieldValidator ID="validpwd" runat="server" ControlToValidate="txtPass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>
           
            </td>
        </tr>

        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_cpass" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txtCPass"  placeholder="Confirm Password" runat="server" Height="25px" Width="380px" 
                    BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"  ></asp:TextBox>
                <%-- <asp:RequiredFieldValidator ID="validcpass" runat="server" ControlToValidate="txtCPass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>--%>

            </td>
        </tr>

        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txtAddress" placeholder="Address" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="valid_address" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> </td>--%>
        </tr>
        
        <tr>
            <td colspan="2" align="center" 
                style="background-color: #C0C0C0; font-size: large; font-weight: bold;">
                <asp:Button ID="btnSubmit" class="login login-submit" runat="server" 
                Text="Submit"  Font-Bold="True" Font-Size="Large" 
                    Height="40px" Width="224px" BackColor="#00FFCC" OnClick="btnSubmit_Click" />
                &nbsp<asp:LinkButton ID="LinkButtonLogin" runat="server" OnClick="LinkButtonLogin_Click">Login</asp:LinkButton>
            </td>
        </tr>
</table>
</center>





</asp:Content>
