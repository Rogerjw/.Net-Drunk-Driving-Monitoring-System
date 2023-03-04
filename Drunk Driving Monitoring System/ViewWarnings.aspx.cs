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
    public partial class ViewWarnings : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QVJTQM6\SQLEXPRESS;Initial Catalog=DrunkDriving;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string q = "Select Uid, Uname, BAC, AlcoholQty, Date, Time from Warnings where Date = '" + DateTime.Now.ToString("dd-MM-yyyy") + "'";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            int c = ds.Tables[0].Rows.Count;
            if (c > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}