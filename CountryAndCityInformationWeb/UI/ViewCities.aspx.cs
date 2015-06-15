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
    public partial class ViewCities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCountryNameDropDown();
            viewCitiesGridView.DataSource = cityManager.GetAllCityInformation();
            viewCitiesGridView.DataBind();
        }
        CityManager cityManager = new CityManager();
        CountryManager countryManager = new CountryManager();
        public void LoadCountryNameDropDown()
        {
            if (!IsPostBack)
            {
                viewCountryDropDownList.Items.Clear();
                List<Country> countryList = countryManager.GetAllCountry();
                foreach (var country in countryList)
                {
                    ListItem item = new ListItem();
                    item.Text = country.CountryName;
                    item.Value = country.Id.ToString();
                    viewCountryDropDownList.Items.Add(item);
                    viewCountryDropDownList.DataBind();
                }
            }
        }

        protected void viewCitiesSearchButton_Click(object sender, EventArgs e)
        {
            if (cityRadioButton.Checked) {
                City aCity = new City();
                aCity.CityName = viewCityNameTextBox.Text;
                viewCitiesGridView.DataSource = cityManager.SearchCityInformation(aCity);
                viewCitiesGridView.DataBind();
            }
            if (countryRadioButton.Checked) {
                Country aCountry = new Country();
                aCountry.Id = int.Parse(viewCountryDropDownList.SelectedItem.Value);
                viewCitiesGridView.DataSource = countryManager.SearchCountryInformation(aCountry);
                viewCitiesGridView.DataBind();
            }
        }
    }
}