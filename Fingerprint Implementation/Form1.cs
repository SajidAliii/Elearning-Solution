using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing.Imaging;

using PatternRecognition.FingerprintRecognition.Core;
using PatternRecognition.ROC;
using PatternRecognition.FingerprintRecognition.FeatureExtractors;
using PatternRecognition.FingerprintRecognition.Matchers;
using PatternRecognition.FingerprintRecognition.ResourceProviders;
using ImageProcessingTools;


namespace Fingerprint_Recognition_Project
{
    public partial class Form1 : Form
    {
     
        public Form1()
        {
            InitializeComponent();
        }

        public string score;
        public string qry;
        public string temp;

        private Bitmap Change_Resolution(string file)
        {
            using (Bitmap bitmap = (Bitmap)Image.FromFile(file))
            {
                using (Bitmap newBitmap = new Bitmap(bitmap))
                {
                    newBitmap.SetResolution(500,500);
                    return newBitmap;
                        }
            }
        }



        private void match(string query, string template)
        {
            Change_Resolution(query);
            Change_Resolution(template);
            // Loading fingerprints
            var fingerprintImg1 = ImageLoader.LoadImage(query);
            var fingerprintImg2 = ImageLoader.LoadImage(template);
            //// Building feature extractor and extracting features
            var featExtractor = new PNFeatureExtractor() { MtiaExtractor = new Ratha1995MinutiaeExtractor() };
            var features1 = featExtractor.ExtractFeatures(fingerprintImg1);
            var features2 = featExtractor.ExtractFeatures(fingerprintImg2);

            // Building matcher and matching
            var matcher = new PN();
            double similarity = matcher.Match(features1, features2);
            score = similarity.ToString("0.000");
            MessageBox.Show(similarity.ToString("0.000"));

        }


        private void Form1_Load(object sender, EventArgs e)
        {
            //// Change_Resolution("C:/Users/Olaseyo/Documents/Visual Studio 2015/Projects/Fingerprint_Recognition_Project/Fingerprint_Recognition_Project/bin/Debug/binaryfiles/101_1.tif","101_1.bmp");
            //Change_Resolution("C:/Users/Olaseyo/Documents/Visual Studio 2015/Projects/Fingerprint_Recognition_Project/Fingerprint_Recognition_Project/bin/Debug/binaryfiles/101_4.tif", "binaryfiles/101_4.bmp");
            //// Loading fingerprints
            //var fingerprintImg1 = ImageLoader.LoadImage("C:/Users/Olaseyo/Documents/Visual Studio 2015/Projects/Fingerprint_Recognition_Project/Fingerprint_Recognition_Project/bin/Debug/binaryfiles/101_1.bmp");


            //var fingerprintImg2 = ImageLoader.LoadImage("C:/Users/Olaseyo/Documents/Visual Studio 2015/Projects/Fingerprint_Recognition_Project/Fingerprint_Recognition_Project/bin/Debug/binaryfiles/101_4.bmp");


            //pictureBox1.ImageLocation = "C:/Users/Olaseyo/Documents/Visual Studio 2015/Projects/Fingerprint_Recognition_Project/Fingerprint_Recognition_Project/bin/Debug/binaryfiles/101_1.bmp";

            //pictureBox2.ImageLocation = "C:/Users/Olaseyo/Documents/Visual Studio 2015/Projects/Fingerprint_Recognition_Project/Fingerprint_Recognition_Project/bin/Debug/binaryfiles/101_4.bmp";



            ////// Building feature extractor and extracting features
            //var featExtractor = new PNFeatureExtractor() { MtiaExtractor = new Ratha1995MinutiaeExtractor() };
            //var features1 = featExtractor.ExtractFeatures(fingerprintImg1);
            //var features2 = featExtractor.ExtractFeatures(fingerprintImg2);

            //// Building matcher and matching
            //var matcher = new PN();
            //double similarity = matcher.Match(features1, features2);
            //MessageBox.Show(similarity.ToString("0.000"));

        }



        //public string Return_Filename(string filename) {
        //    string[] strarray= null;
        //    char[] splitchar = {'\\','.'};
        //    int totarray;
        //    for (int i = 0; i < splitchar.Length; i++)
        //    {
        //        strarray = filename.Split(splitchar[i]);
        //        totarray = strarray.Length;

        
        //    }
        //    string realname_ext = strarray[totarray - 1];
        //}


        private void button1_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.ShowDialog();

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                string fileName;
                fileName = dlg.FileName;
                qry = fileName;
                pictureBox1.ImageLocation = qry;
          
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.ShowDialog();

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                string fileName;
                fileName = dlg.FileName;
                temp= fileName;
                pictureBox2.ImageLocation = temp;
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            match(qry, temp);
        }
    }
}
