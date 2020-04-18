using hospital_solution.Class.Connection.Service;
using hospital_solution.Interfaces.Command.Api;
using hospital_solution.Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Web.UI.WebControls;

namespace hospital_solution.Interfaces.Command.Service
{
    public class WsclientImpl : Wsclient
    {
        ConnectionImpl connection = new ConnectionImpl();

        public bool SignIn(string user, string pass)
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

        public void LoadDropDownList(DropDownList dropDownList, string querySentence, string valueField, string textField)
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

        public void LoadDropDownList(DropDownList dropDownList, string querySentence, string valueField, string textField, string district)
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

        public void LoadListBox(ListBox listBox, string querySentence, string valueField, string textField)
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

        public void SavePatient(PatientDTO patient)
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

        public void SaveSymptoms(int idPatient, string idSymptom)
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

        public void SaveTravelCountries(int idPatient, string idCountry)
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

        public void SaveContacts(ContactDTO contact, string idHouse)
        {
            try
            {

                MySqlConnection connectionBd = connection.getConnection();

                string query = "INSERT INTO hospital.contactos(nombre,idpaisnac,tiposangre,sexo,telefono,email,contact_idhogar) VALUES (@name,@country,@bloodType,@sex,@telephone,@email,@idHouse)";

                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                cmd.Parameters.AddWithValue("@name", contact.name);
                cmd.Parameters.AddWithValue("@country", contact.country);
                cmd.Parameters.AddWithValue("@bloodType", contact.bloodType);
                cmd.Parameters.AddWithValue("@sex", contact.sex);
                cmd.Parameters.AddWithValue("@telephone", contact.telephone);
                cmd.Parameters.AddWithValue("@email", contact.email);
                cmd.Parameters.AddWithValue("@idHouse", idHouse);
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

        public void LoadTownshipChart(Literal chartResponse)
        {
            try
            {
                MySqlConnection connectionBd = connection.getConnection();
                DataTable tb = new DataTable();
                string query = "select cor.descripcion,count(idpacientes) from hospital.pacientes as pac, hospital.corregimiento as cor where pac.idcorregimiento = cor.idcorregimiento group by cor.descripcion";

                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                MySqlDataReader dr = cmd.ExecuteReader();
                tb.Load(dr, LoadOption.OverwriteChanges);
                connectionBd.Close();

                if (tb != null)
                {
                    String chart = "";
                    string fillColor = "'rgba(14,72,100,1)'";
                    string backgroundColor = "'rgba(255,99,132,0.2)'";
                    string borderColor = "'rgba(255,99,132,1)'";
                    string borderWidth = "'2'";
                    string hoverBackgroundColor = "'rgba(255,99,132,0.4)'";
                    string hoverBorderColor = "'rgba(255,99,132,1)'";

                    chart = "<canvas id=\"line-chart\" width=\"100%\" height=\"40\"></canvas>";
                    chart += "<script>";
                    chart += "new Chart(document.getElementById(\"line-chart\"), { type: 'bar', data: {labels: [";

                    for (int i = 0; i < tb.Rows.Count; i++)
                    {
                        chart += "'"+tb.Rows[i]["descripcion"].ToString()+"',";
                    }
                    chart = chart.Substring(0, chart.Length - 1);

                    chart += "] ,datasets: [{ label:";
                    chart += "'Cantidad de pacientes'" + ",";
                    chart += "data:[";

                    string value = "";
                    for (int i = 0; i < tb.Rows.Count; i++)
                    {
                        value += tb.Rows[i]["count(idpacientes)"].ToString() + ",";
                        chart += value;
                        value = String.Empty;
                    }
                    chart = chart.Substring(0, chart.Length - 1);

                    chart += "], fillColor: "+ fillColor+ ", backgroundColor: "+backgroundColor+", borderColor: "+borderColor+", borderWidth: "+borderWidth+", hoverBackgroundColor: "+hoverBackgroundColor+", hoverBorderColor: "+hoverBorderColor+" }]}, options: { title: { display: true, text: 'Cantidad de pacientes por corregimientos'}, scales:{yAxes:[{stacked:true}]}}";
                    chart += "});";
                    chart += "</script>";
                    chartResponse.Text = chart;
                }
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
        }

        public void LoadSexChart(Literal chartResponse)
        {
            try
            {
                MySqlConnection connectionBd = connection.getConnection();
                DataTable tb = new DataTable();
                string query = "select  sex.descripcion,count(idpacientes) from hospital.pacientes as pac, hospital.sexo as sex where pac.sexo = sex.valor group by sex.descripcion";

                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                MySqlDataReader dr = cmd.ExecuteReader();
                tb.Load(dr, LoadOption.OverwriteChanges);
                connectionBd.Close();

                if (tb != null)
                {
                    String chart = "";
                    string fillColor = "'rgba(14,72,100,1)'";
                    string backgroundColor = "'rgba(255,99,132,0.2)'";
                    string borderColor = "'rgba(255,99,132,1)'";
                    string borderWidth = "'2'";
                    string hoverBackgroundColor = "'rgba(255,99,132,0.4)'";
                    string hoverBorderColor = "'rgba(255,99,132,1)'";

                    chart = "<canvas id=\"chart-sex\" width=\"100%\" height=\"40\"></canvas>";
                    chart += "<script>";
                    chart += "new Chart(document.getElementById(\"chart-sex\"), { type: 'bar', data: {labels: [";

                    for (int i = 0; i < tb.Rows.Count; i++)
                    {
                        chart += "'" + tb.Rows[i]["descripcion"].ToString() + "',";
                    }
                    chart = chart.Substring(0, chart.Length - 1);

                    chart += "] ,datasets: [{ label:";
                    chart += "'Cantidad de pacientes'" + ",";
                    chart += "data:[";

                    string value = "";
                    for (int i = 0; i < tb.Rows.Count; i++)
                    {
                        value += tb.Rows[i]["count(idpacientes)"].ToString() + ",";
                        chart += value;
                        value = String.Empty;
                    }
                    chart = chart.Substring(0, chart.Length - 1);

                    chart += "], fillColor: " + fillColor + ", backgroundColor: " + backgroundColor + ", borderColor: " + borderColor + ", borderWidth: " + borderWidth + ", hoverBackgroundColor: " + hoverBackgroundColor + ", hoverBorderColor: " + hoverBorderColor + " }]}, options: { title: { display: true, text: 'Cantidad de pacientes por sexo'}, scales:{yAxes:[{stacked:true}]}}";
                    chart += "});";
                    chart += "</script>";
                    chartResponse.Text = chart;
                }
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
        }

    }
}