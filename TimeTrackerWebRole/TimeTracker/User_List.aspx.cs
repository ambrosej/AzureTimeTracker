using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTrackerWebRole.TimeTracker
{
    public partial class User_List : System.Web.UI.Page
    {
        public User_List() {
  }

  void Page_Load(object sender, EventArgs e) {
  }
  protected void Button_Click(Object sender, EventArgs args) {
    Response.Redirect("User_Create.aspx");
  }
    }
}
