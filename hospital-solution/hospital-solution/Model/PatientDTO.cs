using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hospital_solution.Model
{
    public class PatientDTO
    {
        public string name { get; set; }
        public string image { get; set; }
        public string sex { get; set; }
        public string documentType { get; set; }
        public string document { get; set; }
        public string telephone { get; set; }
        public string bloodType { get; set; }
        public string email { get; set; }
        public string country { get; set; }
        public string district { get; set; }
        public string township { get; set; }
        public string housingType { get; set; }
        public string houseResidence { get; set; }
        public string symptomatic { get; set; }
        public string travelCountry { get; set; }
        public List<string> countryTraveled { get; set; }
        public string personContact { get; set; }
        public int personQuantity { get; set; }
        public string idHouse { get; set; }
        public int id { get; set; }
    }
}