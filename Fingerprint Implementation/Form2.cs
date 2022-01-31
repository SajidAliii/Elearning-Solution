using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

using Excel = Microsoft.Office.Interop.Excel;
using System.Reflection;

using PatternRecognition.FingerprintRecognition.Core;
using PatternRecognition.FingerprintRecognition.FeatureDisplay;

namespace Fingerprint_Recognition_Project
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

            //try
            //{
            //    System.Data.OleDb.OleDbConnection MyConnection;
            //    System.Data.OleDb.OleDbCommand myCommand = new System.Data.OleDb.OleDbCommand();
            //    string sql = null;
            //    MyConnection = new System.Data.OleDb.OleDbConnection("provider=Microsoft.jet.OLEDB.4.0;Data Source='c:\\DB.xlsl';Extended Properties=Excel 8.0;");
            //    MyConnection.Open();
            //    myCommand.Connection = MyConnection;
            //    MessageBox.Show("connected");
            //   // sql = "Update [Sheet1$] set name = 'New Name' where id=1";
            //   // myCommand.CommandText = sql;
            //   // myCommand.ExecuteNonQuery();
            //   // MyConnection.Close();
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.ToString());
            //}

        }
    }
}
