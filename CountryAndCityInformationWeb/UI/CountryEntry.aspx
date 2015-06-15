<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountryEntry.aspx.cs" Inherits="CountryAndCityInformationWeb.UI.CountryEntry" %>

<!DOCTYPE html>
<html>
<head runat="server">
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
                    Country Entry
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
                    <asp:TextBox ID="countryNameTextBox" runat="server" Width="177px"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="About"></asp:Label>
                    <asp:TextBox ID="aboutCountryTextBox" runat="server" Height="39px" Width="175px"></asp:TextBox><br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="saveButton" runat="server" Text="Save" Height="32px" Width="57px" OnClick="saveButton_Click" />&nbsp; &nbsp;
                 <asp:Button ID="cancelButton" runat="server" Text="Cancel" Width="78px" Height="31px" OnClick="cancelButton_Click1" />
                    &nbsp;&nbsp;<br />
                    &nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="msgLabel" runat="server" Text=""></asp:Label>
                </div>
                <div class="content2">
                    <asp:GridView ID="countryGridView" runat="server" CellPadding="3" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="Solid" BorderWidth="1px" CellSpacing="2" HorizontalAlign="Center">
                        <Columns>
                            <asp:BoundField DataField="SerialNo" HeaderText="Serial No                " SortExpression="SerialNo" />
                            <asp:BoundField DataField="CountryName" HeaderText="Name" SortExpression="CountryName" />
                            <asp:BoundField DataField="AboutCountry" HeaderText="About" SortExpression="AboutCountry" />
                        </Columns>
                        <EditRowStyle BorderColor="Blue" BorderStyle="Solid" BorderWidth="2px" />
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#009933" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" BorderColor="#339933" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
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
