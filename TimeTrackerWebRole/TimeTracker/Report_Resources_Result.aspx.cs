using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTrackerWebRole.TimeTracker
{
    public partial class Report_Resources_Result : System.Web.UI.Page
    {
       public Report_Resources_Result()
    {
    }

    void Page_Load(object sender, EventArgs e)
    {

    }

    protected void OnListUserTimeEntriesItemCreated(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            ObjectDataSource ds = e.Item.FindControl("TimeEntryData") as ObjectDataSource;
            if (ds != null && (DataBinder.Eval(e.Item.DataItem, "UserName") != null))  {
                ds.SelectParameters["userName"].DefaultValue = DataBinder.Eval(e.Item.DataItem, "UserName").ToString();
            }
        }
    }
    }
}
