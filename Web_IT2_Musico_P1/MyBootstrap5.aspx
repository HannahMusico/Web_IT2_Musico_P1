<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="MyBootstrap5.aspx.cs" Inherits="Web_IT2_Musico_P1.MyBootstrap5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <style type="text/css">
            .pic {
                width: 100%;
                object-fit: fill;
                object-position: center;
                margin-block: 10px;
            }

            .pic2 {
                width: 100%;
                height: 100%;
            }

            .text {
                font-family: Dubai;
                font-size: 8.8px;
                padding-top: 9px;
            }
        </style>

        <%-- 1ST ROW --%>
        <div class="row text-md-center mb-3">
            <div class="col h1" style="background-color:cadetblue;">
                Bootstrap V.5
            </div>
        </div>
        
        <%-- 2ND ROW --%>
        <div class="row mb-3">
            <div class="col-md-6" style="background-color: black;">

                <asp:Image ID="Image1" runat="server" ImageUrl="/images/MLBBLogo.jpeg" class="pic" />
            </div>
            <div class="col-md-6" style="background-color:#008080;">
                <asp:Image ID="Image9" runat="server" ImageUrl="/images/Media (2).jpeg" class="pic" />
            </div>

        </div>
        
        <%-- 3RD ROW --%>
        <div class="row mb-3">
            <%-- MAIN HERO --%>
            <div class="col-md-3 mb-3">
                <div class="row-sm-1 text-md-center" style="color: #e7da40; font-family: Chiller; text-shadow: 1px 1px 2px darkgoldenrod; padding-top: 10px;">
                    <h2>MAIN HERO</h2>
                </div>
                <div class="row-sm-11">
                    <asp:Image ID="Image8" runat="server" ImageUrl="/Images/Luo Yi (Oracle of Sol).jpeg" CssClass="pic2" />
                </div>

            </div>
            <%-- SKILLS --%>
            <div class="col-md-3 mb-3" style=" border-inline:groove;  border-block:groove;"">
                <%-- DUALITY --%>
                <div class="row justify-content-around border-1" style="background-color: plum; justify-content: space-between;">
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
                <div class="row justify-content-around border-1" style="background-color: #9871c2; justify-content: space-between;">
                    <div class="col-3 mb3" style="padding: 10px;">
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
                <div class="row justify-content-around border-1" style="background-color: #A9A9A9; justify-content: space-between;">
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
                <div class="row justify-content-around ju border-1" style="background-color: thistle; justify-content: space-between;">
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
            <%-- STATISTICS --%>
            <div class="col-md-3 mb-3">
                <div class="row-sm-auto text-md-center" style="color: #3a5e6f; font-family: chiller; text-shadow: 1px 1px 2px #395d73; padding-top: 10px;">
                    <h2>STATISTICS</h2>
                </div>
                <div class="row-sm-auto">
                    <asp:Image ID="Image14" runat="server" ImageUrl="/Images/Media (8).jpeg" class="pic2" />
                </div>
                <div class="row-sm-auto" style="padding-bottom: 10px;">
                    <asp:Image ID="Image15" runat="server" ImageUrl="/Images/Media (9).jpeg" class="pic2" />
                </div>
            </div>
            
            <%-- PLAYER --%>
            <div class="col-md-3" style="background-color:#baa6d5; height: 80%; border-inline:groove;  border-block:groove;">
                <div class="row-sm-auto text-md-center" style="color:darkslateblue; font-family: dubai; text-shadow: 1px 1px 2px darkslateblue; padding:10px;">
                    <h2>P L A Y E R</h2>
                </div>
                <div class="row-sm-10" style="font-size: 15.7px; font-family: Dubai;">
                    <strong>IGN:</strong> kape (ZAFYRA)<br>
                    <strong>Real Name:</strong> Hannah Mae Musico<br>
                    <strong>Gender:</strong> Female<br>
                    <strong>Role:</strong> Mage, Marksman, Support<br>
                    <strong>Current Rank:</strong> Legend I<br>
                    <strong>Highest Rank:</strong> Mythic<br>
                    <strong>Reason for Playing:</strong> Bonding with friends and family<br>
                    <strong>Liked Hero:</strong> Luo Yi (her skills are unique and best for team fights)<br>
                    <strong>Disliked Hero:</strong> Lancelot (because he's too fast and I can't get to shoot my skills at him)<br>
                    <br>

                    <!-- Additional Information -->
                    <strong>Favorite Skin:</strong> Starry Night (Luo Yi)<br>
                    <strong>Favorite Map:</strong> Crystal Mine<br>
                    <strong>Favorite Item Build:</strong> Genius Wand, Holy Crystal, Divine Glaive<br>
                    <strong>Winning Strategy:</strong> Maximizing use of skill 1 and 2, making sure to get the first kill in mid lane. Visit other lanes as well from time to time.<br>
                    <strong>Team/Clan:</strong> ZAFYRA Legends<br>
                    <strong>Recent Achievements:</strong> MVP of the Week (3 times), 10-0 streak in ranked matches<br>
                </div>


            </div>
        </div>

        <%-- 4TH ROW --%>
        <div class="row mb-3">
            <div class="col-md-10 text-md-center mb-3" style="background-color: #7399aa;">
                <div class="row justify-content-around border-1" style="font-family: Chiller; text-shadow: 1px 1px 2px black; padding-top: 10px;">
                    <h1>TOP SKINS</h1>
                </div>
                <div class="row">
                    <div class="col" style="background-color: #7399aa; padding: 10px; margin: 30px; border: 2px solid #082430;">
                        <asp:Image ID="Image10" runat="server" ImageUrl="/Images/Media (3).jpeg" class="pic2" />
                    </div>
                    <div class="col" style="background-color: #7399aa; padding: 10px; margin: 30px; border: 2px solid #082430;">
                        <asp:Image ID="Image11" runat="server" ImageUrl="/Images/Media (4).jpeg" class="pic2" />
                    </div>
                    <div class="col" style="background-color: #7399aa; padding: 10px; margin: 30px; border: 2px solid #082430;">
                        <asp:Image ID="Image12" runat="server" ImageUrl="/Images/Media (5).jpeg" class="pic2" />
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <asp:Image ID="Image13" runat="server" ImageUrl="/images/Media (6).jpeg" class="pic2" />
            </div>

        </div>
    </main>

</asp:Content>
