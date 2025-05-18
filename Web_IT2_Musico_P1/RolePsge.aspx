<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="RolePsge.aspx.cs" Inherits="Web_IT2_Musico_P1.RolePsge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="roleID" DataSourceID="SqlDS_GDRole"
        CssClass="table table-bordered table-hover table-striped" CellPadding="10" CellSpacing="10" AllowPaging="True" AllowSorting="True" Width="368px">
        <Columns>
            <asp:TemplateField HeaderText="Select">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Row No.">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="roleID" HeaderText="roleID" InsertVisible="False" ReadOnly="True" SortExpression="roleID" Visible="False" />
            <asp:BoundField DataField="roleType" HeaderText="Type" SortExpression="roleType" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDS_GDRole" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT roleID, roleType FROM tblRole"></asp:SqlDataSource>

    <br />
    <hr />
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlDS_DVUser"
        ssClass="table table-bordered table-hover table-striped"  DefaultMode="Insert" DataKeyNames="roleID" OnItemInserted="DetailsView1_ItemInserted">
        <Fields>
            <asp:BoundField DataField="roleType" HeaderText="roleType" SortExpression="roleType" />
            <asp:BoundField DataField="roleID" HeaderText="roleID" InsertVisible="False" ReadOnly="True" SortExpression="roleID" Visible="False" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>


    <asp:SqlDataSource ID="SqlDS_DVUser" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT roleID, roleType FROM tblRole" InsertCommand="INSERT INTO tblRole(roleType) VALUES (?)"></asp:SqlDataSource>


</asp:Content>
