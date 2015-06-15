using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryAndCityInformationWeb.BLL;
using CountryAndCityInformationWeb.Model;

namespace CountryAndCityInformationWeb.UI
{
    public partial class ViewCountry : System.Web.UI.Page
    {
        CountryManager countryManager = new CountryManager();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            countryTotalGridView.DataSource = countryManager.GetNoOfCityAndPeople();
            countryTotalGridView.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Country aCountry = new Country();
            aCountry.CountryName = viewCountryNameTextBox.Text;
            countryTotalGridView.DataSource = countryManager.SearchAllCountryInformation(aCountry);
            countryTotalGridView.DataBind();
        }
       
    }
}