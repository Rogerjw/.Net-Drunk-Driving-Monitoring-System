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
    public partial class RegisterUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QVJTQM6\SQLEXPRESS;Initial Catalog=DrunkDriving;Integrated Security=True");
        string id;
        int uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string q = "Select Top 1 Id from UserRegister order by ID Desc";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            int c = ds.Tables[0].Rows.Count;
            if(c>0)
            {
                id = ds.Tables[0].Rows[0][0].ToString();
                uid = Convert.ToInt32(id);
                uid++;
                id = uid.ToString();
            }
            else
            {
                id = "100";
            }
            txtId.Text = id;
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            con.Open();
            string qu = "Insert into UserRegister values('"+txtId.Text+"','" + txtName.Text + "','" + txtAddress.Text + "','" + txtMobileno.Text + "','" + txtWeight.Text + "','" + rbtnList.SelectedValue + "','" + txtPass.Text + "')";
            SqlCommand cmd = new SqlCommand(qu, con);
            cmd.ExecuteNonQuery();

            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('User Register Successfully!!!')", true);
            uid = Convert.ToInt32(txtId.Text);
            uid++;
            txtId.Text = uid.ToString();
            txtName.Text = "";
            txtAddress.Text = "";
            txtMobileno.Text = "";           
            txtWeight.Text = "";
            txtPass.Text = "";
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtAddress.Text = "";
            txtMobileno.Text = "";
            txtName.Text = "";
            txtWeight.Text = "";
            txtPass.Text = "";
        }
    }
}