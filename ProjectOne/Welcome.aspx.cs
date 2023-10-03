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
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string username = Session["Username"] as string;

                // Check if the session variable exists and is not null
                if (!string.IsNullOrEmpty(username))
                {
                    // Display the username on the page
                    txtOutput.Text = "Welcome, " + username;
                }
                else
                {
                    // Handle the case where the session variable is not set
                    txtOutput.Text = "Username not found.";
                }
            }
        }
    }
}