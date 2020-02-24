using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects;
/*
 * Author: Sarah
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Conglomerates {
    public class TravelBooking {
        [Required(ErrorMessage = "Required")]
        public int BookingId { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd MMM yyyy}")]
        [DataType(DataType.Date)]
        public DateTime BookingDate { get; set; }
        [Required(ErrorMessage = "Required")]
        [Range(1, 100)]
        public string BookingNo { get; set; }
        [Required(ErrorMessage = "Required")]
        public int TravelerCount { get; set; }
        [Required(ErrorMessage = "Required")]
        public int CustomerId { get; set; }
        [Required(ErrorMessage = "Required")]
        public string TripTypeId { get; set; }
        [Required(ErrorMessage = "Required")]
       
        public int PackageId { get; set; }

        public TripTypes TripType { get; set; }
        public TravelPackage BookPackage { get; set; }

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
                TripType = trip[0];
            if (DBO.Instance.GetConglomerate(out List<TravelPackage> pack))
                BookPackage = pack[0];
        }
    }
}