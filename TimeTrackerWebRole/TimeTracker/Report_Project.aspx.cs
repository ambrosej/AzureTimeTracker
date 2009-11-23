using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace TimeTrackerWebRole.TimeTracker
{
    public partial class Report_Project : System.Web.UI.Page
    {
       public Report_Project ()
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

    protected void GenProjectRpt_Click(object sender, System.EventArgs e)
    {
        ProjectListRequiredFieldValidator.Validate();
        if (ProjectListRequiredFieldValidator.IsValid)
        {
            Session.Add("SelectedProjectIds", BuildValueList(ProjectList.Items, true));
            Response.Redirect("Report_Project_Result.aspx");
        }
    }
    }
}
