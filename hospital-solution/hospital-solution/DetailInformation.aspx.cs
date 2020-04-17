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
    }
}