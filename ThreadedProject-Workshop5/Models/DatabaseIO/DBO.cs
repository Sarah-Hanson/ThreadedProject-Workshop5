using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ThreadedProject_Workshop5.Models.DBEntities;
using ThreadedProject_Workshop5.Models.DBEntities.Conglomerates;
using ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects;
/*
* Author: Sarah
* Handles composite database interactions by combining different sqlqueries with the SQLAdapter to create meaningful
* composite objects out of the base DBtable objects.
*/
namespace ThreadedProject_Workshop5.Models {
    public class DBO {
        /*
         * Gets all packages/products and puts them in TravelPackage objects
         */
        public bool GetConglomerate(out List<TravelPackage> outlist) {
            List<Packages> packages;
            TravelExpertsDB db = new TravelExpertsDB();
            outlist = new List<TravelPackage>();
            bool success = SQLAdapter.SQLAdapter.GetFromDB<Packages>(out packages, db);

            foreach (Packages p in packages) {
                TravelPackage tp = new TravelPackage(p);
                outlist.Add(tp);
            }
            return success;
        }
        /*
         * Gets all agents/agencies and puts them in TravelPackage objects
         */
        public bool GetConglomerate(out List<TravelAgency> outlist) {
            List<Agencies> agencies;
            TravelExpertsDB db = new TravelExpertsDB();
            outlist = new List<TravelAgency>();
            bool success = true;

            SQLAdapter.SQLAdapter.GetFromDB<Agencies>(out agencies, db);
            foreach (Agencies a in agencies) {
                TravelAgency ta = new TravelAgency(a);
                outlist.Add(ta);
            }
            return success;
        }
        /*
         * Gets all customers/bookings/creditcards/rewardsPrograms and puts them in 
         * TravelPackage objects
         */
        public bool GetConglomerate(out List<TravelCustomer> outlist) {
            List<Customers> customers;
            TravelExpertsDB db = new TravelExpertsDB();
            outlist = new List<TravelCustomer>();
            bool success = true;

            SQLAdapter.SQLAdapter.GetFromDB<Customers>(out customers, db);
            foreach (Customers c in customers) {
                TravelCustomer tc = new TravelCustomer(c);
                outlist.Add(tc);
            }
            return success;
        }
    }
}