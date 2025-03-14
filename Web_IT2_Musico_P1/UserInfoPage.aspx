<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="UserInfoPage.aspx.cs" Inherits="Web_IT2_Musico_P1.UserInfoPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--    BackColor="#DACEF0" BorderColor="#4A2987" BorderStyle="Solid" BorderWidth="2px" RowStyle-BorderStyle="Solid" RowStyle-BorderColor="#4A2987" RowStyle-BorderWidth="1px"--%>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" cssclass="table table-bordered table-hover table-striped" DataSourceID="SqlDataSource1" CellPadding="10" CellSpacing="10">
        <Columns>
            <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="MI" HeaderText="MI" SortExpression="MI" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="YearLevel" HeaderText="YearLevel" SortExpression="YearLevel" />
            <asp:BoundField DataField="courseCode" HeaderText="courseCode" SortExpression="courseCode" />
            <asp:BoundField DataField="majorCode" HeaderText="majorCode" SortExpression="majorCode" />
            <asp:BoundField DataField="roleType" HeaderText="roleType" SortExpression="roleType" />
            <asp:BoundField DataField="majorID" HeaderText="majorID" InsertVisible="False" SortExpression="majorID" />
        </Columns>


        


</asp:GridView>

    <BR />
    <br />
    <br />


    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="383px" AutoGenerateRows="False" runat="server" AutoGenerateColumns="False" DefaultMode="Insert" CssClass="table table-bordered table-hover table-striped" DataKeyNames="Expr1" DataSourceID="SqlDSUserInfoInsert">
        <Fields>

            <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" ControlStyle-CssClass="form-select form-select-sm" >
<ControlStyle CssClass="form-select form-select-sm"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" ControlStyle-CssClass="form-select form-select-sm" >
<ControlStyle CssClass="form-select form-select-sm"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="MI" HeaderText="MI" SortExpression="MI" ControlStyle-CssClass="form-select form-select-sm" >
<ControlStyle CssClass="form-select form-select-sm"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" ControlStyle-CssClass="form-select form-select-sm" >


<ControlStyle CssClass="form-select form-select-sm"></ControlStyle>
            </asp:BoundField>

            <%--COURSE--%>
            <asp:TemplateField HeaderText="CourseID" SortExpression="CourseID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CourseID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlCourse" runat="server" DataSourceID="SqlDSCourse"
                        CssClass="form-select form-select-sm" DataTextField="courseCode" AppendDataBoundItems="True" DataValueField="courseID" SelectedValue='<%# Bind("CourseID") %>'>
                        <asp:ListItem Text="Choose Item" Value="" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSCourse" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT courseID, courseCode FROM tblCourse"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%--MAJOR--%>
            <asp:TemplateField HeaderText="MajorID" SortExpression="MajorID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MajorID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDaSMajor" CssClass="form-select form-select-sm" AppendDataBoundItems="True" DataTextField="majorName" DataValueField="majorID" SelectedValue='<%# Bind("MajorID") %>'>
                    <asp:ListItem Text="Choose Item" Value="" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDaSMajor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT majorID, majorName FROM tblCouseMajor"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("MajorID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%--YEARLEVEL--%>
            <asp:TemplateField HeaderText="YearLevel" SortExpression="YearLevel">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("YearLevel") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate> 
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select form-select-sm" DataTextField="yearlevelCode" DataValueField="yearlevelID" SelectedValue='<%# Bind("CourseID") %>'>
                        <asp:ListItem Text="Choose Item" Value="" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="1">First Year</asp:ListItem>
                        <asp:ListItem Value="2">Second Year</asp:ListItem>
                        <asp:ListItem Value="3">Third Year</asp:ListItem>
                        <asp:ListItem Value="4">Fourth Year</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("YearLevel") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%--ROLE--%>
            <asp:TemplateField HeaderText="RoleID" SortExpression="RoleID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("RoleID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlRole" runat="server" DataSourceID="SqlDSRole" CssClass="form-select form-select-sm" AppendDataBoundItems="True" DataTextField="roleType" DataValueField="roleID" SelectedValue='<%# Bind("RoleID") %>'>
                    <asp:ListItem Text="Choose Item" Value="" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSRole" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT roleID, roleType FROM tblRole"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("RoleID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:CommandField HeaderText="ACTION" ShowInsertButton="True" />
            
        </Fields>
</asp:DetailsView>

<asp:SqlDataSource ID="SqlDSUserInfoInsert" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO tblUser(Fname, userID, MI, Lname, CourseID, MajorID, YearLevel, RoleID) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT userID AS Expr1, Fname AS Expr2, tblUser.*, Lname AS Expr3, MI AS Expr4, CourseID AS Expr5, MajorID AS Expr6, YearLevel AS Expr7, RoleID AS Expr8 FROM tblUser"></asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT A.userID, A.Fname, A.MI, A.Lname, A.YearLevel, B.courseCode, C.majorCode, D.roleType, tblCouseMajor.majorID FROM ((((tblUser A LEFT OUTER JOIN tblCouseMajor ON A.MajorID = tblCouseMajor.majorID) LEFT OUTER JOIN tblCourse B ON A.CourseID = B.courseID) LEFT OUTER JOIN tblCouseMajor C ON A.MajorID = C.majorID) LEFT OUTER JOIN tblRole D ON A.RoleID = D.roleID)"></asp:SqlDataSource>

</asp:Content>
