using ThreadedProject_Workshop5.Models.DBEntities.Conglomerates;

/*
 * Sarah
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects {
    public class Customers_Rewards {
        public Customers_Rewards() { }
        //Converter Constructor
        public Customers_Rewards(TravelReward r) {
            CustomerID = r.CustomerID;
            RewardID = r.RewardID;
            RwdNumber = r.RwdNumber;
        }
        //Conversion Constructor to allow TravelRewards to be used as a regular rewards
        public static implicit operator Customers_Rewards(TravelReward r) {
            return new Customers_Rewards(r);
        }
        public int CustomerID { get; set; }
        public int RewardID { get; set; }
        public string RwdNumber { get; set; }
    }
}