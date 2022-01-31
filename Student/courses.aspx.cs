using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

public partial class Student_courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        namee.Text = Session["Name"].ToString();
        rolee.Text = Session["Role"].ToString();
    }

    protected void enroll1_Click(object sender, EventArgs e)
    {
      
        Response.Redirect("fake.aspx");
    }

    protected void enroll2_Click(object sender, EventArgs e)
    {
        MessageBox.Show("Enrolled Successfully");
        Response.Redirect("fake.aspx");
    }
}