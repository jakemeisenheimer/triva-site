using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Allquestions quest = getquestion();
            category.Value = quest.results[0].category;
            questions.Value = quest.results[0].question;
            choices.Value = quest.results[0].correct_answer +convertList(quest.results[0].incorrect_answers);
        }

        Allquestions getquestion() {
            System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12 | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls;
            StringBuilder sb = new StringBuilder();
            byte[] buf = new byte[8192];
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://opentdb.com/api.php?amount=10");
            HttpWebResponse responce = (HttpWebResponse)request.GetResponse();
            Stream resstream = responce.GetResponseStream();
            string tempString = null;

            int count = 0;
            do
            {
                count = resstream.Read(buf, 0, buf.Length);
                if (count != 0)
                {
                    tempString = Encoding.ASCII.GetString(buf, 0, count);
                    sb.Append(tempString);
                }
            }
            while (count > 0);
            JavaScriptSerializer ser = new JavaScriptSerializer();

            Allquestions response = ser.Deserialize<Allquestions>(tempString);
            return response;
        }

        private string convertList(List<String> incorrect)
        {
            string incore = "";
            foreach (string a in incorrect)
            {
                incore += "," +a;
            }
            return incore;
        }
    }

    

    public class singlequestion
    {
        public string category { get; set; }
        public string type { get; set; }
        public string difficulty { get; set; }
        public string question { get; set; }
        public string correct_answer { get; set; }
        public List<string> incorrect_answers { get; set; }
    }

    public class Allquestions
    {
        public int response_code { get; set; }
        public List<singlequestion> results { get; set; }
    }
}