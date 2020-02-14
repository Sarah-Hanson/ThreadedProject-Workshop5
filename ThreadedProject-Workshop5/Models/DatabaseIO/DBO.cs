using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
/*
 * Author: Sarah
 */
namespace ThreadedProject_Workshop5.Models {
    public class DBO {
        /*
         * Gets all packages and puts them in TravelPackage objects, which have
         * a combination of the package and the products that belong to that package
         */
        public List<TravelPackage> getpackages() {
            List<Packages> packages;
            TravelExpertsDB db = new TravelExpertsDB();
            List<TravelPackage> returnList = new List<TravelPackage>();

            SQLAdapter.SQLAdapter.GetFromDB<Packages>(out packages, db);
            foreach (Packages p in packages) {
                TravelPackage tp = new TravelPackage(p);
                tp.getProducts();
                returnList.Add(tp);
            }

            return returnList;
        }
        public List<>
    }
}