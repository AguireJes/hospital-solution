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
        Boolean signIn(String user, String pass);

        void loadDropDownList(DropDownList dropDownList, string querySentence, string valueField, string textField);
    }
}
