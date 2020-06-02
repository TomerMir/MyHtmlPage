using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void singin(Object sender, EventArgs e)
    {
        string db = "Database.mdb";
        MyAdoHelperAccess.ConnectToDb(db);
        string user = Request["username"];
        string pass = Request["password"];

        string query = "select * from [tbl_users] where username='" + user + "' and password='" + pass + "';";

        if (user == "admin" && pass == "admin")
        {
            Response.Redirect("Delete.aspx");
            return;
        }

        if (MyAdoHelperAccess.IsExist(db, query))
        {
            Response.Redirect("OpenPage.aspx");
        }
        else
        {
            error.InnerHtml = "שם משתמש או סיסמא שגויים";
        }

    }
}