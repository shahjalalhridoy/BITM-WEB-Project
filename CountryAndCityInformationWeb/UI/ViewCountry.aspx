<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCountry.aspx.cs" Inherits="CountryAndCityInformationWeb.UI.ViewCountry" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <title>Country Entry</title>
    <link href="reset.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <header>
                   
                <h1>
                    <img alt="logo" src="../Microsoft-Visual-Studio-icon.png" />
                    View Country
                </h1>
            </header>
             <nav>
                <ul>
                    <li><a href="CountryEntry.aspx">Country Entry</a></li>
                    <li><a href="CityEntry.aspx">City Entry</a></li>
                    <li><a href="ViewCities.aspx">View Cities</a></li>
                    <li><a href="ViewCountry.aspx">View Countries</a></li>
                </ul>
            </nav><br /><br />
            <div class="container">
                <div class="content1">
                    <fieldset>
                        <legend><b>Search Criteria</b></legend>
                        <asp:Label ID="Label1" runat="server" Text="Name "></asp:Label>
                        <asp:TextBox ID="viewCountryNameTextBox" runat="server"></asp:TextBox><br />
                        <br />
                        <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="Button1_Click" Height="38px" Width="70px" />
                    </fieldset>
                </div>
                <div class="content2">
                    <asp:GridView ID="countryTotalGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="MyCountry.SerialNo" HeaderText="Serial No" SortExpression="MyCountry.SerialNo" />
                            <asp:BoundField DataField="MyCountry.CountryName" HeaderText="Country" SortExpression="MyCountry.CountryName" />
                            <asp:BoundField DataField="MyCountry.AboutCountry" HeaderText="About" SortExpression="MyCountry.AboutCountry" />
                            <asp:BoundField DataField="CityCount" HeaderText="No. Of Cities" SortExpression="CityCount" />
                            <asp:BoundField DataField="TotalDwellers" HeaderText="No. Of Dwellers" SortExpression="TotalDwellers" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                         
                </div>
                 <div class="footer">
                         <h2> © Copyright 2058 (dot).infiniti</h2> 
                         </div>
            </div>

            
        </div>
    </form>
</body>
</html>
