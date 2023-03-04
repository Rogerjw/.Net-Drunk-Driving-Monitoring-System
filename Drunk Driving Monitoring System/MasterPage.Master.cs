using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Drunk_Driving_Monitoring_System
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {       
        protected void Page_Load(object sender, EventArgs e)
        {            
            if(!IsPostBack)
            {                
                string login = Session["Login"].ToString();
                if (login.Equals("Login"))
                {
                    PLogin.Visible = true;
                    PUser.Visible = false;
                    Pbowner.Visible = false;
                    Ppolice.Visible = false;
                }
                else if(login.Equals("User"))
                {
                    PLogin.Visible = false;
                    PUser.Visible = true;
                    Pbowner.Visible = false;
                    Ppolice.Visible = false;
                }
                else if(login.Equals("BOwner"))
                {
                    PLogin.Visible = false;
                    PUser.Visible = false;
                    Pbowner.Visible = true;
                    Ppolice.Visible = false;
                }
                else if(login.Equals("Police"))
                {
                    PLogin.Visible = false;
                    PUser.Visible = false;
                    Pbowner.Visible = false;
                    Ppolice.Visible = true;
                }
            }
        }
    }
}