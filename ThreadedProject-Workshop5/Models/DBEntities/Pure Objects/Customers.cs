using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ThreadedProject_Workshop5.Models.DBEntities.Conglomerates;

/*
 * Author: Sarah
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects {
    public class Customers {
        public Customers() { }
        //Converter Constructor in case implicit conversion is unwanted
        public Customers(TravelCustomer c) {
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
        }
        //Conversion Constructor to allow TravelCustomer to be used as a regular Customers
        public static implicit operator Customers(TravelCustomer tc) {
            Customers c = new Customers();
            c.CustomerID = tc.CustomerID;
            c.CustFirstName = tc.CustFirstName;
            c.CustLastName = tc.CustLastName;
            c.CustAddress = tc.CustAddress;
            c.CustCity = tc.CustCity;
            c.CustProv = tc.CustProv;
            c.CustPostal = tc.CustPostal;
            c.CustCountry = tc.CustCountry;
            c.CustHomePhone = tc.CustHomePhone;
            c.CustBusPhone = tc.CustBusPhone;
            c.CustEmail = tc.CustEmail;
            c.AgentId = tc.AgentId;
            c.CustUserName = tc.CustUserName;
            c.CustPassword = tc.CustPassword;
            return c;
        }

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

   
    }
}