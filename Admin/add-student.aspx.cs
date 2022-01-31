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

public partial class Admin_add_student : System.Web.UI.Page
{

    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        namee.Text = Session["Name"].ToString();
        rolee.Text = Session["Role"].ToString();
    }

    protected void submit_Click(object sender, EventArgs e)
    { 
     if (gender.Text == "Female") { i = 0; }
else { i = 1; }


using (Stream fs = FileUpload1.PostedFile.InputStream)
{
    using (BinaryReader br = new BinaryReader(fs))
    {
        byte[] bytes = br.ReadBytes((Int32)fs.Length);
MySqlConnection con = new MySqlConnection("Server=localhost; Database='html';uid=root;password=");

            using (MySqlCommand cmd = new MySqlCommand("insert into student (id,Gender,name,department,dob,joindate,parentname,parentnum,number,adress,image) values (@id,@Gender,@name,@department,@dob,@joindate,@parentname,@parentnum,@number,@adress,@image)"))
        {
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@id", id.Text);
            cmd.Parameters.AddWithValue("@Gender", i);
            cmd.Parameters.AddWithValue("@name", fullname.Text );
            cmd.Parameters.AddWithValue("@department", department.Text);
            cmd.Parameters.AddWithValue("@dob", dob.Text);
            cmd.Parameters.AddWithValue("@joindate", joindate.Text);
            cmd.Parameters.AddWithValue("@parentname", pname.Text );
            cmd.Parameters.AddWithValue("@parentnum", pmobile.Text);
            cmd.Parameters.AddWithValue("@number", number.Text);
            cmd.Parameters.AddWithValue("@adress",address.Text );
            cmd.Parameters.AddWithValue("@image",bytes );
            con.Open();
            cmd.ExecuteNonQuery();
            MessageBox.Show("New student added succesfully");
            Response.Redirect("~/Admin/students.aspx");
            con.Close();
        }

    } } } }