﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hospital_solution.Class
{
    interface ConnectionApi
    {
         MySqlConnection getConnection();
    }
}
