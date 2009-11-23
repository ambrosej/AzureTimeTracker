using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeTrackerWebRole.AppCode;
using System.Text;

namespace TimeTrackerWebRole.TimeTracker
{
    public partial class Report_Resources : System.Web.UI.Page
    {
        public Report_Resources()
    {
    }

    void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Page.User.IsInRole("ProjectAdministrator"))
            {
                ProjectData.SelectMethod = "GetAllProjects";
            }
            else
            {
                ProjectData.SelectParameters.Add(new Parameter("userName", TypeCode.String, Page.User.Identity.Name));
                ProjectData.SelectParameters.Add(new Parameter("sortParameter", TypeCode.String, string.Empty));
                ProjectData.SelectMethod = "GetProjectsByManagerUserName";
            }
            ProjectList.DataBind();
          
            UserData.SelectParameters.Add(new Parameter("userNames", TypeCode.String, BuildValueList(ProjectList.Items, false)));
            UserData.SelectMethod = "GetProjectMembers";

            DateTime startingDate = DefaultValues.GetDateTimeMinValue();
            DateTime endDate = DateTime.Now;
            StartDate.Text = startingDate.ToString("d");
            EndDate.Text = endDate.ToString("d");
        }
    }

    protected string BuildValueList(ListItemCollection items, bool itemMustBeSelected)
    {
        StringBuilder idList = new StringBuilder();
        foreach (ListItem item in items)
        {
            if (itemMustBeSelected && !item.Selected)
                continue;

            else
            {
                idList.Append(item.Value.ToString());
                idList.Append(",");
            }
        }
        return idList.ToString();
    }

    protected void GenResourceRpt_Click(object sender, System.EventArgs e)
    {
        UserListRequiredFieldValidator.Validate();

        if (UserListRequiredFieldValidator.IsValid)
        {
            Session.Add("SelectedUserNames", BuildValueList(UserList.Items, true));
            Session.Add("SelectedStartingDate", StartDate.Text);
            Session.Add("SelectedEndDate", EndDate.Text);
            Response.Redirect("Report_Resources_Result.aspx");
        }
    }
    }
}
