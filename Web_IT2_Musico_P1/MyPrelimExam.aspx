<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="MyPrelimExam.aspx.cs" 
    Inherits="Web_IT2_Musico_P1.PrelimExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>
        <hr />
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Prelim Exam Web Application Development</h1>
        </section>
        <hr />
        <div class="row">


            <section class="col-md-6" aria-labelledby="StudentInformation">
                <h2 id="StudentInformation">Student Information</h2>
                <hr />
                <table class="auto-style1">
                    <%--STUDENT NUMBER--%>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblStudentNum" runat="server" Text="Student Number:"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtStudentNum" runat="server" ToolTip="Enter your student number" ></asp:TextBox>
                        </td>
                    </tr>
                    <%--STUDENT NAME--%>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblStudentName" runat="server" Text="Student Name:"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtStudentName" runat="server" ToolTip="Enter your full name"></asp:TextBox>
                        </td>
                    </tr>
                    <%--COURSE--%>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblCourse" runat="server" Text="Course:" ></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="ddlCourse" runat="server" >
                                <asp:ListItem Value=""></asp:ListItem>
                                <asp:ListItem>BSIT </asp:ListItem>
                                <asp:ListItem>BSCS</asp:ListItem>
                                <asp:ListItem>BSIS</asp:ListItem>
                                <asp:ListItem>ACT</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <%--YEAR LEVEL--%>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblYearLevel" runat="server" Text="Year Level:"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="ddlYearLevel" runat="server" >
                                <asp:ListItem Value=""></asp:ListItem>
                                <asp:ListItem>First </asp:ListItem>
                                <asp:ListItem>Second</asp:ListItem>
                                <asp:ListItem>Third</asp:ListItem>
                                <asp:ListItem>Fourth</asp:ListItem>
                                <asp:ListItem>Fifth</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <%--SEX--%>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblSex" runat="server" Text="Sex:"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:RadioButton ID="rbtnMale" runat="server" GroupName="Sex" Text="Male" />
                            <asp:RadioButton ID="rbtnFemale" runat="server" GroupName="Sex" Text="Female" />
                        </td>
                    </tr>
                    <%--SUBMIT--%>
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style2">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        </td>
                    </tr>
                </table>
            </section>
            <section class="col-md-6" aria-labelledby="Output">
                <h2 id="Output">Output</h2>
                <hr />

                <table class="auto-style1">
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </table>
            </section>
        </div>

    </main>

</asp:Content>