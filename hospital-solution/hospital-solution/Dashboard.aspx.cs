using hospital_solution.Interfaces.Command.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_solution
{
    public partial class Dashboard : System.Web.UI.Page
    {
        WsclientImpl wsClientImpl = new WsclientImpl();

        protected void Page_Load(object sender, EventArgs e)
        {
            wsClientImpl.LoadTownshipChart(ltChart);
        }
    }
}