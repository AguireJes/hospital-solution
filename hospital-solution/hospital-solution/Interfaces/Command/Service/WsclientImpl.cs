using hospital_solution.Class.Connection.Service;
using hospital_solution.Interfaces.Command.Api;
using MySql.Data.MySqlClient;
using System;

namespace hospital_solution.Interfaces.Command.Service
{
    public class WsclientImpl : Wsclient
    {
        public bool SignIn(string user, string pass)
        {
            Boolean response = false;
            try
            {
                ConnectionImpl connection = new ConnectionImpl();
                MySqlConnection connectionBd = connection.getConnection();

                string query = "select count(1) from hospital.login where username = @username and password = @password";
                
                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                cmd.Parameters.AddWithValue("@username", user);
                cmd.Parameters.AddWithValue("@password", pass);
                cmd.ExecuteNonQuery();
                
                int countUser = Convert.ToInt32(cmd.ExecuteScalar());
                connectionBd.Close();
                
                if (countUser > 0)
                {
                    response = true;
                }
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
            return response;
    }

        private static void showMessage(string v, string message)
        {
            throw new NotImplementedException(message);
        }
    }
}