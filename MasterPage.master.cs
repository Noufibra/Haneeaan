using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"] != null)
        {
            String role = Session["Role"].ToString();
            if (role == "Admin")
            {
                order.Visible = true;
                SignUp.Visible = false;
                AdminH.HRef= "AdminHome.aspx";
            }
            else
            {
                order.Visible = false;
                SignUp.Visible = false;
                AdminH.HRef = "AdminTaken.aspx";
                //Response.Redirect("Denied.aspx");
            }

        }
        else
        {
            order.Visible = false;
            SignUp.Visible = true;
           Response.Redirect("Denied.aspx");
        }
    }
}
