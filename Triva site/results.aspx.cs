using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Triva_site
{
    public partial class results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int[] number = {(int)Session["correct"], 10- (int)Session["correct"] };
            string[] name = { "Correct " + number[0], "Incorrect " + number[1]};
            Chart1.Series[0].Points.DataBindXY(name, number);
            Color[] myGreenColorPalette = { Color.Blue, Color.Red };
            Chart1.Palette = System.Web.UI.DataVisualization.Charting.ChartColorPalette.None;
            Chart1.PaletteCustomColors = myGreenColorPalette;
            Chart1.Series[0].LabelForeColor = Color.White;
            WebApplication5.Allquestions questions = (WebApplication5.Allquestions)Session["question"];
            for (int i = 0; i < questions.results.Count; i++)
            {
                TableRow trow = new TableRow();
                TableCell tcell = new TableCell();
                tcell.Text = questions.results[i].question;
                trow.Cells.Add(tcell);
                Table1.Rows.Add(trow);

                for (int x = 0; x < questions.results[i].incorrect_answers.Count; x++)
                {
                    trow = new TableRow();
                    tcell = new TableCell();
                    if (questions.results[i].incorrect_answers[x].Equals(questions.results[i].correct_answer))
                    {
                        tcell.ForeColor = Color.Green;
                    }
                    else
                    {
                        tcell.ForeColor = Color.Red;
                    }
                    
                    tcell.Text = questions.results[i].incorrect_answers[x];
                    trow.Cells.Add(tcell);
                    Table1.Rows.Add(trow);
                }

            }

        }
    }
}