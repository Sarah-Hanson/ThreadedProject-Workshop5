using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
/*
 * Author Sarah
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects {
    public class Bookings {
        public int BookingId { get; set; }
        public DateTime BookingDate { get; set; }
        public string BookingNo { get; set; }
        public int TravelerCount { get; set; }
        public int CustomerId { get; set; }
        public string TripTypeId { get; set; }
        public int PackageId { get; set; }
    }
}