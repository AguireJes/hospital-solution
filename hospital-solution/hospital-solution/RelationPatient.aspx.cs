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
            wsClientImpl.LoadDropDownList(dropDownList: sexTypeContact, query, "valor", "descripcion");
        }

        private void LoadBloodCatalog()
        {
            string query = "select * from hospital.tiposangre";
            wsClientImpl.LoadDropDownList(dropDownList: bloodTypeContact, query, "idtiposangre", "sangre");
        }

        private void LoadCountryCatalog()
        {
            string query = "select * from hospital.paises";
            wsClientImpl.LoadDropDownList(dropDownList: countryChoiceContact, query, "idpaises", "pais");
        }

        protected void saveContact_Click(object sender, EventArgs e)
        {
            ContactDTO contact = new ContactDTO();

            int countContact = 0;
            countContact = countContact + 1;
            string idHouse = Convert.ToString(System.Web.HttpContext.Current.Session["idHouse"]);
            string personQuantity = Convert.ToString(System.Web.HttpContext.Current.Session["personQuantity"]);

            sexTypeContact.Items.RemoveAt(0);
            bloodTypeContact.Items.RemoveAt(0);
            countryChoiceContact.Items.RemoveAt(0);

            contact.name = inputName.Text;
            contact.sex = sexTypeContact.SelectedItem.Value;
            contact.bloodType = bloodTypeContact.SelectedItem.Value;
            contact.email = inputEmail.Text;
            contact.telephone = inputPhone.Text;
            contact.country = countryChoiceContact.SelectedItem.Value;

            wsClientImpl.SaveContacts(contact, idHouse);

            int persons = Convert.ToInt32(personQuantity);

            if (countContact >= persons)
            {
                saveContact.Enabled = false;
            }

            inputName.Text = null;
            inputEmail.Text = null;
            inputPhone.Text = null;
            sexTypeContact.ClearSelection();
            bloodTypeContact.ClearSelection();
            countryChoiceContact.ClearSelection();
        }

        protected void fowardForm_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DetailInformation.aspx");
        }
    }
}