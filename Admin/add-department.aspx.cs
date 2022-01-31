using Microsoft.Win32;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

public partial class Admin_add_department : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        namee.Text = Session["Name"].ToString();
        rolee.Text = Session["Role"].ToString();
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection("Server=localhost; Database='html';uid=root;password=");

        using (MySqlCommand cmd = new MySqlCommand("insert into department (id,name,hod,startyear,numberofstudent) values (@id,@name,@hod,@startyear,@numberofstudent)"))
        {
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@id", id.Text);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@hod", hod.Text);
            cmd.Parameters.AddWithValue("@startyear", start.Text);
            cmd.Parameters.AddWithValue("@numberofstudent", numstu.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            MessageBox.Show("New Department added succesfully");
            Response.Redirect("~/Admin/departments.aspx");
            con.Close();
        }
}
}