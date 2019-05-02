using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace webpage2
{
    public partial class RegistrationPage : System.Web.UI.Page
    {        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = rainbowranger.westus2.cloudapp.azure.com; Initial Catalog = BaconDB; User ID = BaconDB; Password = Bacon1234");

            try
            {
                con.Open();
                string ins = "Insert into [Table](FirstName, LastName, Email_Id, Address, City, State, Contact, Password) values('" + firstName.Text + "', '" + lastName.Text + "', '" + Email_Id.Text + "', '" + Address.Text + "', '" + City.Text + "', '" + State.Text + "', '" + Contact.Text + "', '" + rpasstxt.Text + "')";
                SqlCommand com = new SqlCommand(ins, con);
                com.ExecuteNonQuery();

                Label2.Visible = true;
            }
            catch (Exception)
            {
                Label2.Text = "Something is wrong...";
                throw;
            }
            finally
            {
                con.Close();
            }
        }
        protected void Reload(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");
        }
    }
}