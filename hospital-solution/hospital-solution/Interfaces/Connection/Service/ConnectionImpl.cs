using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hospital_solution.Class.Connection.Service
{
    public class ConnectionImpl : ConnectionApi
    {
        public MySqlConnection getConnection()
        {
            MySqlConnection con;
            con = new MySqlConnection("Data Source=localhost;Database=hospital;User ID=root;Password=rootnitch;port=3306");
            try
            {
                con.Open();
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
            return con;
        }

        private static void showMessage(string v, string message)
        {
            throw new NotImplementedException(message);
        }
    }
}