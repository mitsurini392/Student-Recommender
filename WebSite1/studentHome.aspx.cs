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

public partial class studentHome : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["studentUser"] == null) {
            Response.Redirect("studentLogin.aspx");
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e) {
        Session.Clear();
        Response.Redirect("studentLogin.aspx");
    }

    [System.Web.Services.WebMethod]
    public static string loadProfile(string studNo) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblStud WHERE studNo = '"+studNo+"';", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }
    [System.Web.Services.WebMethod]
    public static string getEquivSubj(string currCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT subjCode,subjName FROM tblSubj INNER JOIN tblCurr ON tblSubj.currCode = tblCurr.currCode WHERE tblSubj.currCode = '"+currCode+"';", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string loadEnrollSched(string courseCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblEvent WHERE courseCode = '" + courseCode + "';", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string loadPetitions(string studNo) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblPetStud INNER JOIN tblPet ON tblPetStud.petSubjID = tblPet.petSubjID WHERE studNo = '"+studNo+"'; ", SQLConn.con);

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
    public static string getCurr(string courseCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT currCode FROM tblCurr WHERE courseCode = '" + courseCode + "';", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string checkGradeOnCurr(string subjID, string currCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT subjID FROM tblSubj WHERE currCode = '" + currCode + "' AND subjID = '"+subjID+"';", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string getEquivSubjID(string subjCode, string currCode) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT subjID FROM tblSubj WHERE currCode = '" + currCode + "' AND subjCode = '" + subjCode + "';", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string getEquivSubjCode(string subjID) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT subjCode FROM tblSubj WHERE subjID = '"+subjID+"'", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

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
                errorMessage = String.Format("{0}", reader["ErrorMessage"]);
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
    public static string universalQuery(string SQL) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand(SQL, SQLConn.con);

        try
        {
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            var ds = new DataSet();
            adapter.Fill(ds);

            SQLConn.con.Close();

            return ds.GetXml();
        }
        catch (Exception e)
        {
            return e.ToString();
            throw;
        }

    }

    [System.Web.Services.WebMethod]
    public static string updatePic(string base64,string studNo) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("UPDATE tblStud SET studPic = '" + base64 + "' WHERE studNo = '" + studNo + "'", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }
}