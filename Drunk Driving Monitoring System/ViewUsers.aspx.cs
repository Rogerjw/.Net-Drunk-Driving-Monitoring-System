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
    public partial class ViewUsers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QVJTQM6\SQLEXPRESS;Initial Catalog=DrunkDriving;Integrated Security=True");
        string login;
        protected void Page_Load(object sender, EventArgs e)
        {
            login = Session["Login"].ToString();
            con.Open();
            string q = "Select Id,Name,Address,MobileNo,Gender from UserRegister";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            int c = ds.Tables[0].Rows.Count;
            if(c>0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
        
        protected void btnHistory_Click1(object sender, EventArgs e)
        {            
            searchbar.Visible = true;
        }

        protected void lbtnSearch_Click(object sender, EventArgs e)
        {
            list.Visible = false;
            history.Visible = true;

            btnHistory.Visible = false;
            btnBack.Visible = true;
            GridView1.Visible = false;
            con.Open();
            string q = "Select Uid, Uname, DrinkName, AlcoholQty, Date, Time, Restaurant from UserDrinks where Uid='"+ txtserachbox.Text+ "' OR Uname='"+ txtserachbox.Text+ "'";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int c = ds.Tables[0].Rows.Count;
            if (c > 0)
            {
                GridView2.DataSource = ds;
                GridView2.DataBind();
                GridView2.Visible = true;
            }
            if (login.Equals("Police"))
            {                
                string qu = "Select BAC, AlcoholQty, Warning, Date, Time from Warnings where Uid='" + txtserachbox.Text + "' OR Uname='" + txtserachbox.Text + "'";
                SqlDataAdapter daa = new SqlDataAdapter(qu, con);
                DataSet dss = new DataSet();
                daa.Fill(dss);
                con.Close();
                int d = dss.Tables[0].Rows.Count;
                if (d > 0)
                {
                    GridView3.DataSource = dss;
                    GridView3.DataBind();
                    GridView3.Visible = true;
                }
            }
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            txtserachbox.Text = "";
            btnHistory.Visible = true;
            list.Visible = true;
            history.Visible = false;
            searchbar.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = true;
            btnBack.Visible = false;
            GridView3.Visible = false;
        }
    }
}