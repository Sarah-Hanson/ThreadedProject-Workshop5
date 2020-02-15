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
* composite objects out of the base DBtable objects. Set up with singleton scheme to save on multiple instantiations
*/
namespace ThreadedProject_Workshop5.Models {
    public class DBO {
        // Singleton handler and constructor
        private DBO() {
            db = new TravelExpertsDB();
        }
        public static DBO Instance {
            get {
                if (instance == null) {
                    instance = new DBO();
                }
                return instance;
            }
        }

        private static DBO instance = null;
        private TravelExpertsDB db;
        /*
         * Gets all packages/products and puts them in TravelPackage objects
         */
        public bool GetConglomerate(out List<TravelPackage> outlist) {
            List<Packages> packages;
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
            outlist = new List<TravelAgency>();
            bool success = true;

            success = SQLAdapter.SQLAdapter.GetFromDB<Agencies>(out agencies, db);
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
            outlist = new List<TravelCustomer>();

            bool success = SQLAdapter.SQLAdapter.GetFromDB<Customers>(out customers, db);
            foreach (Customers c in customers) {
                TravelCustomer tc = new TravelCustomer(c);
                outlist.Add(tc);
            }
            return success;
        }
        /*
         * Updates the given customer's details,credit cards, bookings and rewardss based on the info
         * in the given object. The object should be a complete object as blank fields will be updated
         * to empty entries
         */
        public bool UpdateConglomerate(TravelCustomer c) {
            bool success = SQLAdapter.SQLAdapter.UpdateInDB<Customers>(c, db);
            foreach (CreditCards cc in c.CustCC) {
                if (!SQLAdapter.SQLAdapter.UpdateInDB<CreditCards>(cc,db))
                    success = false;
            }
            foreach(TravelReward tr in c.CustRewards) {
                if (!SQLAdapter.SQLAdapter.UpdateInDB<Customers_Rewards>(tr, db))
                    success = false;
            }
            foreach(Bookings b in c.CustBookings) {
                if (!SQLAdapter.SQLAdapter.UpdateInDB<Bookings>(b, db)) ;
            }
              
            return success;
        }
        /*
         * Adds a new customer to the database, handling everything but bookings, since those
         * would be assumed to be empty at the time a new customer is registering, such functionality
         * will reside in another method.
         */
         public bool AddConglomerate(TravelCustomer c) {
            //Add Customer
            bool success = SQLAdapter.SQLAdapter.InsertToDB<Customers>(c, db);
            //Add their creditcards
            foreach (TravelReward t in c.CustRewards) {
                if(!SQLAdapter.SQLAdapter.InsertToDB<CreditCards>(c.CustCC, db))
                    success = false;
            }
            //Add their rewards cards
            foreach (TravelReward t in c.CustRewards)
                if (!SQLAdapter.SQLAdapter.InsertToDB<Customers_Rewards>(t, db))
                    success = false;
            
            return success;
        }
        /*
         *  Adds a booking to the database
         */
        public bool AddtoDB(TravelBooking b) {
            return SQLAdapter.SQLAdapter.InsertToDB<Bookings>(b,db);
        }
    }
}