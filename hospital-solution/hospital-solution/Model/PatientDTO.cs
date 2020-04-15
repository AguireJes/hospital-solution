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
        public string documentType { get; set; }
        public string telephone { get; set; }
        public string bloodType { get; set; }
        public string email { get; set; }
        public char country { get; set; }
        public char district { get; set; }
        public char township { get; set; }
        public char slum { get; set; }
        public char housingType { get; set; }
        public string building { get; set; }
        public char symptomatic { get; set; }
        public List<char> travelCountry { get; set; }
        public char personContact { get; set; }
        public string personQuantity { get; set; }
        public string idHouse { get; set; }
    }
}