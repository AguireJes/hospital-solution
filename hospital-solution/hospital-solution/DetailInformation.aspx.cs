using hospital_solution.Interfaces.Command.Service;
using hospital_solution.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_solution
{
    public partial class DetailInformation : System.Web.UI.Page
    {
        PatientDTO patient = new PatientDTO();
        WsclientImpl wsClientImpl = new WsclientImpl();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDownList();
            }
        }

        protected void documentType_SelectedIndexChanged(object sender, EventArgs e)
        {
            patient.documentType = documentType.SelectedItem.Value;
            switch (patient.documentType)
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

        private void BindDropDownList()
        {
            string query = "select * from hospital.sexo";
            wsClientImpl.loadDropDownList(dropDownList: sexType, query, "valor", "descripcion");
        }
    }
}