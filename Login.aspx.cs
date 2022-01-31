using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.VisualBasic;
using System.Text;
using System.Collections;


public partial class _Default : System.Web.UI.Page
{

       public void login_Click(object sender, EventArgs e)
    {
        try
        {
            MySqlDataAdapter adapter = new MySqlDataAdapter();
            MySqlConnection conn = new MySqlConnection("Server=localhost; Database='html';uid=root;password=");
            conn.Open();


            MySqlCommand cmd = new MySqlCommand("SELECT * FROM users WHERE email='" + Name.Text + "'  AND Password='" + Password.Text + "'", conn);
            MySqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["Name"] = dr["Name"].ToString();
                    Session["email"] = dr["email"].ToString();
                    Session["Role"] = dr["Role"].ToString();
                    string userRole = dr["Role"].ToString();
                    switch (userRole)
                    {
                        case "Admin":
                            Response.Redirect("Index.aspx");
                            break;

                        case "Student":
                            Response.Redirect("Student/Index.aspx");
                            break;

                        case "Teacher":
                            Response.Redirect("Teacher/Index.aspx");
                            break;
                    }
                }
            }

            else if (passwordValidate.IsValid && emailValidate1.IsValid && emailValidate2.IsValid)
            {
                dr.Close();
                lblMssg.Text = "Email/Password is incorrect";
            }
            else
                lblMssg.Text = "";
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    public void imgBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("fingerprint.aspx");
    }
}