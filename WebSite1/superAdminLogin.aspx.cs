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

public partial class superAdminLogin : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if(Session["superAdmin"] != null) {
            Response.Redirect("superAdminHome.aspx");
        }
    }


    protected void btnLogin_Click(object sender, EventArgs e) {
        string username = txbUsername.Text;
        string password = txbPassword.Text;

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblSuperAdmin WHERE username = '" + username + "' AND passcode = '" + password + "';", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                Session["superAdmin"] = username;
                Response.Redirect("superAdminHome.aspx");
                }
        }
        else {
            Response.Redirect("superAdminLogin.aspx?incorrectPass=true");
        }
        reader.Close();
        SQLConn.con.Close();
    }
}