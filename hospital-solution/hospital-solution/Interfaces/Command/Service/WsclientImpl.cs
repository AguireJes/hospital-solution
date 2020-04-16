using hospital_solution.Class.Connection.Service;
using hospital_solution.Interfaces.Command.Api;
using MySql.Data.MySqlClient;
using System;
using System.Web.UI.WebControls;

namespace hospital_solution.Interfaces.Command.Service
{
    public class WsclientImpl : Wsclient
    {
        ConnectionImpl connection = new ConnectionImpl();

        public bool signIn(string user, string pass)
        {
            Boolean response = false;
            try
            {
                
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

        public void loadDropDownList(DropDownList dropDownList, string querySentence, string valueField, string textField)
        {
            try
            {
                MySqlConnection connectionBd = connection.getConnection();

                MySqlCommand cmd;
                cmd = new MySqlCommand(querySentence, connectionBd);
                
                dropDownList.DataSource = cmd.ExecuteReader();
                dropDownList.DataTextField = textField;
                dropDownList.DataValueField = valueField;
                dropDownList.DataBind();
                connectionBd.Close();
                
                dropDownList.Items.Insert(0, new ListItem("Seleccionar", "Seleccionar"));
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
        }

        private static void showMessage(string v, string message)
        {
            throw new NotImplementedException(message);
        }
    }
}