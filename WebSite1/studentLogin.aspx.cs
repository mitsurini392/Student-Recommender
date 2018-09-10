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


public partial class studentLogin : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if(Session["studentUser"] != null) {
            Response.Redirect("studentHome.aspx");
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e) {

        string strUsername = username.Text;
        string strPassword = passcode.Text;

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblStud WHERE studNo = '"+strUsername+"' AND studPass = '"+strPassword+"'", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                Session["studentUser"] = strUsername;
                Session["studentCourse"] = String.Format("{0}", reader["courseCode"]);
                Response.Redirect("studentHome.aspx");
            }
        }
        else {
            Response.Redirect("studentLogin.aspx?incorrectPass=true");
        }
        reader.Close();
        SQLConn.con.Close();


    }


}