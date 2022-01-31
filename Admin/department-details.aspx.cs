using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_department_details : System.Web.UI.Page
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
                        htmlTable.Append("<td>" +
                            "<a href='student-details.aspx' class='avatar avatar-sm mr-2'>" +
                            "<img class='avatar-img rounded-circle' src= \'data:image/jpg;base64," + Convert.ToBase64String((byte[])articleReader["image"]) + "alt ='User Image'></a>" +
                            articleReader["name"] + "</td>");
                        htmlTable.Append("<td>" + articleReader["department"] + "</td>");
                        htmlTable.Append("<td>" + articleReader["dob"] + "</td>");
                        htmlTable.Append("<td>" + articleReader["parentname"] + "</td>");
                        htmlTable.Append("<td>" + articleReader["number"] + "</td>");
                        htmlTable.Append("<td>" + articleReader["adress"] + "</td>");
                        htmlTable.Append("<td>" + ("<div class='actions'>" +
                                            "<a href='edit-student.aspx' class='btn btn-sm bg-success-light mr-2'>" +
                                                                "<i class='fas fa-pen'></i>" +
                                             "</a>" +
                                             "<a href='#'class='btn btn-sm bg-danger-light'><i class='fas fa-trash'></i></a>" +
                           "</div>" + "</td>"));
                        int[] num;
                        num = new int[1000];
                        num[i] = Convert.ToInt32(articleReader["id"]);
                        i++;
                    }
                    displaystudents.Controls.Add(new Literal { Text = htmlTable.ToString() });

                    articleReader.Close();
                    articleReader.Dispose();
                }
            }
        }

    }
}