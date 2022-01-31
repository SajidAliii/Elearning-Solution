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

public partial class Admin_add_teacher : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        namee.Text = Session["Name"].ToString();
        rolee.Text = Session["Role"].ToString();
    }

    protected void submit_Click(object sender, EventArgs e)
    {

        
       

            MySqlConnection conn = new MySqlConnection("Server=localhost; Database='html';uid=root;password=");
        conn.Open();
        string chechuser = "SELECT Name FROM users where Name='" + username.Text + "'";
        MySqlCommand sscmd = new MySqlCommand(chechuser, conn);
        var result= sscmd.ExecuteScalar();
        conn.Close();

        if (result != null)
        {
            error.Visible = true;
        }
        else
         {
            if (gender.Text == "Female") { i = 0; }
            else { i = 1; }


            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    MySqlConnection con = new MySqlConnection("Server=localhost; Database='html';uid=root;password=");

                    using (MySqlCommand cmd = new MySqlCommand("insert into teacher (id,Gender,name,department,dob,joindate,number,adress,image) values (@id,@Gender,@name,@department,@dob,@joindate,@number,@adress,@image)"))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@id", id.Text);
                        cmd.Parameters.AddWithValue("@Gender", i);
                        cmd.Parameters.AddWithValue("@name", fullname.Text);
                        cmd.Parameters.AddWithValue("@department", department.Text);
                        cmd.Parameters.AddWithValue("@dob", dob.Text);
                        cmd.Parameters.AddWithValue("@joindate", joindate.Text);
                        cmd.Parameters.AddWithValue("@number", number.Text);
                        cmd.Parameters.AddWithValue("@adress", address.Text);
                        cmd.Parameters.AddWithValue("@image", bytes);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        System.Windows.MessageBox.Show("New Teacher added succesfully");
                        Response.Redirect("~/Admin/teachers.aspx");
                        con.Close();
                    }
                }
            }
        }
    }
}