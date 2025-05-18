<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Web_IT2_Musico_P1.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDS_GDUser"></asp:GridView>

    <asp:SqlDataSource ID="SqlDS_GDUser" runat="server"></asp:SqlDataSource>

</asp:Content>
