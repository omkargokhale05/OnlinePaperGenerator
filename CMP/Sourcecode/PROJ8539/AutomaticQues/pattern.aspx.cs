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
using System.Configuration;

public partial class pattern : System.Web.UI.Page
{
    SqlConnection con;

    string qtype;
    static int count = 0;
    static int count1 = 11;
    string patern = "Pattern";

    public static string staffid, subcode;

    public static int sts, checksts;

    protected void Page_Load(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        con = new SqlConnection(conn);

        con.Open();
      //  refresh();
        if (Session["Staff"] != null)
        {
            Label6.Text = Session["Staff"].ToString();
        }
       
        SqlCommand cmd2 = new SqlCommand("select * from Staffallocation_Details where Staff_ID='" + Label6.Text + "'", con);
        cmd2.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds, "Staffallocation_Details");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        con.Close();
    }
    public void refresh()
    {
        TextBox4.Text = "";
        Label7.Text = "Question Type";
        qtype = null;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;

        con.Open();

        SqlCommand cmd = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);
        }
        dr.Close();            
    }
       

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        string stringToCheck = TextBox4.Text.ToLower();

        string[] Evaluationques = { "justify", "examine", "evaluate", "review", "assess", "present a case for", "defend", "report on", "investigate", "direct" };
        string[] Analyticques = { "criticism", "discuss", "break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "equation", "equal", "consider", "use", "apply", "discover", "give" };
        string[] Rememberques = { "what", "does", "how", "define", "describe", "define", "label", "explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
                //  ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";
                Label7.Visible = true;
                Label7.Text = "Evaluation Type";
            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
                // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";
                Label7.Visible = true;
                Label7.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
                // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";
                Label7.Visible = true;
                Label7.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
                // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";
                Label7.Visible = true;
                Label7.Text = "Remember Type";
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String difficulty_level = DropDownList1.SelectedValue.ToString();

       con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions(Questions,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type,Difficulty_level) values('" + TextBox4.Text + "','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','" + patern + "','" + difficulty_level + "')", con);
        cmd.ExecuteNonQuery();
        refresh();
        con.Close();
    }
}
