using hospital_solution.Interfaces.Command.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_solution
{
    public partial class RelationPatient : System.Web.UI.Page
    {
        WsclientImpl wsClientImpl = new WsclientImpl();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCatalogs();
        }

        private void LoadCatalogs()
        {
            LoadSexCatalog();
            LoadBloodCatalog();
            LoadCountryCatalog();
        }

        private void LoadSexCatalog()
        {
            string query = "select * from hospital.sexo";
            wsClientImpl.LoadDropDownList(dropDownList: sexType, query, "valor", "descripcion");
        }

        private void LoadBloodCatalog()
        {
            string query = "select * from hospital.tiposangre";
            wsClientImpl.LoadDropDownList(dropDownList: bloodType, query, "idtiposangre", "sangre");
        }

        private void LoadCountryCatalog()
        {
            string query = "select * from hospital.paises";
            wsClientImpl.LoadDropDownList(dropDownList: countryChoice, query, "idpaises", "pais");
        }

        protected void saveContact_Click(object sender, EventArgs e)
        {

        }

        protected void fowardForm_Click(object sender, EventArgs e)
        {

        }
    }
}