<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="CollegeInfoPage.aspx.cs" Inherits="Web_IT2_Musico_P1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="table table-bordered table-hover table-striped" ataKeyNames="collegeID" 
        DataSourceID="SqlDataSource1" CellPadding="10" CellSpacing="10">
        <Columns>
            <asp:BoundField DataField="collegeID" HeaderText="College ID" InsertVisible="False" ReadOnly="True" SortExpression="collegeID" />
            <asp:BoundField DataField="collegeCode" HeaderText="College Code" SortExpression="collegeCode" />
            <asp:BoundField DataField="collegeName" HeaderText="College Name" SortExpression="collegeName" />
        </Columns>
    </asp:GridView>

    <br />
    <hr />
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" 
        CssClass="table table-bordered table-hover table-striped" DefaultMode="Insert" 
        Height="129px" Width="400px" AutoGenerateRows="False" DataKeyNames="collegeID" DataSourceID="SqlDSCollegeInsert">
        <Fields>
            <%-- COLLEGE ID --%>
            <asp:BoundField DataField="collegeID" HeaderText="College ID" InsertVisible="True" ReadOnly="True" SortExpression="collegeID">
                <ControlStyle CssClass="form-control form-control-sm"></ControlStyle>
            </asp:BoundField>
            <%-- COLLEGE CODE --%>
            <asp:BoundField DataField="collegeCode" HeaderText="College Code" SortExpression="collegeCode">
                <ControlStyle CssClass="form-control form-control-sm"></ControlStyle>
            </asp:BoundField>
            <%-- COLLEGE NAME --%>
            <asp:BoundField DataField="collegeName" HeaderText="College Name" SortExpression="collegeName">
                <ControlStyle CssClass="form-control form-control-sm"></ControlStyle>
            </asp:BoundField>
            <asp:CommandField HeaderText="Action" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDSCollegeInsert" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        InsertCommand="INSERT INTO tblCollege(collegeID, collegeCode, collegeName) VALUES (?, ?, ?)"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT collegeID, collegeCode, collegeName FROM tblCollege"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT collegeID, collegeCode, collegeName FROM tblCollege"></asp:SqlDataSource>

</asp:Content>
