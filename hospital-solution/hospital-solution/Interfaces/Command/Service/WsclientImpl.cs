using hospital_solution.Class.Connection.Service;
using hospital_solution.Interfaces.Command.Api;
using hospital_solution.Model;
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

        public void loadDropDownList(DropDownList dropDownList, string querySentence, string valueField, string textField, string district)
        {
            try
            {
                MySqlConnection connectionBd = connection.getConnection();

                MySqlCommand cmd;
                cmd = new MySqlCommand(querySentence, connectionBd);
                cmd.Parameters.AddWithValue("@district", district);
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

        public void loadListBox(ListBox listBox, string querySentence, string valueField, string textField)
        {
            try
            {
                MySqlConnection connectionBd = connection.getConnection();

                MySqlCommand cmd;
                cmd = new MySqlCommand(querySentence, connectionBd);

                listBox.DataSource = cmd.ExecuteReader();
                listBox.DataTextField = textField;
                listBox.DataValueField = valueField;
                listBox.DataBind();
                connectionBd.Close();

                listBox.Items.Insert(0, new ListItem("Seleccionar", "Seleccionar"));
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
        }

        public void savePatient(PatientDTO patient)
        {
            try
            {
                MySqlConnection connectionBd = connection.getConnection();

                string query = "INSERT INTO hospital.pacientes (idpacientes, imagen, nombre, tipoid, cedula, sexo, telefono, tiposangre, email, idpaisnac, iddistrito, idcorregimiento, residencia, idtipovivienda, idhogar, sintomatico, viajepais, contactoriesgo, cantpersonas) VALUES (@idPatient, @image, @name, @documentType, @document, @sex, @telephone, @bloodType, @email, @country, @district, @township, @residence, @houseType, @houseNumber, @symptom, @travelCountry, @personContact, @personQuantity)";

                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                cmd.Parameters.AddWithValue("@idPatient", patient.id);
                cmd.Parameters.AddWithValue("@image", patient.image);
                cmd.Parameters.AddWithValue("@name", patient.name);
                cmd.Parameters.AddWithValue("@documentType", patient.documentType);
                cmd.Parameters.AddWithValue("@document", patient.document);
                cmd.Parameters.AddWithValue("@sex", patient.sex);
                cmd.Parameters.AddWithValue("@telephone", patient.telephone);
                cmd.Parameters.AddWithValue("@bloodType", patient.bloodType);
                cmd.Parameters.AddWithValue("@email", patient.email);
                cmd.Parameters.AddWithValue("@country", patient.country);
                cmd.Parameters.AddWithValue("@district", patient.district);
                cmd.Parameters.AddWithValue("@township", patient.township);
                cmd.Parameters.AddWithValue("@residence", patient.houseResidence);
                cmd.Parameters.AddWithValue("@houseType", patient.housingType);
                cmd.Parameters.AddWithValue("@houseNumber", patient.idHouse);
                cmd.Parameters.AddWithValue("@symptom", patient.symptomatic);
                cmd.Parameters.AddWithValue("@travelCountry", patient.travelCountry);
                cmd.Parameters.AddWithValue("@personContact", patient.personContact);
                cmd.Parameters.AddWithValue("@personQuantity", patient.personQuantity);

                cmd.ExecuteNonQuery();
                connectionBd.Close();
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
        }

        public void saveSymptoms(int idPatient, string idSymptom)
        {
            try
            {

                MySqlConnection connectionBd = connection.getConnection();

                string query = "INSERT INTO hospital.relacionpaciente (pacientes_idpacientes, sintomas_idsintomas) VALUES (@idPatient, @idSymptom)";

                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                cmd.Parameters.AddWithValue("@idPatient", idPatient);
                cmd.Parameters.AddWithValue("@idSymptom", idSymptom);
                cmd.ExecuteNonQuery();
                connectionBd.Close();
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
        }

        public void saveTravelCountries(int idPatient, string idCountry)
        {
            try
            {

                MySqlConnection connectionBd = connection.getConnection();

                string query = "INSERT INTO hospital.viajes (pacientes_idpacientes, paises_idpaises) VALUES (@idPatient, @idCountry)";

                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                cmd.Parameters.AddWithValue("@idPatient", idPatient);
                cmd.Parameters.AddWithValue("@idCountry", idCountry);
                cmd.ExecuteNonQuery();
                connectionBd.Close();
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