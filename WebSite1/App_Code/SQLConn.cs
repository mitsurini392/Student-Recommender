using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for SQLConnection
/// </summary>
public class SQLConn {
    public static string CS = "Server=localhost;Database=student_reco;Trusted_Connection=True; MultipleActiveResultSets=true;";
    public static SqlConnection con = new SqlConnection(CS);
    
    public SQLConn() {
        
    }
}