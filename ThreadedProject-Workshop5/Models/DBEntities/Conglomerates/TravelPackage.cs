using System;
using System.Collections.Generic;

/*
 * Author: Sarah
 * Conglomerate object of a package from the database with a list of all of that package's products.
 * Created by passing the constructor a package and it will run the nescessary db operations to 
 * get its own packages.
 */
namespace ThreadedProject_Workshop5.Models {
    public class TravelPackage {
        public int PackageID { get; set; }
        public string PkgName { get; set; }
        public DateTime PkgStartDate { get; set; }
        public DateTime PkgEndDate { get; set; }
        public string PkgDesc { get; set; }
        public decimal PkgBasePrice { get; set; }
        public decimal PkgAgencyCommission { get; set; }
        public List<Products> products { get; set; }

        public TravelPackage(Packages p) {
            this.PackageID = p.PackageID;
            this.PkgName = p.PkgName;
            this.PkgStartDate = p.PkgStartDate;
            this.PkgEndDate = p.PkgEndDate;
            this.PkgDesc = p.PkgDesc;
            this.PkgBasePrice = p.PkgBasePrice;
            this.PkgAgencyCommission = p.PkgAgencyCommission;
            TravelExpertsDB db = new TravelExpertsDB();

            string query = "select * from Packages, Packages_Products_Suppliers, Products_Suppliers, Products " +
                           "where Packages.PackageId = " + this.PackageID + " " +
                           "and Packages.PackageId = Packages_Products_Suppliers.PackageId " +
                           "and Packages_Products_Suppliers.ProductSupplierId = Products_Suppliers.ProductSupplierId " +
                           "and Products_Suppliers.ProductId = Products.ProductId";

            SQLAdapter.SQLAdapter.GetFromDB<Products>(out List<Products> o, db, query);
            products = o;
        }
    }
}