using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BusTicketReservationSystem.Projects
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\MVC\BusTicketReservationSystem\BusTicketReservationSystem\App_Data\BusBooking.mdf;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            int id1 = 0;

            string str = "select max(userId) as userId from UserTbl";
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(str, con);
            da.Fill(ds);

            id1 = 1;
            id1 = int.Parse(ds.Tables[0].Rows[0]["userId"].ToString());

            if(id1 > 1)
            {
                id1++;
            }
            else
            {
                id1 = 1;
            }

            lblUserId.Text = id1.ToString();
        }

        protected void LinkButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string str1 = "insert into UserTbl values("+lblUserId.Text+",'"+txtName.Text+"','"+txtUsername.Text+"','"+DropdownlistGender.SelectedValue.ToString()+"',"+txtMobile.Text+",'"+txtEmail.Text+"','"+txtPass.Text+"','"+txtAddress.Text+"')";
                cmd = new SqlCommand(str1, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registration Successfully')</script>");

            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}