using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(DBFunctions.ConString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string ServType = this.RadioButtonList1.SelectedValue;
        string Who = this.RadioButtonList2.SelectedValue;

        con.Open();
        String Query = "insert into Users values(" + ID.Text + ", '" + Name.Text + "'," + PW.Text + ",'"+Who+"','" + Email.Text + "' ,'"+ServType+"')";
        SqlCommand comm = new SqlCommand(Query, con);
        comm.ExecuteScalar();
        con.Close(); 
    }
}