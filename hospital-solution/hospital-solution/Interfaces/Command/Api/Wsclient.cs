using hospital_solution.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace hospital_solution.Interfaces.Command.Api
{
    interface Wsclient
    {
        Boolean SignIn(String user, String pass);

        void LoadDropDownList(DropDownList dropDownList, string querySentence, string valueField, string textField);

        void LoadDropDownList(DropDownList dropDownList, string querySentence, string valueField, string textField, string district);
        
        void LoadListBox(ListBox listBox, string querySentence, string valueField, string textField);

        void SavePatient(PatientDTO patient);

        void SaveSymptoms(int idPatient, string idSymptom);

        void LaveTravelCountries(int idPatient, string idCountry);

        void LoadTownshipChart();
    }
}
