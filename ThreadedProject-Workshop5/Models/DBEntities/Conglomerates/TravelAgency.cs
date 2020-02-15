using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
 * Author: Sarah
 * Conglomerate object of a agency from the database with a list of all of that agency's agents.
 * Created by passing the constructor an agency and it will run the nescessary db operations to 
 * get its own agents.
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Conglomerates {
    public class TravelAgency {
        public string AgencyId { get; set; }
        public string AgncyAddress { get; set; }
        public string AgncyCity { get; set; }
        public string AgncyProv { get; set; }
        public string AgncyPostal { get; set; }
        public string AgncyCountry { get; set; }
        public string AgncyPhone { get; set; }
        public List<Agents> agents { get; set; }

        public TravelAgency(Agencies a) {
            this.AgencyId = a.AgencyId;
            this.AgncyAddress = a.AgncyAddress;
            this.AgncyCity = a.AgncyCity;
            this.AgncyProv = a.AgncyProv;
            this.AgncyPostal = a.AgncyPostal;
            this.AgncyCountry = a.AgncyCountry;
            this.AgncyPhone = a.AgncyPhone;

            TravelExpertsDB db = new TravelExpertsDB();

            string query = "select * from Agents " +
                           "where Agencies.AgencyID = " + this.AgencyId;
            SQLAdapter.SQLAdapter.GetFromDB<Agents>(out List<Agents> o, db, query);
            agents = o;
        }
    }
}