﻿using System;
using System.Collections.Generic;
using ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects;
/*
 * Author: Sarah
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Conglomerates {
    public class TravelBooking {
        public int BookingId { get; set; }
        public DateTime BookingDate { get; set; }
        public string BookingNo { get; set; }
        public int TravelerCount { get; set; }
        public int CustomerId { get; set; }
        public string TripTypeId { get; set; }
        public int PackageId { get; set; }

        public TripTypes tripType { get; set; }

        public TravelBooking() { }
        public TravelBooking(Bookings b) {
            BookingId = b.BookingID;
            BookingDate = b.BookingDate;
            BookingNo = b.BookingNo;
            TravelerCount = b.TravelerCount;
            CustomerId = b.CustomerID;
            TripTypeId = b.TripTypeID;
            PackageId = b.PackageID;
            List<TripTypes> trip = new List<TripTypes>();
            TravelExpertsDB db = new TravelExpertsDB();
            if (SQLAdapter.SQLAdapter.GetFromDB<TripTypes>(out trip, db))
                tripType = trip[0];
        }
    }
}