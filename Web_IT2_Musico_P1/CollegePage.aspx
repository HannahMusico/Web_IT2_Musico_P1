<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="CollegePage.aspx.cs" Inherits="Web_IT2_Musico_P1.CollegePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--ADD--%>
    <asp:Button ID="btnAddNewRecord" runat="server" Text="Add New Record" class="btn btn-primary mb-3" OnClick="btnAddNewRecord_Click"/>
    <asp:Button ID="btnCheckAll" runat="server" Text="Check All" class="btn btn-secondary mb-3" OnClick="btnCheckAll_Click"/>
    <asp:Button ID="btnUncheckAll" runat="server" Text="Uncheck All" class="btn btn-secondary mb-3" OnClick="btnUncheckAll_Click"/>
    <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-danger mb-3" OnClick="btnDelete_Click"/>


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
            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnEditDV" runat="server" CausesValidation="false" CommandName="Select" OnClick="lbtnEditDV_Click" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDSCollegeGV" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT collegeCode, collegeID, collegeName FROM tblCollege" DeleteCommand="DELETE FROM tblCollege WHERE (collegeID = ?)"></asp:SqlDataSource>


    <%--DETAILS VIEW--%>
    
<asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px"></asp:DetailsView>
    

<%--    <br />
    <hr />
    <br />
--%>

</asp:Content>
