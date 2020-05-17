using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string db = "Database.mdb";
        MyAdoHelperAccess.ConnectToDb(db);
        contentDiv.InnerHtml = MyAdoHelperAccess.printDataTableWithDelete(db, "select * from[tbl_users]");
    }

    protected void deleteTt(object sender, EventArgs e)
    {
        int id = int.Parse(Request["nameBoxHidden"]);
        string db = "Database.mdb";
        MyAdoHelperAccess.ConnectToDb(db);
        string deleteQuery = "DELETE FROM [tbl_users] WHERE id = " + id + ";";
        MyAdoHelperAccess.DoQuery(db, deleteQuery);
        Response.Redirect(Request.RawUrl);
    }

}