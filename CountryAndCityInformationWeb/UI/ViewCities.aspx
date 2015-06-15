<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCities.aspx.cs" Inherits="CountryAndCityInformationWeb.UI.ViewCities" %>

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
                    View Cities!
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
                        <asp:RadioButton ID="cityRadioButton" runat="server" Text="City Name: " GroupName="Search" />
                        <asp:TextBox ID="viewCityNameTextBox" runat="server"></asp:TextBox><br />
                        <br />
                        <asp:RadioButton ID="countryRadioButton" runat="server" Text="Country: " GroupName="Search" />
                        <asp:DropDownList ID="viewCountryDropDownList" runat="server" Height="22px" Width="154px"></asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="viewCitiesSearchButton" runat="server" Text="Search" Height="33px" OnClick="viewCitiesSearchButton_Click" Width="72px" />
                        <br />
                        <br />
                    </fieldset>
                </div>

                <div class="content2" aria-atomic="False">
                    <asp:GridView ID="viewCitiesGridView" runat="server" AutoGenerateColumns="False" GridLines="Vertical">
                        <Columns>
                            <asp:BoundField DataField="SerialNo" HeaderText="Serial No" SortExpression="SerialNo" >
                            <ControlStyle BorderColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CityName" HeaderText="City Name" SortExpression="CityName" />
                            <asp:BoundField DataField="AboutCity" HeaderText="About" SortExpression="AboutCity" />
                            <asp:BoundField DataField="NoOfDwellers" HeaderText="No. Of Dwellers" SortExpression="NoOfDwellers" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="Weather" HeaderText="Weather" SortExpression="Weather" />
                            <asp:BoundField DataField="ACountry.CountryName" HeaderText="Country" SortExpression="ACountry.CountryName" />
                            <asp:BoundField DataField="ACountry.AboutCountry" HeaderText="About Country" SortExpression="ACountry.AboutCountry" />
                        </Columns>
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
