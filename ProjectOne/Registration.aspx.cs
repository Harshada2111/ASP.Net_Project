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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            string FirstName = txtFirstName.Text;
            string LastName = txtLastName.Text;
            string Username= txtUsername.Text;
            string gender="";
            if(txtMale.Checked == true)
            {
                 gender = txtMale.Text;
            }
            else if(txtFemale.Checked== true)
            {
                gender = txtFemale.Text;
            }
            else if(txtTransgender.Checked == true)
            {
                gender = txtTransgender.Text;
            }
            else
            {
                txtOutput.Text = "please select one";
            }
            
            string Password = txtPassword.Text;
            string ConfirmPassword = txtCPassword.Text;
            string Email = txtEmail.Text;
            string Phone = txtPhone.Text;
            string Address = txtAddress.Text;
            string Age = txtAge.Text;
            string Language="";
            if(txtMarathi.Checked== true)
            {
                Language =Language+ txtMarathi.Text ;
            }
            if(txtEnglish.Checked == true)
            {
                Language = Language + txtEnglish.Text; 
            }
            if(txtHindi.Checked== true)
            {
                Language = Language + txtHindi.Text;
            }
             if((txtMarathi.Checked==false) && (txtEnglish.Checked == false) && (txtHindi.Checked == false))
            {
                txtOutput.Text = txtUsername.Text + "Please select one language";
            }
            string Country = txtCountry.Text;

            txtOutput.Text = "Inserted Successfully";
            

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-bb6pk0t\\sqlexpress;Initial Catalog=EmpInfo;Integrated Security=True");
            con.Open();
            string query = "insert into Registration values(' " + FirstName+"', ' " +LastName+"','"+Username+" ','"+gender+" ',' "+Password+ " ' ,' " +ConfirmPassword+" ','"+Email+" ' ,' "+Phone+" ',' "+Address+ " ',' "+Age+" ','"+Language+" ',' "+Country+" ')";

            /* txtOutput.Text = "FirstName=" + txtFirstName.Text + "LastName=" + txtLastName.Text + "UserName="+txtUsername.Text+
                 "gender = "+ gender + "Password = " + txtPassword.Text + "CPassword = "+ txtCPassword.Text+ "Email = "+txtEmail.Text+
                 "Phone = "+ txtPhone.Text + "Address = "+txtAddress.Text+ "Age" + txtAge.Text + "Language = "+ Language + "Country = "+
                 txtCountry.Text;*/
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("LoginButton.aspx");

            
        }
    }
} 