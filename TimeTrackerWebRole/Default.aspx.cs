using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Default_aspx : System.Web.UI.Page

{
    public Default_aspx ()
    {
        Load += new EventHandler(Page_Load);
    }
    
    void Page_Load(object sender, EventArgs e)
    {
        Response.Write("~/TimeTracker/TimeEntry.aspx");
        Response.Redirect("~/TimeTracker/TimeEntry.aspx");
    }
}
