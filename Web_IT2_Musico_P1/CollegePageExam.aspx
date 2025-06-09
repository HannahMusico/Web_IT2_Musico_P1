<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="CollegePageExam.aspx.cs" Inherits="Web_IT2_Musico_P1.CollegePageExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button ID="btnAddNewRecord" runat="server" Text="Add New Record" class="btn btn-primary mb-3" OnClick="btnAddNewRecord_Click" />
    <asp:Button ID="btnCheckAll" runat="server" Text="Check All" class="btn btn-secondary mb-3" OnClick="btnCheckAll_Click" />
    <asp:Button ID="btnUncheckAll" runat="server" Text="Uncheck All" class="btn btn-secondary mb-3" OnClick="btnUncheckAll_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-danger mb-3" OnClick="btnDelete_Click" />

    <%--GRIDVIEW--%>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="800px"
        DataKeyNames="collegeID" DataSourceID="SqlDSCollegeGV" AllowPaging="True" AllowSorting="True"
        CssClass="table table-bordered table-hover table-striped" CellPadding="10" CellSpacing="10">
        <Columns>
            <asp:TemplateField HeaderText="Select">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <%--ROW NUMBER COLUMN--%>
            <asp:TemplateField HeaderText="Row No.">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
            </asp:TemplateField> 
            <asp:BoundField DataField="collegeID" HeaderText="collegeID" InsertVisible="False" ReadOnly="True" SortExpression="collegeID" Visible="False" />
            <asp:BoundField DataField="collegeCode" HeaderText="Code" SortExpression="collegeCode" />
            <asp:BoundField DataField="collegeName" HeaderText="Name" SortExpression="collegeName" />
            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnEditfDV" runat="server" CausesValidation="false" CommandName="Select" OnClick="lbtnEditfDV_Click" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDSCollegeGV" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT collegeID, collegeCode, collegeName FROM tblCollege" DeleteCommand="DELETE FROM tblCollege WHERE (collegeID = ?)"></asp:SqlDataSource>

    <hr />

    <%--DETAILS VIEW--%>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="400px" AutoGenerateRows="False"
        DataKeyNames="collegeID" DataSourceID="SqlDSCollegeDV" DefaultMode="Insert"
        CssClass="table table-bordered table-hover table-striped" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
        <Fields>
            <asp:BoundField DataField="collegeID" HeaderText="collegeID" InsertVisible="False" ReadOnly="True"
                SortExpression="collegeID" />
            <asp:BoundField DataField="collegeName" HeaderText="collegeName" SortExpression="collegeName" />
            <asp:BoundField DataField="collegeCode" HeaderText="collegeCode" SortExpression="collegeCode" />
            <asp:CommandField ShowInsertButton="True" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDSCollegeDV" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT collegeID, collegeName, collegeCode FROM tblCollege 
WHERE (collegeID = ?)" InsertCommand="INSERT INTO tblCollege(collegeCode, collegeName) VALUES (?, ?)" UpdateCommand="UPDATE tblCollege SET collegeName = ?, collegeCode = ? WHERE (collegeID = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="?" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
