using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTrackerWebRole.TimeTracker
{
    public partial class Project_List : System.Web.UI.Page
    {
        public Project_List()
        {
        }
        void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.IsInRole("ProjectAdministrator"))
            {
                ProjectData.SortParameterName = "sortParameter";
                ProjectData.SelectMethod = "GetAllProjects";
            }
            else
            {

                bool wasFound = false;
                foreach (Parameter parameter in ProjectData.SelectParameters)
                {
                    if (parameter.Name == "userName")
                        wasFound = true;
                }
                if (!wasFound)
                {
                    Parameter param = new Parameter("userName", TypeCode.String, Page.User.Identity.Name);
                    ProjectData.SelectParameters.Add(param);
                }
                ProjectData.SortParameterName = "sortParameter";
                ProjectData.SelectMethod = "GetProjectsByManagerUserName";
            }
        }
        protected void Button_Click(Object sender, EventArgs args)
        {
            Server.Transfer("Project_Details.aspx");
        }
        protected void ListAllProjects_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            e.Keys.Add("Id", ListAllProjects.Rows[e.RowIndex].Cells[0].Text);
        }
    }
}
