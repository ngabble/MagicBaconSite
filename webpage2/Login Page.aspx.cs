using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace webpage2
{
    public partial class web : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source=ctzeronewdbsvr.database.windows.net;Initial Catalog=CTZERO-NEW-DB;User ID=ctzeroadmin;Password=CTzero1234"
);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [Table] where Email_Id = '" + usertxt.Text + "'and Password = '" + passtxt.Text + "' ";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if(temp == 1)
            {
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Your Email ID or Password is invalid";
            }
        }
        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");
        }
    }
}