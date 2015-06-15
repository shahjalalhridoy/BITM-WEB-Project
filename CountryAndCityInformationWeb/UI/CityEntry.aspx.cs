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
    public partial class CityEntry : System.Web.UI.Page
    {
        CountryManager countryManager = new CountryManager();
        CityManager cityManager = new CityManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCountryNameDropDown();
            cityGridView.DataSource = cityManager.GetAllCityInformation();
            cityGridView.DataBind();
        }
        public void LoadCountryNameDropDown()
        {
            if (!IsPostBack)
            {

                countryDropDownList.Items.Clear();
                List<Country> countryList = countryManager.GetAllCountry();

                foreach (var country in countryList)
                {
                    ListItem item = new ListItem();
                    item.Text = country.CountryName;
                    item.Value = country.Id.ToString();
                    countryDropDownList.Items.Add(item);
                    countryDropDownList.DataBind();
                }

            }
        }

        protected void citySaveButton_Click(object sender, EventArgs e)
        {
            City aCity = new City();
            aCity.CityName = cityNameTextBox.Text;
            aCity.AboutCity = aboutCityTextBox.Text;
            aCity.NoOfDwellers =int.Parse( cityDwellersTextBox.Text);
            aCity.Location = cityLocationTextBox.Text;
            aCity.Weather = cityWeatherTextBox.Text;
            if (aCity.CityName == "" || aCity.AboutCity == "" || aCity.Location == "" || aCity.Weather == "")
            {
                cityMagLabel.Text = "Please fill the blank field!";
                return;
            }
            aCity.CountryId = int.Parse(countryDropDownList.SelectedValue);

            if (cityManager.IsCityNameExists(aCity)) {
                cityMagLabel.Text = "City Name Already Exists!";
                return;
            }
            cityMagLabel.Text = cityManager.SaveCity(aCity);

            cityGridView.DataSource = cityManager.GetAllCityInformation();
            cityGridView.DataBind();
            cityNameTextBox.Text = "";
            aboutCityTextBox.Text = "";
            cityDwellersTextBox.Text = "";
            cityLocationTextBox.Text = "";
            cityWeatherTextBox.Text = "";
        }

       
    }
}