﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

using System.Data;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Configuration;

public partial class Q3 : System.Web.UI.Page
{
    SqlConnection conn;
    public Random random = new Random();
    public List<int> randomList = new List<int>();
    public List<int> randomList1 = new List<int>();
    int num = 0, num1 = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        conn = new SqlConnection(con);

        string a = Session["Code"].ToString();
        l3.Text = a;
        conn.Open();
        string sql = "select count(*) from p3_dist2";
        SqlCommand cmd = new SqlCommand(sql, conn);
        int cnt = Convert.ToInt32(cmd.ExecuteScalar());

        string sql4 = "select count(*) from p3_dist15";
        SqlCommand cmd4 = new SqlCommand(sql4, conn);
        int cnt1 = Convert.ToInt32(cmd4.ExecuteScalar());

        for (int i = 0; i < 200; i++)
        {
            num = random.Next(1, cnt);
            if (!randomList.Contains(num))
                randomList.Add(num);
        }

        for (int i = 0; i < 100; i++)
        {
            num1 = random.Next(1, cnt1);
            if (!randomList1.Contains(num1))
                randomList1.Add(num1);
        }

        for (int i = 0; i < randomList.Count; i++)
        {

            string r = randomList[i].ToString();
            string sql1 = "select question,type from p3_dist2 where id='" + r + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, conn);
            SqlDataReader dr = cmd1.ExecuteReader();

            dr.Read();
            string b = dr.GetValue(0).ToString();
            string f = dr.GetValue(1).ToString();

            if (i == 0)
            {
                Label1.Text = b;
                a1.Text = f;
            }
            else if (i == 1)
            {
                Label2.Text = b;
                b1.Text = f;
            }
            else if (i == 2)
            {
                Label3.Text = b;
                C.Text = f;
            }
            else if (i == 3)
            {
                Label4.Text = b;
                d.Text = f;
            }
            else if (i == 4)
            {
                Label5.Text = b;
                e1.Text = f;
            }
            else if (i == 5)
            {
                Label6.Text = b;
                f1.Text = f;
            }
            else if (i == 6)
            {
                Label7.Text = b;
                g.Text = f;
            }
            else if (i == 7)
            {
                Label8.Text = b;
                h.Text = f;
            }
            else if (i == 8)
            {
                Label9.Text = b;
                i1.Text = f;
            }
            else if (i == 9)
            {
                Label10.Text = b;
                j.Text = f;
            }
            dr.Close();
        }

        // Label12.Text = cnt1.ToString();
        for (int j = 0; j < randomList1.Count; j++)
        {

            string s = randomList1[j].ToString();
            string sql5 = "select question,type from p3_dist15 where id='" + s + "'";
            SqlCommand cmd2 = new SqlCommand(sql5, conn);
            SqlDataReader dr1 = cmd2.ExecuteReader();

            dr1.Read();
            string c = dr1.GetValue(0).ToString();
            string g = dr1.GetValue(1).ToString();

            if (j == 0)
            {
                Label12.Text = c;
                k.Text = g;
            }
            else if (j == 1)
            {
                Label13.Text = c;
                l.Text = g;
            }
            else if (j == 2)
            {
                Label15.Text = c;
                m.Text = g;
            }
            else if (j == 3)
            {
                Label16.Text = c;
                n.Text = g;
            }


            dr1.Close();
        }

        conn.Close();

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Pattern3.pdf");
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