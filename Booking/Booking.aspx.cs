using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusTicketReservationSystem.Booking
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Projects/Home.aspx");
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Booking is Confirm')</script>");
        }
    }
}