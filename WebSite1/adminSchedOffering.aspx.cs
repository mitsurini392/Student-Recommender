using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Collections;

public partial class adminSchedOffering : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["adminUser"] == null && Session["adminCourse"] == null) {
            Response.Redirect("adminLogin.aspx");
        }
    }

    [System.Web.Services.WebMethod]
    public static string loadProfile(string adminUsername) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("select * from tblAdmin WHERE adminUsername = '" + adminUsername + "'", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string checkSchedSubj(string courseCode, string subjCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT subjID, subjCode, courseCode FROM tblSubj, tblCurr WHERE tblSubj.currCode = tblCurr.currCode AND tblSubj.subjCode = '" + subjCode + "' AND tblCurr.courseCode = '" + courseCode + "'", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string validateSchedSubj(string courseCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT subjID, subjCode,subjName, courseCode FROM tblSubj, tblCurr WHERE tblSubj.currCode = tblCurr.currCode AND tblCurr.courseCode = '" + courseCode + "';", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string loadSched(string courseCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("select distinct schedAY , schedYear, schedSem from tblSched where courseCode = '" + courseCode+"' AND isUploaded = 1", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string loadSchedTable(string schedAY , string schedSem, string schedYear, string courseCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("select subjCode,subjName,schedYear,schedAY,schedSem,schedSection,schedRoom,schedProf,schedDesc From tblSched INNER JOIN tblSubj ON tblSubj.subjID = tblSched.subjID where schedAY = '"+schedAY+"' and schedYear = '"+schedYear+"' and schedSem = '"+schedSem+"' and courseCode = '"+courseCode+ "' and isUploaded = 1 ORDER BY subjName ASC", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static bool updateAndInsert(string SQLstring) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand(SQLstring, SQLConn.con);

        try {
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Close();
            SQLConn.con.Close();
            return true;
        }
        catch (Exception) {
            SQLConn.con.Close();
            return false;
        }

    }



    [System.Web.Services.WebMethod]
    public static string getCourses() {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblCourse", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();
    }

    [System.Web.Services.WebMethod]
    public static string getCurr(string courseCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblCurr WHERE courseCode = '" + courseCode + "';", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();
    }

    [System.Web.Services.WebMethod]
    public static string universalQuery(string SQL) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand(SQL, SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    protected void btnLogout_Click(object sender, EventArgs e) {
        Session.Clear();
        Response.Redirect("adminLogin.aspx");
    }
}