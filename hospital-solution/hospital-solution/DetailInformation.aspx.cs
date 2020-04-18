using hospital_solution.Interfaces.Command.Service;
using System;

namespace hospital_solution
{
    public partial class DetailInformation : System.Web.UI.Page
    {
        WsclientImpl wsClientImpl = new WsclientImpl();

        //Private methods
        private void LoadCatalogs()
        {
            LoadSexCatalog();
            LoadBloodCatalog();
            LoadCountryCatalog();
            LoadDistrictCatalog();
            LoadCountryRiskCatalog();
            LoadSymptomCatalog();
        }

        private void LoadSexCatalog()
        {
            string query = "select * from hospital.sexo";
            wsClientImpl.loadDropDownList(dropDownList: sexType, query, "valor", "descripcion");
        }

        private void LoadBloodCatalog()
        {
            string query = "select * from hospital.tiposangre";
            wsClientImpl.loadDropDownList(dropDownList: bloodType, query, "idtiposangre", "sangre");
        }

        private void LoadCountryCatalog()
        {
            string query = "select * from hospital.paises";
            wsClientImpl.loadDropDownList(dropDownList: countryChoice, query, "idpaises", "pais");
        }

        private void LoadDistrictCatalog()
        {
            string query = "select * from hospital.distrito";
            wsClientImpl.loadDropDownList(dropDownList: districtChoice, query, "iddistrito", "descripcion");
        }

        private void LoadCountryRiskCatalog()
        {
            string query = "select * from  hospital.paises where riesgo = 'S'";
            wsClientImpl.loadListBox(listBox: chooseTravelCountry, query, "idpaises", "pais");
        }

        private void LoadSymptomCatalog()
        {
            string query = "select * from hospital.sintomas";
            wsClientImpl.loadListBox(listBox: symptoms, query, "idsintomas", "descripcion");
        }


        //Protected methods
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCatalogs();
            }
        }

        protected void houseType_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (houseType.SelectedItem.Value)
            {
                case "C":
                    fieldSlum.Visible = true;
                    fieldBuilding.Visible = false;
                    break;

                case "AP":
                    fieldBuilding.Visible = true;
                    fieldSlum.Visible = false;
                    break;

                default:
                    Console.WriteLine("No llego el dato tipo de vivienda");
                    break;
            }
        }

        protected void travelCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (travelCountry.SelectedItem.Value)
            {
                case "S":
                    fieldTravelCountry.Visible = true;
                    break;

                case "N":
                    fieldTravelCountry.Visible = false;
                    break;

                default:
                    Console.WriteLine("No llego el dato viajo a pais");
                    break;
            }
        }

        protected void haveSymptops_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (haveSymptops.SelectedItem.Value)
            {
                case "S":
                    fieldHaveSymptom.Visible = true;
                    fieldPassport.Visible = false;
                    break;

                case "N":
                    fieldHaveSymptom.Visible = false;
                    break;

                default:
                    Console.WriteLine("No llego el dato sintomas");
                    break;
            }
        }

        protected void documentType_SelectedIndexChanged(object sender, EventArgs e)
        {

            switch (documentType.SelectedItem.Value)
            {
                case "C":
                    fieldId.Visible = true;
                    fieldPassport.Visible = false;
                    break;

                case "P":
                    fieldPassport.Visible = true;
                    fieldId.Visible = false;
                    break;

                default:
                    Console.WriteLine("No llego el dato documento");
                    break;
            }
        }

        protected void districtChoice_SelectedIndexChanged(object sender, EventArgs e)
        {
            string query = "select * from hospital.corregimiento where distrito = @district";
            wsClientImpl.loadDropDownList(dropDownList: townshipChoice, query, "iddistrito", "descripcion", districtChoice.SelectedValue);
            fieldTownShip.Visible = true;
        }
    }
}