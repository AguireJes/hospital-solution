using hospital_solution.Interfaces.Command.Service;
using System;

namespace hospital_solution
{
    public partial class DetailInformation : System.Web.UI.Page
    {
        WsclientImpl wsClientImpl = new WsclientImpl();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadSexCatalog();
                loadBloodCatalog();
                loadCountryCatalog();
                loadDistrictCatalog();
                loadCountryRiskCatalog();
                loadSymptomCatalog();
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

        private void loadSexCatalog()
        {
            string query = "select * from hospital.sexo";
            wsClientImpl.loadDropDownList(dropDownList: sexType, query, "valor", "descripcion");
        }

        private void loadBloodCatalog()
        {
            string query = "select * from hospital.tiposangre";
            wsClientImpl.loadDropDownList(dropDownList: bloodType, query, "idtiposangre", "sangre");
        }

        private void loadCountryCatalog()
        {
            string query = "select * from hospital.paises";
            wsClientImpl.loadDropDownList(dropDownList: countryChoice, query, "idpaises", "pais");
        }

        private void loadDistrictCatalog()
        {
            string query = "select * from hospital.distrito";
            wsClientImpl.loadDropDownList(dropDownList: districtChoice, query, "iddistrito", "descripcion");
        }

        private void loadCountryRiskCatalog()
        {
            string query = "select * from  hospital.paises where riesgo = 'S'";
            wsClientImpl.loadListBox(listBox: chooseTravelCountry, query, "idpaises", "pais");
        }

        private void loadSymptomCatalog()
        {
            string query = "select * from hospital.sintomas";
            wsClientImpl.loadListBox(listBox: symptoms, query, "idsintomas", "descripcion");
        }

        protected void houseType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void haveSymptom_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void travelCountry_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}