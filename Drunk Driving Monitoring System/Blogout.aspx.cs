﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Drunk_Driving_Monitoring_System
{
    public partial class Blogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Login"] = "Login";
            Response.Redirect("BLogin.aspx");
        }
    }
}