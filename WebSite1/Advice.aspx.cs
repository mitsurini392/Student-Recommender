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

public partial class Advice : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    [System.Web.Services.WebMethod]
    public static string getFailedSubj(string studNo) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblGrades INNER JOIN tblSubj ON tblGrades.subjID = tblSubj.subjID WHERE (gradesStatus = 'F' OR gradesStatus = 'D' OR gradesStatus = 'W') AND studNo = '" + studNo+"'; ", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    [System.Web.Services.WebMethod]
    public static string getFailedSubjPassed(string studNo,string subjID) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblGrades INNER JOIN tblSubj ON tblGrades.subjID = tblSubj.subjID WHERE gradesStatus = 'P' AND studNo = '" + studNo + "' AND tblSubj.subjID = '"+subjID+"'; ", SQLConn.con);

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
}