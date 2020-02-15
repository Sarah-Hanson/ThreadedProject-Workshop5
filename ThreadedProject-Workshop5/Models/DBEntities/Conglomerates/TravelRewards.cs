using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects;
/*
 * Author: Sarah
 * Conglomerate object of a customer_reward from the database and that custoemr_reward's reward type
 * Created by passing the constructor a customer and it will run the nescessary
 * db operations to get its own reward type.
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Conglomerates {
    public class TravelRewards {
        public int CustomerID { get; set; }
        public int RewardID { get; set; }
        public string RwdNumber { get; set; }

        public Rewards Reward { get; set; }

        public TravelRewards(Customers_Rewards cr) {
            CustomerID = cr.CustomerID;
            RewardID = cr.RewardID;
            RwdNumber = cr.RwdNumber;

            TravelExpertsDB db = new TravelExpertsDB();

            string query = "select * from Rewards " +
                           "where RewardID = " + this.RewardID;

            SQLAdapter.SQLAdapter.GetFromDB<Rewards>(out List<Rewards> o, db, query);
            if(o.Count >0)Reward = o[0];
        }
    }
}