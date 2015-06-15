<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityEntry.aspx.cs" Inherits="CountryAndCityInformationWeb.UI.CityEntry" %>

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
                    City Entry
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
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label> 
                    <asp:TextBox ID="cityNameTextBox" runat="server" Width="147px"></asp:TextBox> <br /><br />
                    <asp:Label ID="Label2" runat="server" Text="About"></asp:Label> 
                    <asp:TextBox ID="aboutCityTextBox" runat="server" Width="146px"></asp:TextBox><br /><br />
                    
                     <asp:Label ID="Label3" runat="server" Text="No. of Dwellers"></asp:Label> 
                    <asp:TextBox ID="cityDwellersTextBox" runat="server" Width="86px"></asp:TextBox><br /><br /> 
                    <asp:Label  ID="Label4" runat="server" Text="Location"></asp:Label> 
                    <asp:TextBox ID="cityLocationTextBox" runat="server" Height="33px" Width="133px"></asp:TextBox><br /><br />
                    <asp:Label ID="Label5" runat="server" Text="Weather"></asp:Label> 
                    <asp:TextBox ID="cityWeatherTextBox" runat="server" Width="135px"></asp:TextBox><br /><br />
                    <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
                    <asp:DropDownList ID="countryDropDownList" runat="server" Height="29px" Width="146px" AutoPostBack="false"></asp:DropDownList><br /><br />

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button ID="citySaveButton" runat="server" Text="Save" Height="31px" Width="56px" OnClick="citySaveButton_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="cityCancelButton" runat="server" Text="Cancel" Height="30px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="cityMagLabel" runat="server" Text=""></asp:Label>
                </div>
                <div class="content2">
                    <asp:GridView ID="cityGridView" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" AutoGenerateColumns="False" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="SerialNo" HeaderText="Serial No" SortExpression="SerialNo" />
                            <asp:BoundField DataField="CityName" HeaderText="Name" SortExpression="CityName" />
                            <asp:BoundField DataField="NoOfDwellers" HeaderText="No Of Dwellers" SortExpression="NoOfDwellers" />
                            <asp:BoundField DataField="ACountry.CountryName" HeaderText="Country" SortExpression="ACountry.CountryName" />
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
