<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="MyBootstrap5.aspx.cs" Inherits="Web_IT2_Musico_P1.MyBootstrap5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <style type="text/css">
            .pic {
                width: 100%;
                object-fit: fill;
                object-position: center;
            }

            .pic2 {
                width: 100%;
                height: 100%;
                object-position: center;
                object-fit: fill;
            }

            .text {
                font-family: Dubai;
                font-size: 8px;
                padding-top: 9px;
                /*background-color: antiquewhite 50;*/
                /*border: thick;
                border-color: darkblue;*/
            }
        </style>
        <div class="row text-md-center mb-3">
            <div class="col h1" style="background-color: cadetblue;">
                Bootstrap V.5
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-6" style="background-color: black;">

                <asp:Image ID="Image1" runat="server" ImageUrl="/images/MLBBLogo.jpeg" class="pic" />
            </div>
            <div class="col-md-6" style="background-color: palevioletred;">
                <asp:Image ID="Image9" runat="server" ImageUrl="/images/Media (2).jpeg" class="pic" />
            </div>

        </div>
        <%-- 3RD ROW --%>
        <div class="row mb-3 skills" style="height: 100%;">
            <%-- MAIN HERO --%>
            <div class="col-md-3" style="background-color: #D4AF37;">
                <div class="row">
                    <asp:Image ID="Image8" runat="server" ImageUrl="/Images/Luo Yi (Oracle of Sol).jpeg" class="pic2" />
                </div>
            </div>
            <%-- SKILLS --%>
            <div class="col-md-3" style="background-color: tomato;">
                <%-- DUALITY --%>
                <div class="row skills justify-content-around border-1" style="background-color: plum; justify-content: space-between;">
                    <div class="col-3" style="padding: 10px;">
                        <asp:Image ID="Image2" runat="server" ImageUrl="/Images/Duality.png" class="pic" />
                    </div>
                    <div class="col-9 text">
                        <h6>DUALITY</h6>
                        <p>
                            Luo Yi's skills create Sigils of Yin/Yang on the battlefield. Each Sigil lasts up to 6 seconds.
                        Sigils opposite attributes will trigger Yin-Yang Reaction when they are within a certain distance,[how much?] dealing 365 (+20 × Hero Level) (+190% Total Magic Power) Magic Damage to the marked [enemy heroes], stunning them for 1 second, and pulling them toward each other .
                        Each time Luo Yi applies a new Sigil to a marked enemy [hero], she gains 300 (+10 × Hero Level) (+150% Total Magic Power) shield (up to 3 stacks) and 30% extra Movement Speed that decays over 2 seconds.
                        </p>
                    </div>
                </div>
                <%-- DISPERSION --%>
                <div class="row skills justify-content-around border-1" style="background-color: #5D2F8E; justify-content: space-between;">
                    <div class="col-3" style="padding: 10px;">
                        <asp:Image ID="Image3" runat="server" ImageUrl="/Images/Dispersion.png" class="pic" />
                        <asp:Image ID="Image6" runat="server" ImageUrl="/Images/Dispersion_29.png" class="pic" />
                    </div>
                    <div class="col-9 text">
                        <h6>DISPERSION</h6>
                        <p>
                            Luo Yi casts the energy of Yin/Yang in the target direction, dealing 210–410 (+120% Total Magic Power) Magic Damage to the first enemy hit ad those behind in a cone. Enemy heroes hit are marked with Sigil of Yin/Yang.
Luo Yi stores up to 4 Dispersion charges and gains 1 charge every 8 seconds. She also gains 1 charge each time Yin-Yang Reaction is triggered.
The state of this skill changes on each cast.
                        </p>
                    </div>
                </div>
                <%-- ROTATION --%>
                <div class="row skills justify-content-around border-1" style="background-color: #A9A9A9; justify-content: space-between;">
                    <div class="col-3" style="padding: 10px;">
                        <asp:Image ID="Image4" runat="server" ImageUrl="/Images/Rotation.png" class="pic" />
                        <asp:Image ID="Image7" runat="server" ImageUrl="/Images/Rotation_29.png" class="pic" />
                    </div>
                    <div class="col-9 text">
                        <h6>ROTATION</h6>
                        <p>
                            Luo Yi summons Fire of Yang/Aqua of Yin at a target location, dealing 250–350 (+50% Total Magic Power) Magic Damage to enemies hit and slowing them by 60% for 0.5 seconds.
Fire of Yang/Aqua of Yin then remains at the location for 6 seconds, dealing 50–70 (+10% Total Magic Power) Magic Damage every 0.7 seconds. It can also trigger Yin-Yang Reaction with mark of opposite attributes.
The state of this skill changes on each cast.
                        </p>
                    </div>
                </div>
                <%-- DUALITY --%>
                <div class="row skills justify-content-around ju border-1" style="background-color: thistle; justify-content: space-between;">
                    <div class="col-3" style="padding-top: 10px;">
                        <asp:Image ID="Image5" runat="server" ImageUrl="/Images/Duality.png" class="pic" />
                    </div>
                    <div class="col-9 text">
                        <h6>DUALITY</h6>
                        <p>
                            Active: Luo Yi creates a Teleport Circle around herself and marks target location (within 20 units) as its destination. After 3 seconds delay, allied heroes (including herself) within the Circle will be teleported to the location.
Passive: Luo Yi’s Cooldown Reduction is increased by 6%–10%.
                        </p>
                    </div>
                </div>

            </div>
            <%-- BATTLEFIELD --%>
            <div class="col-md-3" style="background-color: mediumpurple;">
                row 3 - column 3
            </div>
            <%-- HIGHEST RANK --%>
            <div class="col-md-3" style="background-color: mistyrose;">
                row 3 - column 4
            </div>
        </div>

        <%-- 4TH ROW --%>
        <div class="row mb-3">
            <div class="col-md-10 justify-content-evenly" style="background-color: thistle;">
                SUB HEROES
                <div class="row">
                    <div class="col" style="background-color: darksalmon; padding: 10px;">
                        <asp:Image ID="Image10" runat="server" ImageUrl="/Images/Media (3).jpeg" Width="200px" class="cenyer" />
                    </div>
                    <div class="col" style="background-color: deeppink; padding: 10px;">
                        <asp:Image ID="Image11" runat="server" ImageUrl="/Images/Media (4).jpeg" Width="206px" />
                    </div>
                    <div class="col" style="background-color: greenyellow; padding: 10px;">
                        <asp:Image ID="Image12" runat="server" ImageUrl="/Images/Media (5).jpeg" Width="207px" />
                    </div>
                </div>
            </div>
            <div class="col-md-2" style="background-color: darkolivegreen;">
                <asp:Image ID="Image13" runat="server" ImageUrl="/images/Media (6).jpeg" />
            </div>

        </div>
    </main>

</asp:Content>
