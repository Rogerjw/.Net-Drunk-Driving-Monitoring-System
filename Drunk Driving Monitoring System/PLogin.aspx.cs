using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Drunk_Driving_Monitoring_System
{
    public partial class PLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QVJTQM6\SQLEXPRESS;Initial Catalog=DrunkDriving;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if((txtid.Text=="")||(txtpass.Text==""))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Enter the Login Details')", true);
            }
            else
            {
                con.Open();
                string q = "Select * from PoliceLogin where Id = '" + txtid.Text + "' and Password='" + txtpass.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                int c = ds.Tables[0].Rows.Count;
                if(c>0)
                {
                    Session["Login"] = "Police";
                    txtid.Text = "";
                    txtpass.Text = "";
                    Response.Redirect("ViewUsers.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Invalid Id-Password')", true);
                }
            }
        }
    }
}