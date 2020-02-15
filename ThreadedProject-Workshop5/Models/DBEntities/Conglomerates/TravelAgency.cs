using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThreadedProject_Workshop5.Models.DBEntities.Conglomerates {
    public class TravelAgency {
        public string AgencyId { get; set; }
        public string AgncyAddress { get; set; }
        public string AgncyCity { get; set; }
        public string AgncyProv { get; set; }
        public string AgncyPostal { get; set; }
        public string AgncyCountry { get; set; }
        public string AgncyPhone { get; set; }
        public List<Agency> agents { get; set; }

        public TravelAgency(Agencies a) {
            this.AgencyId = a.AgencyId;
            this.AgncyAddress = a.AgncyAddress;
            this.AgncyCity = a.AgncyCity;
            this.AgncyProv = a.AgncyProv;
            this.AgncyPostal = a.AgncyPostal;
            this.AgncyCountry = a.AgncyCountry;
            this.AgncyPhone = a.AgncyPhone;

            TravelExpertsDB db = new TravelExpertsDB();

            string query = "select * from Agencies,Agents " +
                           "where Agencies.AgencyID = " + this.AgencyId + " " +
                           "and Agencies.AgencyId = Agent.AgencyId ";

            SQLAdapter.SQLAdapter.GetFromDB<Agency>(out List<Agency> o, db, query);
            agents = o;
        }
    }
}