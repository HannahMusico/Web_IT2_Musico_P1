<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="RoleInfoPage.aspx.cs" Inherits="Web_IT2_Musico_P1.RoleInfoPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        CssClass="table table-bordered table-hover table-striped" DataSourceID="SqlDataSource1"  CellPadding="10" CellSpacing="10">
        <Columns>
            <asp:BoundField DataField="roleID" HeaderText="Role ID" InsertVisible="False" ReadOnly="True" SortExpression="roleID" />
            <asp:BoundField DataField="roleType" HeaderText="Role Type" SortExpression="roleType" />
        </Columns>
    </asp:GridView>

    <br />
    <hr />
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered table-hover table-striped" DefaultMode="Insert" 
        Height="50px" Width="400px" AutoGenerateRows="False" DataKeyNames="roleID" DataSourceID="SqlDSRoleInsert">
        <Fields>
            <%-- ROLE ID --%>
            <asp:BoundField DataField="roleID" HeaderText="Role ID" InsertVisible="True" ReadOnly="True" SortExpression="roleID" >
            <controlstyle cssclass="form-control form-control-sm"></controlstyle>
            </asp:BoundField>
            <%-- ROLE TYPE --%>
            <asp:BoundField DataField="roleType" HeaderText="Role Type" SortExpression="roleType" >
            <controlstyle cssclass="form-control form-control-sm"></controlstyle>
            </asp:BoundField>
            <asp:CommandField HeaderText="Action" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDSRoleInsert" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="INSERT INTO tblRole(roleID, roleType) VALUES (?, ?)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT roleID, roleType FROM tblRole"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT roleID, roleType FROM tblRole"></asp:SqlDataSource>

</asp:Content>
