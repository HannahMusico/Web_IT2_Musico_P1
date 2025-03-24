<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="UserInfoPage.aspx.cs" Inherits="Web_IT2_Musico_P1.UserInfoPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover table-striped" DataSourceID="SqlDataSource1" CellPadding="10" CellSpacing="10">
        <Columns>
            <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="MI" HeaderText="MI" SortExpression="MI" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="YearLevel" HeaderText="YearLevel" SortExpression="YearLevel" />
            <asp:BoundField DataField="courseCode" HeaderText="courseCode" SortExpression="courseCode" />
            <asp:BoundField DataField="majorCode" HeaderText="majorCode" SortExpression="majorCode" />
            <asp:BoundField DataField="roleType" HeaderText="roleType" SortExpression="roleType" />
        </Columns>
    </asp:GridView>

    <br />
    <hr />
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="400px" AutoGenerateRows="False" CssClass="table table-bordered table-hover table-striped" DataKeyNames="userID" DefaultMode="Insert" DataSourceID="SqlDSUserInfoInsert">
        <Fields>
            <asp:BoundField DataField="userID" HeaderText="userID" ReadOnly="True" SortExpression="userID" ControlStyle-CssClass="form-control form-control-sm">
                <ControlStyle CssClass="form-control form-control-sm"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" ControlStyle-CssClass="form-control form-control-sm">
                <ControlStyle CssClass="form-control form-control-sm"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="MI" HeaderText="MI" SortExpression="MI" ControlStyle-CssClass="form-control form-control-sm">
                <ControlStyle CssClass="form-control form-control-sm"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" ControlStyle-CssClass="form-control form-control-sm">
                <ControlStyle CssClass="form-control form-control-sm"></ControlStyle>
            </asp:BoundField>
            <%-- COURSE --%>
            <asp:TemplateField HeaderText="CourseID" SortExpression="CourseID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CourseID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlCourse" runat="server" DataSourceID="SqlDScourse"
                        CssClass="form-select form-select-sm" DataTextField="courseCode"
                        AppendDataBoundItems="true" DataValueField="courseID" SelectedValue='<%# Bind("CourseID") %>'>
                        <asp:ListItem Text="Choose Item" Value="" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDScourse" runat="server"
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                        SelectCommand="SELECT courseID, courseCode FROM tblCourse"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%-- MAJOR --%>

            <asp:TemplateField HeaderText="MajorID" SortExpression="MajorID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MajorID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlMajor" runat="server" DataSourceID="SqlDSmajor"
                        CssClass="form-select form-select-sm" DataTextField="majorCode"
                        AppendDataBoundItems="true" DataValueField="majorID" SelectedValue='<%# Bind("MajorID") %>'>
                        <asp:ListItem Text="Choose Item" Value="" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSmajor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT majorID, majorCode FROM tblCouseMajor"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("MajorID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%-- YEAR LEVEL --%>
            <asp:TemplateField HeaderText="YearLevel" SortExpression="YearLevel">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("YearLevel") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlYearLevel" runat="server"
                        CssClass="form-select form-select-sm" SelectedValue='<%# Bind("YearLevel") %>'>
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
            <%-- ROLE --%>
            <asp:TemplateField HeaderText="RoleID" SortExpression="RoleID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("RoleID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlRole" runat="server" DataSourceID="SqlDSrole"
                        CssClass="form-select form-select-sm" DataTextField="roleType"
                        AppendDataBoundItems="true" DataValueField="roleID" SelectedValue='<%# Bind("RoleID") %>'>
                        <asp:ListItem Text="Choose Item" Value="" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDSrole" runat="server"
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                        SelectCommand="SELECT roleID, roleType FROM tblRole"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("RoleID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField HeaderText="Action" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>





    <asp:SqlDataSource ID="SqlDSUserInfoInsert" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        InsertCommand="INSERT INTO tblUser(userID, Fname, MI, Lname, CourseID, MajorID, YearLevel, RoleID) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT userID, Fname, MI, Lname, CourseID, MajorID, YearLevel, RoleID FROM tblUser"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT A.userID, A.Fname, A.MI, A.Lname, A.YearLevel, B.courseCode, C.majorCode, D.roleType, tblCouseMajor.majorID FROM ((((tblUser A LEFT OUTER JOIN tblCouseMajor ON A.MajorID = tblCouseMajor.majorID) LEFT OUTER JOIN tblCourse B ON A.CourseID = B.courseID) LEFT OUTER JOIN tblCouseMajor C ON A.MajorID = C.majorID) LEFT OUTER JOIN tblRole D ON A.RoleID = D.roleID)"></asp:SqlDataSource>
</asp:Content>
