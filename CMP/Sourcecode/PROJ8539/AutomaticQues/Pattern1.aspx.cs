using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Configuration;

public partial class Staffproc : System.Web.UI.Page
{
    string qtype;
  
    string pattern = "Pattern1";
      
    List<string> list = new List<string>();

    SqlConnection conn;

    public Random random = new Random();

    string at1, bt1, ct1, dt1, at2, bt2, ct2, dt2, at3, bt3, ct3, dt3;

    string al1, bl1, cl1, dl1, al2, bl2, cl2, dl2, al3, bl3, cl3, dl3;

    string getQuestion;

    protected void Page_Load(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        conn = new SqlConnection(con);
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
         
        at1 = dd1.SelectedItem.ToString(); bt1=dd2.SelectedItem.ToString(); ct1=dd3.SelectedItem.ToString();
        dt1=dd4.SelectedItem.ToString(); at2=dd5.SelectedItem.ToString(); bt2=dd6.SelectedItem.ToString();
        ct2=dd7.SelectedItem.ToString(); dt2=dd8.SelectedItem.ToString(); at3=dd9.SelectedItem.ToString();
        bt3=dd10.SelectedItem.ToString(); ct3=dd11.SelectedItem.ToString(); dt3=dd12.SelectedItem.ToString();
        al1 = dd13.SelectedItem.ToString(); bl1 = dd14.SelectedItem.ToString(); cl1 = dd15.SelectedItem.ToString();
        dl1 = dd16.SelectedItem.ToString(); al2 = dd17.SelectedItem.ToString(); bl2 = dd18.SelectedItem.ToString();
        cl2 = dd19.SelectedItem.ToString(); dl2 = dd20.SelectedItem.ToString(); al3 = dd21.SelectedItem.ToString();
        bl3 = dd22.SelectedItem.ToString(); cl3 = dd23.SelectedItem.ToString(); dl3 = dd24.SelectedItem.ToString();

        TextBox5.Text = setQuestion(at1,al1);
        TextBox6.Text = setQuestion(bt1, bl1);
        TextBox7.Text = setQuestion(ct1, cl1);
        TextBox8.Text = setQuestion(dt1, dl1);
        TextBox9.Text = setQuestion(at2, al2);
        TextBox10.Text = setQuestion(bt2, bl2);
        TextBox11.Text = setQuestion(ct2, cl2);
        TextBox12.Text = setQuestion(dt2, dl2);
        TextBox13.Text = setQuestion(at3, al3);
        TextBox14.Text = setQuestion(bt3, bl3);
        TextBox15.Text = setQuestion(ct3, cl3);
        TextBox16.Text = setQuestion(dt3, dl3);
        
      
        
    }

    public string setQuestion(string qtype,string dlevel)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT Questions FROM StaffQuestions " +
                              "WHERE Subject_Code='" + d1.SelectedItem.ToString() + "' AND Question_Type='" + qtype + "' AND Difficulty_level='" + dlevel + "'",conn);
       cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();


        while (dr.Read())
        {
            list.Add(dr.GetValue(0).ToString());
           
        }
        string[] questions = list.ToArray<string>();
        //SqlCommand command = new SqlCommand(stsqlCommand, con);
        //SqlDataAdapter adapter = new SqlDataAdapter();
        //adapter.SelectCommand = command;

        //DataTable table = new DataTable();
        //table.Locale = System.Globalization.CultureInfo.InvariantCulture;

        //adapter.Fill(table);

        //string[] result = new string[table.Rows.Count];
        //int i = 0;
        //foreach (DataRow dr in table.Rows)
        //{
        //    result[i++] = dr[0].ToString();

        //}
        //  getQuestion = result[random.Next(0, result.Length)];
        dr.Close();
        cmd.Dispose();
        conn.Close();
        getQuestion = questions[random.Next(0, questions.Length)];
        return getQuestion;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        d1.Visible = false;

        dd1.Visible=false; dd2.Visible = false; dd3.Visible = false; dd4.Visible = false; dd5.Visible = false; dd6.Visible = false; dd7.Visible = false;
        dd8.Visible = false; dd9.Visible = false; dd10.Visible = false; dd11.Visible = false; dd12.Visible = false; dd13.Visible = false; dd14.Visible = false;
        dd15.Visible = false; dd16.Visible = false; dd17.Visible = false; dd18.Visible = false; dd19.Visible = false; dd20.Visible = false; dd21.Visible = false;
        dd22.Visible = false; dd23.Visible = false; dd24.Visible = false;

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Pattern1.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        pnlPerson.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }
}
