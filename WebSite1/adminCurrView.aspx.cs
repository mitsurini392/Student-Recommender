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

public partial class adminCurrView : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["adminUser"] == null && Session["adminCourse"] == null) {
            Response.Redirect("adminLogin.aspx");
        }
    }

    [System.Web.Services.WebMethod]
    public static string getCurrCodes(string courseCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblCurr WHERE courseCode = '"+courseCode+"'", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();
    }

    [System.Web.Services.WebMethod]
    public static Array getYear(string currCode) {
        List<string> years = new List<string>();

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("select subjYear from tblsubj WHERE currCode = '" + currCode +"' group by subjYear; ", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                years.Add(String.Format("{0}", reader["subjYear"]));
            }
        }
        else {
            //No Subjects
        }
        reader.Close();

        SQLConn.con.Close();

        string[] strYears = years.ToArray();

        Debug.Print("XD");
        return strYears;
    }

    [System.Web.Services.WebMethod]
    public static Array getSemester(string currCode, string year) {
        List<string> semester = new List<string>();

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("select subjSem from tblsubj WHERE currCode = '"+currCode+"' AND subjYear = "+year+" group by subjSem; ", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                semester.Add(String.Format("{0}", reader["subjSem"]));
            }
        }
        else {
            //No Subjects
        }
        reader.Close();

        SQLConn.con.Close();

        string[] strSemester = semester.ToArray();
        Debug.Print("XD");
        return strSemester;
    }

    [System.Web.Services.WebMethod]
    public static string getSemesterTable(string currCode, string year, string sem) {
        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT subjid,subjcode,currCode,subjName,subjYear,subjsem, subjUnits,subjClassi FROM tblSubj WHERE currCode = '" + currCode+"' and subjYear = "+year+" and subjSem = "+sem+" AND subjStat = 'ACTIVE'; ", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();
        

        Debug.Print("XD");

        return ds.GetXml();
    }

    [System.Web.Services.WebMethod]
    public static string getPreReq(string subjID) {
        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblPreReq WHERE subjID = '"+subjID+"' ", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();


        Debug.Print("XD");

        return ds.GetXml();
    }

    [System.Web.Services.WebMethod]
    public static string getCoReq(string subjID) {
        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblCoReq WHERE subjID = '" + subjID + "' ", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();


        Debug.Print("XD");

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

    protected void btnLogout_Click(object sender, EventArgs e) {
        Session.Clear();
        Response.Redirect("adminLogin.aspx");
    }

}