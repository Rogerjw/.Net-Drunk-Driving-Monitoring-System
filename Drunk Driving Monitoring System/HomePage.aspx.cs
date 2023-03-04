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
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QVJTQM6\SQLEXPRESS;Initial Catalog=DrunkDriving;Integrated Security=True");
        string uid, uname, uweight, udrink, gender, rst, tm, status;
        double ounce=0;        
        double bac, weight, T;
        DateTime time;
        string[] tmlist;
        TimeSpan t ;
        bool interval;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Session["uid"].ToString();
            uname = Session["uname"].ToString();
            uweight = Session["weight"].ToString();
            gender = Session["gender"].ToString();
            con.Open();
            string qq = "Select Status from Notification where Uid='" + uid + "'";
            SqlDataAdapter ssda = new SqlDataAdapter(qq, con);
            DataSet dd = new DataSet();
            ssda.Fill(dd);
            int a = dd.Tables[0].Rows.Count;
            if(a>0)
            {
                for(int w=0; w<a; w++)
                {
                    status = dd.Tables[0].Rows[w][0].ToString();
                    if(status.Equals("Unseen"))
                    {
                        notice.Visible = true;
                        break;
                    }
                    else
                    {
                        continue;
                    }
                }
            }

            string qw = "select Distinct RestName from BarRegister";
            SqlDataAdapter daa = new SqlDataAdapter(qw, con);
            DataSet dds = new DataSet();
            daa.Fill(dds);
            int n = dds.Tables[0].Rows.Count;
            if (n > 0)
            {
                for (int j = 0; j < n; j++)
                {
                    rst = dds.Tables[0].Rows[j][0].ToString();
                    string q = "Select * from UserDrinks where Uid='" + uid + "' and Restaurant='" + rst + "' and Date='"+DateTime.Now.ToString("dd-MM-yyyy")+"'";
                    SqlDataAdapter da = new SqlDataAdapter(q, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    int c = ds.Tables[0].Rows.Count;
                    if (c > 0)
                    {
                        Session["uid"] = uid;
                        weight = Convert.ToDouble(uweight);
                        weight = weight * 2.205;
                        for (int i = 0; i < c; i++)
                        {
                            udrink = ds.Tables[0].Rows[i][3].ToString();
                            ounce += Convert.ToDouble(udrink);
                            tm += ds.Tables[0].Rows[i][5].ToString()+ ",";
                        }
                        tmlist = tm.Split(',');
                        for(int l = 0; l < tmlist.Length-1; l++)
                        {
                            for(int m = l+1;m < tmlist.Length; m++)
                            {
                                if ((tmlist[l].Equals("")) || (tmlist[m].Equals("")))
                                {
                                    continue;
                                }
                                else
                                {
                                    DateTime t1 = Convert.ToDateTime(tmlist[l]);
                                    DateTime t2 = Convert.ToDateTime(tmlist[m]);
                                    t = t2 - t1;
                                    if (t > new TimeSpan(00, 29, 00))
                                    {
                                        interval = true;
                                    }
                                    break;                                    
                                }
                            }
                        }
                        if (gender.Equals("Male"))
                        {
                            DateTime Tm = Convert.ToDateTime(t.ToString());
                            double minutes = Tm.TimeOfDay.TotalMinutes;
                            T = Convert.ToDouble(minutes);
                            T = T / 60.0;
                            DateTime dt = DateTime.Now;
                            DateTime dt1 = dt.AddHours(-5);
                            lbalc.Text = ounce.ToString() + " ml";
                            ounce = ounce * 0.0338;
                            if(interval)
                            {
                                bac = (ounce * 3.75) / weight;
                                bac = bac - (0.017 % T);
                            }
                            else
                            {
                                bac = (ounce * 3.75) / weight;
                                
                            }
                            lbBac.Text = bac.ToString("0.##") + " BAC";
                            if (bac > 0.04)
                            {
                                lbBac.ForeColor = System.Drawing.Color.Red;
                                con.Open();
                                string s = "Select * from Warnings where Uid='" + uid + "' and Date='" + DateTime.Now.ToString("dd-MM-yyyy") + "'";
                                SqlDataAdapter sda = new SqlDataAdapter(s, con);
                                DataSet dss = new DataSet();
                                sda.Fill(dss);
                                int d = dss.Tables[0].Rows.Count;
                                if (d > 0)
                                {
                                    time = Convert.ToDateTime(dss.Tables[0].Rows[0][7].ToString());
                                    if (!(time < dt && time > dt1))
                                    {
                                        
                                        string qu = "Insert into Warnings Values('" + uid + "','" + uname + "','" + lbBac.Text + "','" + lbalc.Text + "','You have drunk more than permissible limit today.','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.ToString("HH:mm") + "','" + rst + "')";
                                        SqlCommand cmd = new SqlCommand(qu, con);
                                        cmd.ExecuteNonQuery();
                                        con.Close();

                                        con.Open();
                                        string que = "Insert into Notification Values('" + uid + "','You have receive new Warning','Unseen','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.ToString("HH:mm") + "')";
                                        SqlCommand cmdd = new SqlCommand(que, con);
                                        cmdd.ExecuteNonQuery();
                                        con.Close();

                                        notice.Visible = true;
                                    }
                                }
                                else
                                {
                                    string qu = "Insert into Warnings Values('" + uid + "','" + uname + "','" + lbBac.Text + "','" + lbalc.Text + "','You have drunk more than permissible limit today.','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.ToString("HH:mm") + "','" + rst + "')";
                                    SqlCommand cmd = new SqlCommand(qu, con);
                                    cmd.ExecuteNonQuery();
                                    con.Close();

                                    con.Open();
                                    string que = "Insert into Notification Values('" + uid + "','You have receive new Warning','Unseen','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.ToString("HH:mm") + "')";
                                    SqlCommand cmdd = new SqlCommand(que, con);
                                    cmdd.ExecuteNonQuery();
                                    con.Close();

                                    notice.Visible = true;
                                }
                            }
                        }
                        else
                        {
                            DateTime Tm = Convert.ToDateTime(t.ToString());
                            double minutes = Tm.TimeOfDay.TotalMinutes;
                            T = Convert.ToDouble(minutes);
                            T = T / 60.0;
                            DateTime dt = DateTime.Now;
                            DateTime dt1 = dt.AddHours(-8);
                            lbalc.Text = ounce.ToString() + " ml";
                            ounce = ounce * 0.0338;
                            if (interval)
                            {
                                bac = (ounce * 4.7) / weight;
                                bac = bac - (0.017 % T);
                            }
                            else
                            {
                                bac = (ounce * 4.7) / weight;
                               
                            }
                            
                            lbBac.Text = bac.ToString("0.##") + " BAC";
                            if (bac > 0.04)
                            {
                                lbBac.ForeColor = System.Drawing.Color.Red;
                                con.Open();
                                string s = "Select * from Warnings where Uid='" + uid + "' and Date='" + DateTime.Now.ToString("dd-MM-yyyy") + "'";
                                SqlDataAdapter sda = new SqlDataAdapter(s, con);
                                DataSet dss = new DataSet();
                                sda.Fill(dss);
                                int d = dss.Tables[0].Rows.Count;
                                if (d > 0)
                                {
                                    time = Convert.ToDateTime(dss.Tables[0].Rows[0][7].ToString());
                                    if (!(time < dt && time > dt1))
                                    {
                                        string qu = "Insert into Warnings Values('" + uid + "','" + uname + "','" + lbBac.Text + "','" + lbalc.Text + "','You have drunk more than permissible limit today.','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.ToString("HH:mm") + "','" + rst + "')";
                                        SqlCommand cmd = new SqlCommand(qu, con);
                                        cmd.ExecuteNonQuery();
                                        con.Close();

                                        con.Open();
                                        string que = "Insert into Notification Values('" + uid + "','You have receive new Warning','Unseen','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.ToString("HH:mm") + "')";
                                        SqlCommand cmdd = new SqlCommand(que, con);
                                        cmdd.ExecuteNonQuery();
                                        con.Close();

                                        notice.Visible = true;
                                    }
                                }
                                else
                                {
                                    string qu = "Insert into Warnings Values('" + uid + "','" + uname + "','" + lbBac.Text + "','" + lbalc.Text + "','You have drunk more than permissible limit today.','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.ToString("HH:mm") + "','" + rst + "')";
                                    SqlCommand cmd = new SqlCommand(qu, con);
                                    cmd.ExecuteNonQuery();
                                    con.Close();

                                    con.Open();
                                    string que = "Insert into Notification Values('" + uid + "','You have receive new Warning','Unseen','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" + DateTime.Now.ToString("HH:mm") + "')";
                                    SqlCommand cmdd = new SqlCommand(que, con);
                                    cmdd.ExecuteNonQuery();
                                    con.Close();

                                    notice.Visible = true;
                                }
                            }
                        }
                    }
                    else
                    {
                        continue;
                    }
                }
            }
        }
        protected void btnclose_Click(object sender, EventArgs e)
        {
            notice.Visible = false;
            
            string ss = "Update Notification set Status='Seen' where Uid ='" + uid + "'";
            SqlCommand cmd = new SqlCommand(ss, con);
            cmd.ExecuteNonQuery();
            
        }

    }
}