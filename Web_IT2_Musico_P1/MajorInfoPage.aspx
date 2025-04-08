<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="MajorInfoPage.aspx.cs" Inherits="Web_IT2_Musico_P1.MajorInfoPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="table table-bordered table-hover table-striped" DataSourceID="SqlDataSource1" CellPadding="10" CellSpacing="10">
        <Columns>
            <asp:BoundField DataField="majorID" HeaderText="Major ID" InsertVisible="False" SortExpression="majorID" />
            <asp:BoundField DataField="majorCode" HeaderText="Major Code" SortExpression="majorCode" />
            <asp:BoundField DataField="majorName" HeaderText="Major Name" SortExpression="majorName" />
            <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName" />
        </Columns>
    </asp:GridView>

    <br />
    <hr />
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered table-hover table-striped" DefaultMode="Insert" 
        Height="50px" Width="400px" AutoGenerateRows="False" DataKeyNames="majorID" DataSourceID="SqlDSMajorInsert">
        <Fields>
            <%-- MAJOR ID --%>
            <asp:BoundField DataField="majorID" HeaderText="Major ID" InsertVisible="True" ReadOnly="True" SortExpression="majorID" >
            <controlstyle cssclass="form-control form-control-sm"></controlstyle>
            </asp:BoundField>
            <%-- MAJOR CODE --%>
            <asp:BoundField DataField="majorCode" HeaderText="Major Code" SortExpression="majorCode" >
            <controlstyle cssclass="form-control form-control-sm"></controlstyle>
            </asp:BoundField>
            <%-- MAJOR NAME --%>
            <asp:BoundField DataField="majorName" HeaderText="Major Name" SortExpression="majorName" >
            <controlstyle cssclass="form-control form-control-sm"></controlstyle>
            </asp:BoundField>
            <%-- COURSE --%>
            <asp:TemplateField HeaderText="Course Name" SortExpression="courseID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("courseID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlCourseId" runat="server" DataSourceID="SqlDSCourse" 
                        CssClass="form-select form-select-sm" AppendDataBoundItems="True"
                        DataTextField="courseName" DataValueField="courseID" SelectedValue='<%# Bind("courseID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSCourse" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT courseID, courseName FROM tblCourse"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("courseID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField HeaderText="Action" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDSMajorInsert" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="INSERT INTO tblCouseMajor(majorID, majorCode, majorName, courseID) VALUES (?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT majorID, majorCode, majorName, courseID FROM tblCouseMajor"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT  tblCouseMajor.majorID, tblCouseMajor.majorCode, tblCouseMajor.majorName, tblCourse.courseName FROM (tblCouseMajor INNER JOIN tblCourse ON tblCouseMajor.courseID = tblCourse.courseID)"></asp:SqlDataSource>

</asp:Content>
