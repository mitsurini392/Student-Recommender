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
using System.Net.Mail;

public partial class adminLogin : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if(Session["adminUser"] != null) {
            Response.Redirect("adminStudentView.aspx");
        }
    }

    [System.Web.Services.WebMethod]
    public static string getEmail(string adminUsername) {

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblAdmin WHERE adminUsername = '" + adminUsername + "'", SQLConn.con);

        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        var ds = new DataSet();
        adapter.Fill(ds);

        SQLConn.con.Close();

        return ds.GetXml();
    }

    [System.Web.Services.WebMethod]
    public static bool sendEmail(string emailAddress,string password) {
        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(emailAddress);
        mail.From = new MailAddress("studentRecommender@gmail.com", "Student Recommender", System.Text.Encoding.UTF8);
        mail.Subject = "Forgot Password";
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = "Your password is "+ password;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.High;
        SmtpClient client = new SmtpClient("smtp.gmail.com");
        client.Port = 587;
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = new System.Net.NetworkCredential("studentRecommender@gmail.com", "henlo392");
        client.TargetName = "STARTTLS/smtp.gmail.com";
        try {
            client.Send(mail);
            return true;
        }
        catch (Exception ex) {
            Exception ex2 = ex;
            string errorMessage = string.Empty;
            while (ex2 != null) {
                errorMessage += ex2.ToString();
                ex2 = ex2.InnerException;
            }
            return false;
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e) {
        string username = txbUser.Text;
        string password = txbPass.Text;

        SQLConn.con.Close();
        SQLConn.con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblAdmin WHERE adminUsername = '" + username + "' AND adminPassword = '" + password + "';", SQLConn.con);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows) {
            while (reader.Read()) {
                Session["adminUser"] = username;
                Session["adminCourse"] = String.Format("{0}", reader["courseCode"]);
                Response.Redirect("adminStudentView.aspx");
            }
        }
        else {
            Response.Redirect("adminLogin.aspx?incorrectPass=true");
        }
        reader.Close();
        SQLConn.con.Close();
    }
}