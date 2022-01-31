using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

public partial class fingerprint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
     
        Name.Text = "highattitude1998@gmail.com";
        Password.Text = "123";
        MessageBox.Show("FINGER PRINT AUTHENTICATED");
        Response.Redirect("Teacher/Index.aspx");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        MessageBox.Show("FINGER PRINT NOT DETECTED PLEASE TRY AGAIN");
    }
}