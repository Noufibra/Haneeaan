using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    DBFunctions s = new DBFunctions();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["UserID"] = null;
        Session["Role"] = null;
    }

    protected void btnLogin_OnClick(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            if (s.PW(txtUserID.Text) == txtPassword.Text)
            {

                Session["UserID"] = txtUserID.Text;
                Session["Role"] = s.getrole(txtUserID.Text);
                if (Session["Role"].ToString() == "Admin")
                    Response.Redirect("Default.aspx");
                else if (Session["Role"].ToString() == "Manager")
                    Response.Redirect("TraineesTableForManager.aspx");
                else
                    Response.Redirect("Default.aspx");


            }


            else
            {
                lblMsg.Text = "رقم الهوية\\السجل التجاري أو الرقم السري غير صحيح";
            }
        }
    }
    protected void Reg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}