using hospital_solution.Interfaces.Command.Service;
using hospital_solution.Model;
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
            LoadHouseTypeCatalog();
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

        private void LoadHouseTypeCatalog()
        {
            string query = "select * from hospital.tipovivienda";
            wsClientImpl.loadDropDownList(dropDownList: houseType, query, "idtipovivienda", "descripcion");
        }

        private void SaveSymptoms(int idPatient, string idSymptom)
        {
            wsClientImpl.saveSymptoms(idPatient, idSymptom);
        }

        private void SaveTravelCountrys(int idPatient, string idCountry)
        {
            wsClientImpl.saveTravelCountries(idPatient, idCountry);
        }

        //Protected methods
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCatalogs();
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
            string query = "select * from hospital.corregimiento where iddistrito = @district";
            wsClientImpl.loadDropDownList(dropDownList: townshipChoice, query, "idcorregimiento", "descripcion", districtChoice.SelectedItem.Value);
            fieldTownShip.Visible = true;
        }

        protected void savePatient_Click(object sender, EventArgs e)
        {
            PatientDTO patient = new PatientDTO();
            Boolean redirectToContact = false;
            Random rnd = new Random();
            int idpatient = rnd.Next(1000);

            patient.id = idpatient;
            patient.name = inputName.Text;
            patient.image = null;
            patient.documentType = documentType.SelectedItem.Value;
            patient.document = null != inputId ? inputId.Text : inputPassport.Text;
            patient.sex = sexType.SelectedItem.Value;
            patient.bloodType = bloodType.SelectedItem.Value;
            patient.email = inputEmail.Text;
            patient.telephone = inputPhone.Text;
            patient.country = countryChoice.SelectedItem.Value;
            patient.district = districtChoice.SelectedItem.Value;
            patient.township = townshipChoice.SelectedItem.Value;
            patient.housingType = houseType.SelectedItem.Value;
            patient.houseResidence = houseInput.Text;
            patient.idHouse = numberHouseOrAp.Text;
            patient.symptomatic = haveSymptops.SelectedValue;
            patient.travelCountry = travelCountry.SelectedValue;
            patient.personContact = chooseContact.SelectedValue;
            patient.personQuantity = !string.IsNullOrEmpty(quantityPersons.Text) ? Convert.ToInt32(quantityPersons.Text) : 0;

            redirectToContact = patient.personQuantity > 0  ? true : false;

            wsClientImpl.savePatient(patient);

            if (patient.symptomatic == "S")
            {
                symptoms.Items.RemoveAt(0);
                for (int i = 0; i < symptoms.Items.Count; i++)
                {
                    SaveSymptoms(patient.id, symptoms.Items[i].Value);
                }
            }

            if(patient.travelCountry == "S")
            {
                chooseTravelCountry.Items.RemoveAt(0);
                for (int i = 0; i < chooseTravelCountry.Items.Count; i++)
                {
                    SaveTravelCountrys(patient.id, chooseTravelCountry.Items[i].Value);
                }
                    
            }

            if (redirectToContact)
            {
                //Redirige a contacto
            } else
            {
                //Redirige a dashboard
            }
        }
    }
}