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
            RadioButtonList q = RadioButtonList1;
            if (Session["questionNumber"] == null)
            {
                Session["questionNumber"] = 1;
            }

            if (Session["question"] == null)
            { 
                Session["question"] = getquestion();
            }

            if (Session["questionlist"] == null)
            {
                makeQestion();
            }
            else
            {
                q = (RadioButtonList)Session["questionlist"];
            }
            Response.Write(Session["questionNumber"]);
           
          

        }

        Allquestions getquestion()
        {
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

        protected void Button1_Click(object sender, EventArgs e)
        {
 
            Session["questionNumber"] = (int)Session["questionNumber"] + 1;

            makeQestion();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            if (RadioButtonList1.SelectedItem.ToString().CompareTo(((Allquestions)Session["question"]).results[(int)Session["questionNumber"]].correct_answer) == 0)
            {
                Response.Write("Correct");
            }
            else
            {
                Response.Write("incorrect");
            }
            Response.Write(RadioButtonList1.SelectedItem.ToString());
            Session["questionlist"] = RadioButtonList1;
        }

        private void makeQestion()
        {
            int questionNumber = (int)Session["questionNumber"];
            ((Allquestions)Session["question"]).results[questionNumber].incorrect_answers.Add(((Allquestions)Session["question"]).results[questionNumber].correct_answer);
            RadioButtonList1.Items.Clear();
            Allquestions quest = (Allquestions)Session["question"];
            category.Value = HttpUtility.HtmlDecode(quest.results[questionNumber].category);
            questions.Value = HttpUtility.HtmlDecode(quest.results[questionNumber].question);


            int i = 1;
            foreach (string s in quest.results[questionNumber].incorrect_answers)
            {
                RadioButtonList1.Items.Add(new ListItem(s, i.ToString()));
                i++;
            }
            Session["questionlist"] = RadioButtonList1;
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