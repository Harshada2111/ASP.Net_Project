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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-bb6pk0t\\sqlexpress;Initial Catalog=EmpInfo;Integrated Security=True");
            /*
            string username = txtUsername.Text;
            string password = string.Empty;
            con.Open();
            string query = "select password from Login where username=" + " ' "+ username + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            password = cmd.ExecuteScalar().ToString();
            if(password == txtPassword.Text)            
            {
                Response.Redirect("HotelRegistration.aspx");
            }else
            {
                txtOutput.Text = "invalid credinals";
            }
            con.Close();*/
            string query = "select count(*) from Registration where Username='" + txtUsername.Text + " ' and Password=' " + txtPassword.Text + " ' ";
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if(temp == 1)
            {
                Response.Redirect("DisplayDetail.aspx");
            }
            else
            {
                txtOutput.Text = "Your username and password is invalid";
            }

        }
    }
}