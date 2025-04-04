using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusTicketReservationSystem.Projects
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            if (txtUsename.Text =="User" && txtpass.Text=="123456")
            {
                Response.Redirect("~/Booking/Booking.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please check username or Password')</script>");
            }
        }

        protected void LinkButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}