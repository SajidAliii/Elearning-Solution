using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_compose : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        namee.Text = Session["Name"].ToString();
        rolee.Text = Session["Role"].ToString();
    }
}