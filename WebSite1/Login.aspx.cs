using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //Sign In Button
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        SQLConn.con.Close();
        SQLConn.con.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM tblStud WHERE studNo = '"+ txtbUsername.Text + "' AND studPass = '"+ txtbPassword.Text+"'", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                //Create a session with Student No
                Session["studNo"] = String.Format("{0}", reader["studNo"]);
                Session["userType"] = "student";
                Response.Redirect("studentGrade.aspx");
            }
        }
        else {
            incorrectUsername.InnerHtml = " <div class='callout callout-danger'> <p> Incorrect Password or Username </p> </div> ";
        }
        reader.Close();
        SQLConn.con.Close();

    }

}