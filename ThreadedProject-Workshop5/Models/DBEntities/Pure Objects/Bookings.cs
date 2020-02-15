using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ThreadedProject_Workshop5.Models.DBEntities.Conglomerates;
/*
* Author Sarah
*/
namespace ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects {
    public class Bookings {
        public Bookings() {}
        //Converter Constructor
        public Bookings(TravelBooking b) {
            BookingID = b.BookingId;
            BookingID = b.BookingId;
            BookingDate = b.BookingDate;
            BookingNo = b.BookingNo;
            TravelerCount = b.TravelerCount;
            CustomerID = b.CustomerId;
            TripTypeID = b.TripTypeId;
            PackageID = b.PackageId;
    }
        //Conversion Constructor to allow TravelCustomer to be used as a regular Customers
        public static implicit operator Bookings(TravelBooking tb) {
            return new Bookings(tb);
        }
        public int BookingID { get; set; }
        public DateTime BookingDate { get; set; }
        public string BookingNo { get; set; }
        public int TravelerCount { get; set; }
        public int CustomerID { get; set; }
        public string TripTypeID { get; set; }
        public int PackageID { get; set; }
    }
}