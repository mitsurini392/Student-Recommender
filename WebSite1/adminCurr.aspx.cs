using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;

public partial class adminCurr : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void btnLogout_Click(object sender, EventArgs e) {

    }

    [System.Web.Services.WebMethod]
    public static Array getCourseName() {
        List<string> courseNames = new List<string>();

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblCourse", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                courseNames.Add(String.Format("{0}", reader["courseName"]));
            }
        }
        else {
            //No Courses
        }
        reader.Close();

        SQLConn.con.Close();

        string[] StrcourseNames = courseNames.ToArray();
        return StrcourseNames;
    }

    [System.Web.Services.WebMethod]
    public static String getCourseCode(string courseName) {

        string courseCode = "";
        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT courseCode FROM tblCourse WHERE courseName = '"+ courseName +"'", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                courseCode = String.Format("{0}", reader["courseCode"]);
            }
        }
        else {
            //No Courses
        }
        reader.Close();

        SQLConn.con.Close();

        return courseCode;
    }

    [System.Web.Services.WebMethod]
    public static string executeToSQL(string sqlString) {

        string errorMessage = "";
        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                errorMessage =  String.Format("{0}", reader["ErrorMessage"]);
            }
        }
        else {
            //No Errors
        }

        reader.Close();
        SQLConn.con.Close();

        if (errorMessage != "") {
            return errorMessage;
        }
        else {
            return "ok";
        }
        
    }

    [System.Web.Services.WebMethod]
    public static bool checkCurriculum(string currCode) {

        Debug.Print(currCode);
        bool exist = false;
        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT currCode FROM tblCurr WHERE currCode = '" + currCode + "';", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                exist = true;
            }    
        }
        else {
            exist = false;
        }
        reader.Close();

        SQLConn.con.Close();

        return exist;
    }

}