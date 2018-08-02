using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SchedOrders : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(DBFunctions.ConString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string day = this.DropDownList1.SelectedValue;
        string time = this.DropDownList2.SelectedValue;
        string quant = this.DropDownList3.SelectedValue;
        string loc = this.DropDownList4.SelectedValue;
        string foodt = this.DropDownList5.SelectedValue;
        string servt = this.DropDownList6.SelectedValue;

        con.Open();
        String Query = "insert into Services values('معلق', '"+servt+"', '"+loc+"', '"+foodt+"', "+quant+", '"+time+"','"+day+"')";
        SqlCommand comm = new SqlCommand(Query, con);
        comm.ExecuteScalar();
        con.Close(); 
    }
}