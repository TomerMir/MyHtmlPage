using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void register(object sender, EventArgs e)
    {
        string db = "Database.mdb";
        MyAdoHelperAccess.ConnectToDb(db);
        string firstname = Request["firstname"];
        string lastname = Request["lastname"];
        string birth = Request["birth"];
        string gender = Request["gender"];
        string username = Request["username"];
        string password = Request["password"];
        string mail = Request["mail"];
        string phone = Request["phone"];
        string checkQuery = "select * from [tbl_users] where username ='" + username + "';";
        if (MyAdoHelperAccess.IsExist(db, checkQuery))
        {
            Response.Write("Usernmae already exists");
        }
        else
        {
            string registerQuery = "insert into tbl_users (username,Fname,Lname,password,email,bday,gender,phoneNum)  values ('" + username + "','" + firstname + "','" + lastname + "','" + password + "','" + mail + "',#" + birth + "#,'" + gender + "','" + phone + "');";

            MyAdoHelperAccess.DoQuery(db, registerQuery);
            Response.Redirect("LoginPage.aspx");
        }

    }
}