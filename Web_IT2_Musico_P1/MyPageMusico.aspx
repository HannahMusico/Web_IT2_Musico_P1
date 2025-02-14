<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="MyPageMusico.aspx.cs" Inherits="Web_IT2_Musico_P1.MyPageMusico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">My Activities for ASP.NET Web Form</h1>
            <p class="lead">ASP.NET is a free web framework for building rgeat Web sites and Web applications</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>
                <div>






            <h3>Log-in</h3>
            <hr />
            <%--LABEL/TEXT BOX/BUTTON--%>

            <table class="auto-style1">

                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Username ABCD 555"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUsername" runat="server" ToolTip="Enter username"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <%--<td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Upload a File"></asp:Label>
                    </td>--%>
<td class="auto-style2">
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

    <%--<asp:Button runat="server" Text="Cancel" />--%>
                    </td>
                </tr>
            </table>

            <br />
            <asp:Label ID="lblUsername" runat="server"></asp:Label>

            <%-- HYPERLINK --%>
            <br />
            <br />
            <hr />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.javatpoint.com/asp-net-hyperlink">www.javatpoint.com</asp:HyperLink>

            <%-- RADIOBUTTON --%>
            <br />
            <br />
            <hr />
            <asp:RadioButton ID="rbtnMale" runat="server" GroupName="Sex" Text="Male" />
            <asp:RadioButton ID="rbtnFemale" runat="server" GroupName="Sex" Text="Female" />
            <br />
            <asp:Button ID="btnOk" runat="server" Text="Ok" OnClick="btnOk_Click" />
            <br />
            <asp:Label ID="lblSex" runat="server"></asp:Label>


            <%-- CALENDAR --%>
            <br />
            <br />
            <hr />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <asp:Label ID="lblDate" runat="server"></asp:Label>


            <%-- CHECKBOX --%>
            <br />
            <br />
            <hr />
            <asp:CheckBox ID="chkYL1" runat="server" Text="1st Year" />
            <asp:CheckBox ID="chkYL2" runat="server" Text="2nd Year" />
            <asp:CheckBox ID="chkYL3" runat="server" Text="3rd Year" />
            <asp:CheckBox ID="chkYL4" runat="server" Text="4th Year" />
            <br />
            <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click" />
            <br />
            <asp:Label ID="lblYearLevel" runat="server"></asp:Label>

        </div>



    </main>

</asp:Content>





<%--
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPageMusico.aspx.cs" Inherits="Web_IT2_Musico_P1.MyPageMusico" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">





    <title>My Page Musico</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            margin-left: 0px;
        }

        .auto-style3 {
            width: 121px;
        }
    </style>






</head>
<body>
    <form id="form1" runat="server">
        <div>






            <h3>Log-in</h3>
            <hr />
            <%--LABEL/TEXT BOX/BUTTON

            <table class="auto-style1">

                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Username ABCD 555"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUsername" runat="server" ToolTip="Enter username"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <%--<td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Upload a File"></asp:Label>
                    </td>--
<td class="auto-style2">
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

    <%--<asp:Button runat="server" Text="Cancel" />
                    </td>
                </tr>
            </table>

            <br />
            <asp:Label ID="lblUsername" runat="server"></asp:Label>

            <%-- HYPERLINK --
            <br />
            <br />
            <hr />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.javatpoint.com/asp-net-hyperlink">www.javatpoint.com</asp:HyperLink>

            <%-- RADIOBUTTON --%
            <br />
            <br />
            <hr />
            <asp:RadioButton ID="rbtnMale" runat="server" GroupName="Sex" Text="Male" />
            <asp:RadioButton ID="rbtnFemale" runat="server" GroupName="Sex" Text="Female" />
            <br />
            <asp:Button ID="btnOk" runat="server" Text="Ok" OnClick="btnOk_Click" />
            <br />
            <asp:Label ID="lblSex" runat="server"></asp:Label>


            <%-- CALENDAR --%
            <br />
            <br />
            <hr />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <asp:Label ID="lblDate" runat="server"></asp:Label>


            <%-- CHECKBOX 
            <br />
            <br />
            <hr />
            <asp:CheckBox ID="chkYL1" runat="server" Text="1st Year" />
            <asp:CheckBox ID="chkYL2" runat="server" Text="2nd Year" />
            <asp:CheckBox ID="chkYL3" runat="server" Text="3rd Year" />
            <asp:CheckBox ID="chkYL4" runat="server" Text="4th Year" />
            <br />
            <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click" />
            <br />
            <asp:Label ID="lblYearLevel" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>--%>
