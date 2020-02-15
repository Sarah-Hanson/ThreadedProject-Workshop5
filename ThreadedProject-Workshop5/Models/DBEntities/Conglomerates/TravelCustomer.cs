using System.Collections.Generic;
using ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects;
/*
 * Author: Sarah
 * Conglomerate object of a customer from the database with a list of all of that customers's creditcards,
 * rewards programs and bookigns. Created by passing the constructor a customer and it will run the nescessary
 * db operations to get its own agents.
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Conglomerates {
    public class TravelCustomer {
        public int CustomerID { get; set; }
        public string CustFirstName { get; set; }
        public string CustLastName { get; set; }
        public string CustAddress { get; set; }
        public string CustCity { get; set; }
        public string CustProv { get; set; }
        public string CustPostal { get; set; }
        public string CustCountry { get; set; }
        public string CustHomePhone { get; set; }
        public string CustBusPhone { get; set; }
        public string CustEmail { get; set; }
        public int AgentId { get; set; }
        public string CustUserName { get; set; }
        public string CustPassword { get; set; }

        public List<TravelReward> CustRewards { get; set; }
        public List<CreditCards> CustCC { get; set; }
        public List<Bookings> CustBookings { get; set; }

        public TravelCustomer(Customers c) {
            CustomerID = c.CustomerID;
            CustFirstName = c.CustFirstName;
            CustLastName = c.CustLastName;
            CustAddress = c.CustAddress;
            CustCity = c.CustCity;
            CustProv = c.CustProv;
            CustPostal = c.CustPostal;
            CustCountry = c.CustCountry;
            CustHomePhone = c.CustHomePhone;
            CustBusPhone = c.CustBusPhone;
            CustEmail = c.CustEmail;
            AgentId = c.AgentId;
            CustUserName = c.CustUserName;
            CustPassword = c.CustPassword;

            TravelExpertsDB db = new TravelExpertsDB();
            // Getting customer's credit cards
            {
                string query = "select * from CreditCards " +
                               "where CustomerID = " + this.CustomerID;
                SQLAdapter.SQLAdapter.GetFromDB<CreditCards>(out List<CreditCards> o, db, query);
                CustCC = o;
            }
            // Getting customer's Rewards plans
            {
                string query = "select * from Customer_Rewards " +
                               "where CustomerID = " + this.CustomerID;
                SQLAdapter.SQLAdapter.GetFromDB<Customers_Rewards>(out List<Customers_Rewards> o, db, query);
                foreach (Customers_Rewards cr in o) {
                    TravelReward reward = new TravelReward(cr);
                    CustRewards.Add(reward);
                }
            }
            // Getting Customer's Bookings
            {
                string query = "select * from Bookings " +
                   "where CustomerID = " + this.CustomerID;
                SQLAdapter.SQLAdapter.GetFromDB<Bookings>(out List<Bookings> o, db, query);
                CustBookings = o;
            }
        }
    }
}