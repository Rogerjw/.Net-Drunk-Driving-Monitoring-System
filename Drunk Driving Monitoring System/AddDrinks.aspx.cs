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
    public partial class AddDrinks : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QVJTQM6\SQLEXPRESS;Initial Catalog=DrunkDriving;Integrated Security=True");
        string uid, uname, Restaurant; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Restaurant = Session["RstName"].ToString();
                ddlbind();
                txtrst.Text = Restaurant;
            }
        }      
        protected void ddlbind()
        {           
            string q = "select Id, Name, Weight, Gender from UserRegister";
            SqlDataAdapter sda = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            con.Close();
            int c = ds.Tables[0].Rows.Count;
            if (c > 0)
            {
                ddlusers.Items.Clear();
                ddlusers.Items.Add("Select");
                for (int i = 0; i < c; i++)
                {
                    string id = ds.Tables[0].Rows[i][0].ToString();
                    string name = ds.Tables[0].Rows[i][1].ToString();
                    ddlusers.Items.Add(id + " " + name);
                }
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (ddlusers.SelectedItem.Text == "Select")
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Select the User')", true);
            }
            else
            {
                string date = DateTime.Now.ToString("dd-MM-yyyy");
                string time = DateTime.Now.ToString("hh:mm tt");
                uid = ddlusers.SelectedItem.Text;
                string[] user = uid.Split(' ');
                uid = user[0];
                uname = user[1];
                con.Open();
                string qu = "Insert into UserDrinks Values('" + uid + "','" + uname + "','" + txtalc.Text + "','" + date + "','" + time + "','" + txtaname.Text + "','" + txtrst.Text + "')";
                SqlCommand cmd = new SqlCommand(qu, con);
                cmd.ExecuteNonQuery();

                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Drinks added!!!')", true);

                txtalc.Text = "";
                txtaname.Text = "";
                ddlbind();
            }
        }       
    }
}