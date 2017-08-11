<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InspectionsWebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Date &amp; Time:
            <asp:Label ID="DateTimeLabel" runat="server"></asp:Label>
            <br />
            First Name:
            <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
            <br />
            Last Name:
            <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
            <br />
            Phone:
            <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="InspectionFields" DataTextField="First" DataValueField="First">
            </asp:DropDownList>
            <asp:SqlDataSource ID="InspectionFields" runat="server" ConnectionString="<%$ ConnectionStrings:Inspections_PracticeConnectionString %>" SelectCommand="SELECT [First] FROM [Inspectors]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
