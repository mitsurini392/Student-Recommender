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

public partial class adminReports : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["adminUser"] == null && Session["adminCourse"] == null) {
            Response.Redirect("adminLogin.aspx");
        }
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