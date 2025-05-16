<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="CollegePage.aspx.cs" Inherits="Web_IT2_Musico_P1.CollegePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="collegeID" DataSourceID="SqlDSCollegeGV"
        CssClass="table table-bordered table-hover table-striped" CellPadding="10" CellSpacing="10" AllowPaging="True" AllowSorting="True" Width="709px">
        <Columns>
            <asp:TemplateField HeaderText="Select">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <%--ROW NUMBER > template --%>
            <asp:TemplateField HeaderText="Row No.">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="collegeID" HeaderText="College ID" SortExpression="collegeID" InsertVisible="False" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="collegeCode" HeaderText="Code" SortExpression="collegeCode" />
            <asp:BoundField DataField="collegeName" HeaderText="Name" SortExpression="collegeName" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDSCollegeGV" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT collegeCode, collegeID, collegeName FROM tblCollege"></asp:SqlDataSource>


    <br />
    <hr />
    <br />

    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="400px" AutoGenerateRows="False" DataKeyNames="collegeID" 
        DataSourceID="SqlDataSourceDelete" CssClass="table table-bordered table-hover table-striped"  DefaultMode="Insert" OnItemInserted="DetailsView2_ItemInserted">
        <Fields>
            <asp:BoundField DataField="collegeID" HeaderText="collegeID" InsertVisible="False" ReadOnly="True" SortExpression="collegeID" />
            <asp:BoundField DataField="collegeCode" HeaderText="collegeCode" SortExpression="collegeCode" />
            <asp:BoundField DataField="collegeName" HeaderText="collegeName" SortExpression="collegeName" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    
    <br />
    <hr />
    <br />



    <asp:SqlDataSource ID="SqlDataSourceDelete" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT collegeID, collegeCode, collegeName FROM tblCollege" InsertCommand="INSERT INTO tblCollege(collegeCode, collegeName) VALUES (?, ?)"></asp:SqlDataSource>

</asp:Content>
