using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SQLAdapter;

/*
 * Author: Sarah
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

        public TravelPackage() { }
        public TravelPackage(Packages p) {
            this.PkgName = p.PkgName;
            this.PkgStartDate = p.PkgStartDate;
            this.PkgEndDate = p.PkgEndDate;
            this.PkgDesc = p.PkgDesc;
            this.PkgBasePrice = p.PkgBasePrice;
            this.PkgAgencyCommission = p.PkgAgencyCommission;
        }
        /*
         * Gets all products that are part of the package
         */
        public void getProducts() {
            List<Products> p;
            TravelExpertsDB db = new TravelExpertsDB();

            string query = "select * from Packages, Packages_Products_Suppliers, Products_Suppliers, Products " +
                           "where Packages.PackageId = " + this.PackageID + " " +
                           "and Packages.PackageId = Packages_Products_Suppliers.PackageId " +
                           "and Packages_Products_Suppliers.ProductSupplierId = Products_Suppliers.ProductSupplierId " +
                           "and Products_Suppliers.ProductId = Products.ProductId";

            SQLAdapter.SQLAdapter.GetFromDB<Products>(out p, db, query);
        }
    }
}