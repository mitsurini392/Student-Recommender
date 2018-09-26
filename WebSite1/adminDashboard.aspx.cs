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

public partial class adminDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminUser"] == null && Session["adminCourse"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
    }
    [System.Web.Services.WebMethod]
    public static string loadProfile(string adminUsername)
    {

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
    public static string universalQuery(string SQL)
    {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand(SQL, SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("adminLogin.aspx");
    }
}