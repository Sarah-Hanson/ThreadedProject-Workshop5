using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
 * Sarah
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects {
    public class CreditCards {
        public int CreditCardID { get; set; }
        public string CCName { get; set; }
        public string CCNumber { get; set; }
        public DateTime CCExpiry { get; set; }
        public int CustomerID { get; set; }
    }
}