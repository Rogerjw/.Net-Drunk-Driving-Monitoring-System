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
    public partial class RegisterBarOwner : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QVJTQM6\SQLEXPRESS;Initial Catalog=DrunkDriving;Integrated Security=True");
        string id;
        int uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            con.Open();
            string q = "Select Top 1 Id from BarRegister";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            int c = ds.Tables[0].Rows.Count;
            if (c > 0)
            {
                id = ds.Tables[0].Rows[0][0].ToString();
                uid = Convert.ToInt32(id);
                uid++;
                id = uid.ToString();
            }
            else
            {
                id = "1000";
            }
            txtid.Text = id;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            con.Open();
            string qu = "Insert into BarRegister values('" + txtid.Text + "','" + txtname.Text + "','" + txtaddr.Text + "','" + txtmobno.Text + "','" + txtpass.Text + "','"+txtrname.Text+"')";
            SqlCommand cmd = new SqlCommand(qu, con);
            cmd.ExecuteNonQuery();

            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Bar owner Register Successfully!!!')", true);
            uid = Convert.ToInt32(txtid.Text);
            uid++;
            txtid.Text = uid.ToString();
            txtname.Text = "";
            txtaddr.Text = "";
            txtmobno.Text = "";
            txtpass.Text = "";
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtaddr.Text = "";
            txtmobno.Text = "";
            txtpass.Text = "";
        }
    }
}