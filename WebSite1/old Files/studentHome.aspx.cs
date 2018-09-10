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

public partial class studentHome : System.Web.UI.Page
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
        loadProfile();
    }

    public void loadInfo() {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblStud WHERE studNo = '"+ Session["studNo"] +"';", SQLConn.con);

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

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }

    private void loadProfile ()
    {
        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblStud WHERE studNo = '" + Session["studNo"].ToString() + "';", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                profileName.InnerHtml = String.Format("{0}", reader["studFirst"]) + " " + String.Format("{0}", reader["studMiddle"]) + " " + String.Format("{0}", reader["studLast"]);
                studNo.InnerHtml = String.Format("{0}", reader["studNo"]);
                studContact.InnerHtml = String.Format("{0}", reader["studContact"]);
                studEmail.InnerHtml = String.Format("{0}", reader["studEmail"]);

                if (String.Format("{0}", reader["studEmail"]) == "") {
                    studEmail.InnerHtml = "<small class='label pull-right bg-red'>!</small>";
                }
            }
        }
        else {
            Response.Write("No rows found.");
        }
        reader.Close();
        SQLConn.con.Close();

    }

    [System.Web.Services.WebMethod]
    public static Array getStudentSemester(string studNo,int whatToReturn)
    {
        //Create Semester array
        List<string> yrsem = new List<string>();
        List<string> yrsemavg = new List<string>();

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT gradesYear, gradesSem,avg(cast(gradesGrade as decimal(18,2))) as grade FROM tblgrades WHERE studNo = '" + studNo + "' AND not gradesGrade in ('P','F','W','D','') GROUP BY gradesYear, gradesSem ORDER BY gradesYear asc,gradesSem asc;", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                yrsem.Add(String.Format("{0}", reader["gradesYear"]) + " - " + String.Format("{0}", reader["gradesSem"]));
                if (String.Format("{0}", reader["grade"]).Length > 1) {
                    yrsemavg.Add((String.Format("{0}", reader["grade"])));
                }
            }
        }
        else {
            //no Record Found
        }
        reader.Close();
        SQLConn.con.Close();


        string[] semesters = yrsem.ToArray();
        string[] averages = yrsemavg.ToArray();


        if (whatToReturn == 1) {
            return averages;
        }
        else if (whatToReturn == 0) {
            return semesters;
        }
        return semesters;

    }
}