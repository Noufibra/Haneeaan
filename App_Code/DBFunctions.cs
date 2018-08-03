using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBFunctions
/// </summary>
public class DBFunctions
{
    public static string ConString = "Data Source=DESKTOP-FUUM3M2;Initial Catalog=Hajj_Hakathon;Integrated Security=True";
    SqlConnection con = new SqlConnection(ConString);
	public DBFunctions()
	{
	}
    //Login
    public string getrole(string ID)
    {
        con.Open();
        SqlCommand c = new SqlCommand("select Role from Users where UserID=" + ID, con);
        var z = c.ExecuteScalar();
        con.Close();
        return z.ToString();
    }
    public string PW(String id)
    {
        string y = null;
        con.Open();
        String Query = "Select Password from Users where UserID=" + id;
        SqlCommand comm = new SqlCommand(Query, con);
        try
        {
            var x = comm.ExecuteScalar();
            y = x.ToString();
        }
        catch
        {
        }
        con.Close();

        return y;
    }

    public void submitOrder(string order, string servant) {
        con.Open();
        SqlCommand c = new SqlCommand("insert into Orders values ("+order+","+servant+")",con);
        try
        {
            c.ExecuteScalar();
        }
        catch (Exception ex)
        {
            HttpContext.Current.Response.Write(ex.Message);
        }
        con.Close();
    }

    public void status(string order) {
        con.Open();
        SqlCommand c = new SqlCommand("update Services set [الحالة]='محجوز' where [رقم الطلب]= '" + order+"'", con);
        c.ExecuteScalar();
        con.Close();


    }

}