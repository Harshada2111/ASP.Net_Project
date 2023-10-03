using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace ProjectOne
{
    public partial class HotelRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name=txtName.Text;
            string Roomtype = "";
            if (txtDelux.Checked == true)
            {
                Roomtype = txtDelux.Text;
            }
            else if (txtOrdinary.Checked == true)
            {
                Roomtype = txtOrdinary.Text;
            }
            else
            {
                txtOutput.Text = "please select one";
            }

            string Amenities = "";

            if (txtAC.Checked == true)
            {
                Amenities = Amenities + txtAC.Text;
            }
            if (txtComputer.Checked == true)
            {
                Amenities = Amenities + txtComputer.Text;
            }
            if ((txtAC.Checked == false) && (txtComputer.Checked == false))
            {
                txtOutput.Text = txtName.Text + "Please select one language";
            }
            int GuestNo = Convert.ToInt32(txtGuest.Text);
            string arrivalDate = txtADate.Text;
            string DepratureDate = txtDdate.Text;
            int NightNo = Convert.ToInt32(txtNight.Text);
            string City = txtCity.Text;
            string State = txtState.Text;
            string Country = txtCountry.Text;
            

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-bb6pk0t\\sqlexpress;Initial Catalog=EmpInfo;Integrated Security=True");
            con.Open();
            string query = "insert into HotelRegister values('" + Name + "','" + Roomtype + "','" + Amenities + "','" + GuestNo + "','" + arrivalDate + "','" + DepratureDate + "','" + NightNo + "','" + City + "','" + State + "','" + Country + "')";
            SqlCommand cmd = new SqlCommand(query,con);
            
            cmd.ExecuteNonQuery();
            Session["Username"] = Name;
            Response.Redirect("Welcome.aspx");

            con.Close();
            
            

        }
    }
}