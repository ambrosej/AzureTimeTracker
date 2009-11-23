using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace TimeTrackerWebRole.TimeTracker
{
    public partial class Login : System.Web.UI.Page
    {
        public Login()
        {
        }

        void Page_Load(object sender, EventArgs e)
        {
            string isAllowUserCreationForAnonymousUsers = ConfigurationManager.AppSettings["AllowUserCreationForAnonymousUsers"];
            if (String.IsNullOrEmpty(isAllowUserCreationForAnonymousUsers))
                return;

            if (Page.User.Identity.IsAuthenticated || (!Page.User.Identity.IsAuthenticated && String.Compare(isAllowUserCreationForAnonymousUsers, "1") == 0))
            {
                Login1.CreateUserText = "Create new user";
                Login1.CreateUserUrl = "~/TimeTracker/User_Create.aspx";
            }

        }
    }
}
