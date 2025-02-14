<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="MyPageMusico.aspx.cs" Inherits="Web_IT2_Musico_P1.MyPageMusico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET Web Form</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS AND JavaScript </p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>
        <hr />
        <div class="row">
            <section class="col-md-4" aria-labelledby="labelTextboxButton">
                <h2 id="labelTextboxButton">Label/Textbox/Button</h2>
                <hr />
                <table class="auto-style1">

                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtUsername" runat="server" ToolTip="Enter username"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>

                        <td class="auto-style2">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

                        </td>
                    </tr>
                </table>
                <asp:Label ID="lblUsername" runat="server"></asp:Label>

            </section>
            <section class="col-md-4" aria-labelledby="hyperLink">
                <h2 id="hyperLink">HyperLink</h2>
                <hr />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.javatpoint.com/asp-net-hyperlink">www.javatpoint.com</asp:HyperLink>
            </section>
            <section class="col-md-4" aria-labelledby="radioButton">
                <h2 id="radioButton">RadioButton</h2>
                <hr />
                <asp:RadioButton ID="rbtnMale" runat="server" GroupName="Sex" Text="Male" />
                <asp:RadioButton ID="rbtnFemale" runat="server" GroupName="Sex" Text="Female" />
                <br />
                <asp:Button ID="btnOk" runat="server" Text="Ok" OnClick="btnOk_Click" />
                <br />
                <asp:Label ID="lblSex" runat="server"></asp:Label>
            </section>
        </div>
        <br />
        <br />
        <hr />
        <div class="row">
            <section class="col-md-4" aria-labelledby="calendar">
                <h2 id="calendar">Calendar</h2>
                <hr />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                <br />
                <asp:Label ID="lblDate" runat="server"></asp:Label>
            </section>
            <section class="col-md-4" aria-labelledby="checkBox">
                <h2 id="chechBox">CheckBox</h2>
                <hr />
                <asp:CheckBox ID="chkYL1" runat="server" Text="1st Year" />
                <asp:CheckBox ID="chkYL2" runat="server" Text="2nd Year" />
                <asp:CheckBox ID="chkYL3" runat="server" Text="3rd Year" />
                <asp:CheckBox ID="chkYL4" runat="server" Text="4th Year" />
                <br />
                <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click" />
                <br />
                <asp:Label ID="lblYearLevel" runat="server"></asp:Label>

            </section>
            <section class="col-md-4" aria-labelledby="xx">
                <h2 id="xx">xx</h2>
                <hr />


            </section>
        </div>

        



    </main>

</asp:Content>




