using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
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
        [Required(ErrorMessage = "Please Insert Your First Name")]
        public string CustFirstName { get; set; }
        [Required(ErrorMessage = "Please Insert Your Last Name")]
        public string CustLastName { get; set; }
        [Required(ErrorMessage = "Please Insert Your Address")]
        public string CustAddress { get; set; }
        [Required(ErrorMessage = "Please Insert Your City")]
        public string CustCity { get; set; }
        [Required(ErrorMessage = "Please Insert Your Two Letter Province/State")]
        [MaxLength(2)]
        public string CustProv { get; set; }
        [Required(ErrorMessage = "Please Insert Your Postal Code")]
        
        [RegularExpression(@"(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstv‌​xy]{1} *\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvxy]{1}\d{1}$)", ErrorMessage = "That postal code is not a valid US or Canadian postal code.")]
        public string CustPostal { get; set; }
        [Required(ErrorMessage = "Please Insert Your Country")]
        public string CustCountry { get; set; }
        [Required(ErrorMessage = "Please Insert Your Home Phone")]
        [Phone]
        public string CustHomePhone { get; set; }
        [Phone]
        public string CustBusPhone { get; set; }
        [EmailAddress]
        public string CustEmail { get; set; }
        public int AgentId { get; set; }
        [Required(ErrorMessage = "Please Insert Your UserName")]
        public string CustUserName { get; set; }

        [Required(ErrorMessage = "Please Insert Your Password")]
        [DataType(DataType.Password)]
        public string CustPassword { get; set; }

        [NotMapped]
        [Required(ErrorMessage = "Please Confirm Your Password")]
        [Compare("CustPassword")]
        [DisplayName("Confirm Password")]
        [DataType(DataType.Password)]
        public string CustConfPassword { get; set; }

        public List<TravelReward> CustRewards { get; set; }
        public List<CreditCards> CustCC { get; set; }
        public List<TravelBooking> CustBookings { get; set; }

        public TravelCustomer() {
        }
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
                string query = "select * from Customers_Rewards " +
                               "where CustomerID = " + this.CustomerID;
                SQLAdapter.SQLAdapter.GetFromDB<Customers_Rewards>(out List<Customers_Rewards> o, db, query);
                CustRewards = new List<TravelReward>();
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
                CustBookings = new List<TravelBooking>();
                foreach (Bookings book in o) {
                    TravelBooking b = new TravelBooking(book);
                    CustBookings.Add(b);
                }
            }
        }
    }
}