<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="MyBootstrap5.aspx.cs" Inherits="Web_IT2_Musico_P1.MyBootstrap5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        
            <div class="row text-md-center mb-3">
                <div class="col h1" style="background-color: cadetblue;">
                    Bootstrap V.5
                </div>
            </div>
            <div class="row">
                <div class="col-md-6" style="background-color: lemonchiffon;">
                    row 2 - column 1
                    The University of Perpetual Help has been providing quality education for the past 45 years by continuously 
                    enhancing its academic programs as it paves the journey of tomorrow's leaders. Students are surrounded 
                    by an environment that encourages proficiency in their chosen fields. As a re
                </div>
                <div class="col-md-6" style="background-color: palevioletred;">
                  <%--  <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.jpg" Height="200" />--%>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3" style="background-color: aliceblue;">
                    row 3 - column 1
                </div>
                <div class="col-md-3" style="background-color: tomato;">
                    row 3 - column 2
                </div>
                <div class="col-md-3" style="background-color: mediumpurple;">
                    row 3 - column 3
                </div>
                <div class="col-md-3" style="background-color: mistyrose;">
                    row 3 - column 4
                </div>
            </div>
            <div class="row">
                <div class="col-md-10" style="background-color: thistle;">
                    <div class="row">
                        <div class="col-sm-4 " style="background-color: darksalmon;">
                            row 4 - column 1 - 1
                        </div>
                        <div class="col-sm-4" style="background-color: deeppink;">
                            row 4 - column 1 - 2
                        </div>
                        <div class="col-sm-4" style="background-color: greenyellow;">
                            row 4 - column 1 - 3
                        </div>
                    </div>
                </div>
                <div class="col-md-2" style="background-color: darkolivegreen;">
                    row 4 - column 2
                </div>
            </div>
      
    </main>

</asp:Content>
