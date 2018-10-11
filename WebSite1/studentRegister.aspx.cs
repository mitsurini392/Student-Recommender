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

public partial class studentRegister : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    [System.Web.Services.WebMethod]
    public static string getCourses() {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblCourse WHERE courseStatus = 'YES';", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }
    //getCurr
    [System.Web.Services.WebMethod]
    public static string getCurr(string courseCode) {

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
        catch (Exception e) {
            Debug.WriteLine(e.ToString());
            SQLConn.con.Close();
            return false;
        }

    }
}