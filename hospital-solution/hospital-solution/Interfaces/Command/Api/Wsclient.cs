using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hospital_solution.Interfaces.Command.Api
{
    interface Wsclient
    {
        Boolean SignIn(String user, String pass);
    }
}
