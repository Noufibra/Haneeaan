using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AdminTaken : System.Web.UI.Page
{
    DBFunctions x = new DBFunctions();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string selectedValue = Request.Form["MyRadioButton"];
        //string c = Session["UserID"].ToString();

        x.submitOrder(selectedValue,Session["UserID"].ToString());
        x.status(Session["UserID"].ToString());
        Response.Redirect("AdminTaken.aspx");
        //x.Assign(selectedValue, TrID);
        //Response.Redirect("Default2.aspx");
    }
}