<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Edit.aspx.cs" Inherits="TimeTrackerWebRole.TimeTracker.User_Edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ObjectDataSource ID="UserData" runat="server" TypeName="System.Web.Security.Membership"
                SelectMethod="GetUser">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="UserId" Type="String" Name="username" />
                </SelectParameters>
            </asp:ObjectDataSource>

            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataKeyNames="UserName"
                DataSourceID="UserData" DefaultMode="Edit" AutoGenerateRows=false AutoGenerateInsertButton=true >
                <Fields>
                    <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:CheckBoxField DataField="IsApproved" HeaderText="IsApproved" SortExpression="IsApproved" />
                </Fields>
            </asp:DetailsView>
        </div>
    </form>
</body>
</html>
