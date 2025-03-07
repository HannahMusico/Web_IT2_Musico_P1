<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="UserInfoPage.aspx.cs" Inherits="Web_IT2_Musico_P1.UserInfoPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<%--    BackColor="#DACEF0" BorderColor="#4A2987" BorderStyle="Solid" BorderWidth="2px" RowStyle-BorderStyle="Solid" RowStyle-BorderColor="#4A2987" RowStyle-BorderWidth="1px"--%>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="10" CellSpacing="10">
        <AlternatingRowStyle BorderStyle="None" />
        <Columns>
            <asp:BoundField DataField="userID" HeaderText="User ID" SortExpression="userID" />
            <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
            <asp:BoundField DataField="MI" HeaderText="Middle Initial" SortExpression="MI" />
            <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
            <asp:BoundField DataField="courseCode" HeaderText="Course" SortExpression="courseCode" />
            <asp:BoundField DataField="majorCode" HeaderText="Major" SortExpression="majorCode" />
            <asp:BoundField DataField="YearLevel" HeaderText="Year Level" SortExpression="YearLevel" />
            <asp:BoundField DataField="roleType" HeaderText="User Type" SortExpression="roleType" />
        </Columns>

<RowStyle BorderStyle="None"></RowStyle>
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT A.userID, A.Fname, A.MI, A.Lname, A.YearLevel, B.courseCode, C.majorCode, D.roleType FROM (((tblUser A LEFT OUTER JOIN tblCourse B ON A.CourseID = B.courseID) LEFT OUTER JOIN tblCouseMajor C ON A.MajorID = C.majorID) LEFT OUTER JOIN tblRole D ON A.RoleID = D.roleID)"></asp:SqlDataSource>

</asp:Content>
