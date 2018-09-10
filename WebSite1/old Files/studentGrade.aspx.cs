using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.IO;

public partial class studentGrade : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //If theres no session
        if (Session["studNo"] == null)
        {
            Response.Redirect("Login.aspx");

        }

        //Query to database 
        loadInfo();

        //Check if student submitted grade
        showGrades();
    }

    public void loadInfo() {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblStud WHERE studNo = '" + Session["studNo"] + "';", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                lbLastName.Text = String.Format("{0}", reader["studLast"]);
                lbMiddleName.Text = String.Format("{0}", reader["studMiddle"]);
                lbFirstName.Text = String.Format("{0}", reader["studFirst"]);
                lbUser.Text = Session["studNo"].ToString();

            }
        }
        else {
            Response.Write("No rows found.");
        }
        reader.Close();
        SQLConn.con.Close();
    }


    public void showGrades()
    {
        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT gradesYear,gradesSem FROM tblGrades WHERE studNo = '" + Session["studNo"] + "' GROUP BY gradesYear, gradesSem ORDER BY gradesYear desc,gradesSem desc;", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            //Clear grade sections
            gradeSections.InnerHtml = "";
            while (reader.Read()) {
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<div class='box box-primary'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<div class='box-header with-border'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<h3 class='box-title'>" + String.Format("{0}", reader["gradesYear"]) + " - " + String.Format("{0}", reader["gradesSem"]) + "</h3>";

                gradeSections.InnerHtml = gradeSections.InnerHtml + "<div class='box-tools pull-right'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<button type='button' class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</button>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</div>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<!-- /.box-tools -->";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</div>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<!-- /.box-header -->";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<div class='box-body'>";

                //Average status Section
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<div class='row'>";

                //////////////////////////////////////////
                //
                //      Average, Status Section
                //
                //////////////////////////////////////////

                gradeSections.InnerHtml = gradeSections.InnerHtml + "<div class='col-md-4'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<div class='box-body box-profile'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<ul class='list-group list-group-unbordered'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<li class='list-group-item'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<b>Average</b>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<p class='pull-right'>1.89</p>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</li>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<li class='list-group-item'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<b>Academic Status</b>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<p class='pull-right'>Regular</p>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</li>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<li class='list-group-item'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<b>Course</b>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<p class='pull-right'>BSIT</p>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</li>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</ul>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</div>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</div>";

                // END OF AVERAGE, STATUS SECTION

                //////////////////////////////////////////
                //
                //      Grades Section
                //
                //////////////////////////////////////////

                //Grades Table Header
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<div class='col-md-8'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<div class='table-responsive no-padding'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<table class='table table-hover'><tbody>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<tr style='background:#605CA8; color: white;'>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<th>Subject Code</th>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<th>Subject Name</th>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<th>Grades</th>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</tr>";


                //Grades Record
                gradeRecord(String.Format("{0}", reader["gradesYear"]), String.Format("{0}", reader["gradesSem"]));


                gradeSections.InnerHtml = gradeSections.InnerHtml + "</table></tbody>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</div>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</div>";
                //END OF GRADES TABLE

                gradeSections.InnerHtml = gradeSections.InnerHtml + "</div>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</div>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</div>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<!-- /.box-body -->";

            }
        }
        else {
            //Do nothing
        }
        reader.Close();
        SQLConn.con.Close();

        
    }
    public void gradeRecord(string gradesYear, string sem)
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblgrades WHERE studNo = '" + Session["studNo"].ToString() + "' AND gradesYear = '" + gradesYear + "' AND gradesSem = '" + sem + "';", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {

                gradeSections.InnerHtml = gradeSections.InnerHtml + "<tr>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<td>" + String.Format("{0}", reader["subjID"]) + "</td>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<td>" + String.Format("{0}", reader["subjName"]) + "</td>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "<td>" + String.Format("{0}", reader["gradesGrade"]) + "</td>";
                gradeSections.InnerHtml = gradeSections.InnerHtml + "</tr>";

            }
        }
        else {
            //Do nothing
        }
        reader.Close();

    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
    //Global Variables
    public static string finalInsertString = "asd";

    //Submit Grade Button
    protected void submitGrade_Click(object sender, EventArgs e)
    {

        if (gradeUpload.HasFile == true)
        {
            progressWindow.Attributes["style"] = "display: block";
            //Do Somethin about file
            StreamReader reader = new StreamReader(gradeUpload.FileContent);
            gradeSections.InnerHtml = "";
            //SQL String
            string insertGradeString = "";
            do
            {
                string textLine = reader.ReadLine();
                if (textLine.Contains("Welcome,"))
                {
                    textLine = textLine.ToLower();
                    if (textLine.Contains(lbUser.Text.ToLower()) == false)
                    {
                        Response.Write("<script>alert('Grade Sheet Does Not Match'); window.location.href = 'studentGrade.aspx';</script>");

                        break;
                    }
                }
                if (textLine.Contains("SCHOOL YEAR"))
                {
                    string schoolgradesYear = reader.ReadLine();
                    schoolgradesYear = schoolgradesYear.Substring(IndexOfOccurence(schoolgradesYear, ">", 2) + 1);
                    schoolgradesYear = schoolgradesYear.Substring(0, 4);
                    //Skip a line
                    reader.ReadLine();
                    string sem = reader.ReadLine();
                    sem = sem.Substring(IndexOfOccurence(sem, ">", 2) + 1);
                    sem = sem.Substring(0, sem.IndexOf("<"));

                    //Admission Status
                    while (reader.ReadLine().Contains("Admission Status") == false) { }
                    textLine = reader.ReadLine();
                    textLine = textLine.Substring(IndexOfOccurence(textLine, ">", 2) + 1);
                    textLine = textLine.Substring(0, textLine.IndexOf("<"));

                    //Average
                    //Loop unti line found GPA
                    while (reader.ReadLine().Contains("GPA") == false) { }
                    textLine = reader.ReadLine();
                    textLine = textLine.Substring(IndexOfOccurence(textLine, ">", 2) + 1);
                    textLine = textLine.Substring(0, textLine.IndexOf("<"));

                    //Grades Table

                    //Grades Row
                    do
                    {

                    } while (reader.ReadLine().Contains("Grade Status") == false);
                    reader.ReadLine();
                    reader.ReadLine();
                    reader.ReadLine();
                    insertGradeString = insertGradeString + System.Environment.NewLine + "INSERT INTO tblgrades (studNo,subjID,subjName,gradesGrade,gradesYear,gradesSem) VALUES(";
                    //Get Course Code
                    string subjectCode = reader.ReadLine();
                    subjectCode = subjectCode.Substring(subjectCode.IndexOf(">") + 1);
                    subjectCode = subjectCode.Substring(0, subjectCode.IndexOf("<"));

                    //Add ID to insert
                    insertGradeString = insertGradeString + "'" + Session["studNo"] + "'";
                    //Add subjectcode to insert
                    insertGradeString = insertGradeString + ",'" + subjectCode + "'";
                    //Get Subject Name
                    string subjectName = reader.ReadLine();
                    subjectName = subjectName.Substring(IndexOfOccurence(subjectName, ">", 2) + 1);
                    subjectName = subjectName.Substring(0, subjectName.IndexOf("<"));

                    insertGradeString = insertGradeString + ",'" + subjectName + "'";
                    reader.ReadLine();
                    reader.ReadLine();
                    reader.ReadLine();
                    //Get Score
                    string subjectGrade = reader.ReadLine();
                    subjectGrade = subjectGrade.Substring(subjectGrade.IndexOf(">") + 1);
                    subjectGrade = subjectGrade.Substring(0, subjectGrade.IndexOf("<"));
                    Debug.Print(subjectGrade);
                    //Add grade to insert 
                    insertGradeString = insertGradeString + ",'" + subjectGrade + "'";
                    //Add gradesYear and sem to insert 
                    insertGradeString = insertGradeString + ",'" + schoolgradesYear + "','" + sem + "');";
                    Debug.Print(insertGradeString);

                    bool nextSem = false;
                    //Loop Next Rows
                    do
                    {
                        reader.ReadLine();
                        reader.ReadLine();
                        reader.ReadLine();
                        reader.ReadLine();
                        //Get Subject Code
                        subjectCode = reader.ReadLine();
                        //Break Loop if no subject Found
                        if (subjectCode.Contains("</tr>") == true)
                        {
                            nextSem = true;
                            break;
                        }

                        subjectCode = subjectCode.Substring(subjectCode.IndexOf(">") + 1);
                        subjectCode = subjectCode.Substring(0, subjectCode.IndexOf("<"));

                        insertGradeString = insertGradeString + System.Environment.NewLine + "INSERT INTO tblgrades (studNo,subjID,subjName,gradesGrade,gradesYear,gradesSem) VALUES(";
                        //Add ID to insert
                        insertGradeString = insertGradeString + "'" + Session["studNo"] + "'";
                        //Add subjectcode to insert
                        insertGradeString = insertGradeString + ",'" + subjectCode + "'";
                        Debug.Print(subjectCode);
                        //Get Subject Name
                        subjectName = reader.ReadLine();
                        subjectName = subjectName.Substring(IndexOfOccurence(subjectName, ">", 2) + 1);
                        subjectName = subjectName.Substring(0, subjectName.IndexOf("<"));

                        insertGradeString = insertGradeString + ",'" + subjectName + "'";
                        Debug.Print(subjectName);
                        reader.ReadLine();
                        reader.ReadLine();
                        reader.ReadLine();
                        //Get Score
                        subjectGrade = reader.ReadLine();
                        subjectGrade = subjectGrade.Substring(subjectGrade.IndexOf(">") + 1);
                        subjectGrade = subjectGrade.Substring(0, subjectGrade.IndexOf("<"));

                        //Add grade to insert 
                        insertGradeString = insertGradeString + ",'" + subjectGrade + "'";
                        Debug.Print(subjectGrade);
                        //Add gradesYear and sem to insert 
                        insertGradeString = insertGradeString + ",'" + schoolgradesYear + "','" + sem + "');";
                        Debug.Print(insertGradeString);
                    } while (nextSem == false);


                }

            } while (reader.Peek() != -1);
            finalInsertString = insertGradeString;
            //Step 1 - Read From HTML
            reader.Close();
            uploadProgress.Attributes["style"] = "width: 50%";
            //Step 2 - Insert to SQL

            //Delete all records with ID

            SQLConn.con.Close();
            SQLConn.con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM tblgrades WHERE studNo = '" + Session["studNo"].ToString() + "';", SQLConn.con);

            cmd.ExecuteNonQuery();

            //Insert String
            using (StringReader reader2 = new StringReader(finalInsertString)) {
                string line;
                while ((line = reader2.ReadLine()) != null) {
                    if (line.Contains("INSERT") == true) {
                        cmd = new SqlCommand(line, SQLConn.con);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            uploadProgress.Attributes["style"] = "width: 100%";

            SQLConn.con.Close();

            Response.Redirect("studentGrade.aspx");

            //confirmGrade.Style.Add("display", "block");
        }
        else
        {
            Response.Write("<script>alert('Please upload a grade!');</script>");
        }
    }

    //Get total Line Number of Text File
    public static int GetLineNumbers(FileUpload fileName)
    {
        int ctr = 0;
        StreamReader reader = new StreamReader(fileName.FileContent);
        do
        {
            string textLine = reader.ReadLine();
            ctr++;
        } while (reader.Peek() != -1);
        reader.Close();
        return ctr;
    }

    //Get nth Occurence of char from string
    private int IndexOfOccurence(string s, string match, int occurence)
    {
        int i = 1;
        int index = 0;

        while (i <= occurence && (index = s.IndexOf(match, index + 1)) != -1)
        {
            if (i == occurence)
                return index;
            i++;
        }
        return -1;
    }


    //Put Grades to database
    protected void confirmGrade_Click(object sender, EventArgs e)
    {
        //Delete all records with ID

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("DELETE FROM tblgrades WHERE studNo = '" + Session["studNo"].ToString() + "';", SQLConn.con);

        cmd.ExecuteNonQuery();

        //Insert String
        using (StringReader reader = new StringReader(finalInsertString)) {
            string line;
            while ((line = reader.ReadLine()) != null) {
                if (line.Contains("INSERT") == true) {
                    cmd = new SqlCommand(line, SQLConn.con);
                    cmd.ExecuteNonQuery();
                }

            }
        }

        SQLConn.con.Close();

        Response.Redirect("studentGrade.aspx");


    }
}