<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TimeTracker/MasterPage.master" Title="My Company - Time Tracker - Create Project Report" Culture="auto" UICulture="auto" CodeBehind="Report_Project.aspx.cs" Inherits="TimeTrackerWebRole.TimeTracker.Report_Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="Server">
    <div id="projectreport">
        <a name="content_start" id="content_start"></a>
        <fieldset>
            <h2 class="none">
                Project Report</h2>
            <legend>Project Report</legend>
            <asp:Label ID="Label1" runat="server" Text="Label" AssociatedControlID="ProjectList">Select a project. Use ctrl+click to select multiple
            resources at once:</asp:Label>
              <br />
            <asp:ObjectDataSource ID="ProjectData" runat="server" TypeName="TimeTrackerWebRole.AppCode.BLL.Project" />
            <asp:ListBox ID="ProjectList" runat="server" SelectionMode="Multiple" CssClass="projectlist"
                Rows="28" DataSourceID="ProjectData" DataValueField="Id"
                DataTextField="Name" />
            <br>
            <asp:RequiredFieldValidator ID="ProjectListRequiredFieldValidator" runat="server"
                ErrorMessage="At least one project must be selected." ControlToValidate="ProjectList"
                Display="Dynamic" />
            <br>
            <asp:Button ID="GenProjectRpt" runat="server" CssClass="submit" Text="Generate Report"
                CausesValidation="False" OnClick="GenProjectRpt_Click" />
        </fieldset>
    </div>
</asp:Content>
