<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="CourseInfoPage.aspx.cs" Inherits="Web_IT2_Musico_P1.CourseInfoPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="table table-bordered table-hover table-striped" DataSourceID="SqlDataSource1" CellPadding="10" CellSpacing="10">
        <Columns>
            <asp:BoundField DataField="courseID" HeaderText="Course ID" InsertVisible="False" SortExpression="courseID" />
            <asp:BoundField DataField="courseCode" HeaderText="Course Code" SortExpression="courseCode" />
            <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName" />
            <asp:BoundField DataField="collegeName" HeaderText="College Name" SortExpression="collegeName" />
        </Columns>
    </asp:GridView>

    <br />
    <hr />
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered table-hover table-striped" DefaultMode="Insert"
        Height="50px" Width="400px" AutoGenerateRows="False" DataKeyNames="courseID" DataSourceID="SqlDSCourseInsert">
        <Fields>
            <%-- COURSE ID --%>
            <asp:BoundField DataField="courseID" HeaderText="Course ID" InsertVisible="True" ReadOnly="True" SortExpression="courseID" >
            <controlstyle cssclass="form-control form-control-sm"></controlstyle>
            </asp:BoundField>
            <%-- COURSE CODE --%>
            <asp:BoundField DataField="courseCode" HeaderText="Course Code" SortExpression="courseCode" >
            <controlstyle cssclass="form-control form-control-sm"></controlstyle>
            </asp:BoundField>
            <%-- COURSE NAME --%>
            <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName">
            <controlstyle cssclass="form-control form-control-sm"></controlstyle>
            </asp:BoundField>

            <%-- COLLEGE --%>
            <asp:TemplateField HeaderText="College Name" SortExpression="collegeID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("collegeID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlCollegeId" runat="server" DataSourceID="SqlDSCollege"
                        CssClass="form-select form-select-sm" AppendDataBoundItems="true"
                        DataTextField="collegeName" DataValueField="collegeID" SelectedValue='<%# Bind("collegeID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSCollege" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT collegeID, collegeName FROM tblCollege"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("collegeID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField HeaderText="Action" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>


    <asp:SqlDataSource ID="SqlDSCourseInsert" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="INSERT INTO tblCourse(courseID, courseCode, courseName, collegeID) VALUES (?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT courseID, courseCode, courseName, collegeID FROM tblCourse"></asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT tblCourse.courseID, tblCourse.courseCode, tblCourse.courseName, tblCollege.collegeName FROM (tblCourse INNER JOIN tblCollege ON tblCourse.collegeID = tblCollege.collegeID AND tblCourse.collegeID = tblCollege.collegeID)"></asp:SqlDataSource>

</asp:Content>
