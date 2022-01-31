using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Windows.Controls;
using System.Diagnostics;
using System.Windows;

public partial class Teacher_leave : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Process.Start("https://drive.google.com/file/d/1wlvsNmV5XRERlK8U4rihxDeAUpb0rCxe/view?usp=sharing");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        MessageBox.Show("Upload Successful Please wait for Approval");
    }
}