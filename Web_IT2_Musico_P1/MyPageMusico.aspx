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

            <table class="auto-style1">
                
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
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
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_click" />
                    </td>
                </tr>
            </table>

           <br />

           <asp:Label ID="lblUsername" runat="server"></asp:Label>

           <br />

           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.javatpoint.com/asp-net-hyperlink">www.javatpoint.com</asp:HyperLink>





        </div>
    </form>
</body>
</html>
