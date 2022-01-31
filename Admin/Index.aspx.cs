using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

public partial class Admin_Index : System.Web.UI.Page
{
    StringBuilder htmlTable = new StringBuilder();
    StringBuilder htmlTable2 = new StringBuilder();
    private void Page_Load(object sender, EventArgs e){
            namee.Text = Session["Name"].ToString();
        rolee.Text = Session["Role"].ToString();
        MySqlDataAdapter adapter = new MySqlDataAdapter();
        MySqlConnection conn = new MySqlConnection("Server=localhost; Database='html';uid=root;password=");
        conn.Open();

        if (!IsPostBack)
        {
            using (MySqlCommand scmd = new MySqlCommand())
            {
                scmd.Connection = conn;
                scmd.CommandType = CommandType.Text;
                scmd.CommandText = "SELECT * FROM student";
                MySqlDataReader articleReader = scmd.ExecuteReader();

                if (articleReader.HasRows)
                {
                    int i = 0;
                    while (articleReader.Read())
                    {
                        byte[] bytes;
                        string filename;
                        bytes = (byte[])articleReader["image"];
                        filename = articleReader["image"].ToString();
                        string l = articleReader["id"].ToString();
                        htmlTable.Append("<tr>");
                        htmlTable.Append("<td>" + articleReader["id"] + "</td>");
                        htmlTable.Append("<td>" + articleReader["name"] + "</td>");
                        htmlTable.Append("<td>" + articleReader["Gender"] + "</td>");
                        htmlTable.Append("<td>" + articleReader["department"] + "</td>");
                        htmlTable.Append("<td>" + articleReader["joindate"] + "</td>");

                        i=i+1;
                    }
                    PlaceHolder1.Controls.Add(new Literal { Text = htmlTable.ToString() });
                    numberstu.Text = i.ToString();

                    articleReader.Close();
                    articleReader.Dispose();
                }
            }
        }


        using (MySqlCommand scmd = new MySqlCommand())
        {
            scmd.Connection = conn;
            scmd.CommandType = CommandType.Text;
            scmd.CommandText = "SELECT * FROM teacher";
            MySqlDataReader articleReader = scmd.ExecuteReader();

            if (articleReader.HasRows)
            {
                int i =0;
                while (articleReader.Read())
                {
                    byte[] bytes;
                    string filename;
                    bytes = (byte[])articleReader["image"];
                    filename = articleReader["image"].ToString();
                    string l = articleReader["id"].ToString();
                    htmlTable2.Append("<tr>");
                    htmlTable2.Append("<td>" + articleReader["id"] + "</td>");
                    htmlTable2.Append("<td>" + articleReader["name"] + "</td>");
                    htmlTable2.Append("<td>" + articleReader["Gender"] + "</td>");
                    htmlTable2.Append("<td>" + articleReader["department"] + "</td>");
                    htmlTable2.Append("<td>" + articleReader["joindate"] + "</td>");

                    i++;
                }
                PlaceHolder2.Controls.Add(new Literal { Text = htmlTable2.ToString() });
                numberteach.Text = (i.ToString());

                articleReader.Close();
                articleReader.Dispose();
            }
        }

                using (MySqlCommand scmd = new MySqlCommand())
                {
                    scmd.Connection = conn;
                    scmd.CommandType = CommandType.Text;
                    scmd.CommandText = "SELECT * FROM department";
                    MySqlDataReader articleReader = scmd.ExecuteReader();


                    if (articleReader.HasRows)
                    {
                        int i = 0;
                        while (articleReader.Read())
                        {
                                                     i++;
                        }
                numdep.Text = i.ToString();
                        articleReader.Close();
                        articleReader.Dispose();
                    }
                }
            }

        }





