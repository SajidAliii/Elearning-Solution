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


public partial class Admin_departments : System.Web.UI.Page
{
    
        StringBuilder htmlTable = new StringBuilder();
            private void Page_Load(object sender, EventArgs e)
        {
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
                    scmd.CommandText = "SELECT * FROM department";
                    MySqlDataReader articleReader = scmd.ExecuteReader();


                    if (articleReader.HasRows)
                    {
                    
                        int i = 0;
                    String[] ii;
                    while (articleReader.Read())
                        {

                            htmlTable.Append("<tr>");
                            htmlTable.Append("<td>" +articleReader["id"]+" </td>");
                        htmlTable.Append("<td>" + "<a href = 'department-details.aspx' >" + articleReader["name"] + "</a> " + "</td>");
                            htmlTable.Append("<td>" + articleReader["hod"] + "</td>");
                            htmlTable.Append("<td>" + articleReader["startyear"] + "</td>");
                            htmlTable.Append("<td>" + articleReader["numberofstudent"] + "</td>");
                        htmlTable.Append("<td>" + ("<div class='actions'>" +
                                           "<a href='edit-department.aspx' class='btn btn-sm bg-success-light mr-2'>" +
                                                               "<i class='fas fa-pen'></i>" +
                                            "</a>" +
                                            "<a href='#'class='btn btn-sm bg-danger-light'><i class='fas fa-trash'></i></a>" +
                          "</div>" + "</td>"));
                        i++;
                        }
                        displaydepartment.Controls.Add(new Literal { Text = htmlTable.ToString() });

                        articleReader.Close();
                        articleReader.Dispose();
                    }
                }
            }

        }
    }
