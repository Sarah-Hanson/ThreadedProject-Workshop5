
using System;
using System.Collections.Generic;
using System.Web.Mvc;
using ThreadedProject_Workshop5.Models;
using ThreadedProject_Workshop5.Models.DBEntities;
using ThreadedProject_Workshop5.Models.DBEntities.Conglomerates;
using ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects;

/*
* Framework:Sarah
*/
namespace ThreadedProject_Workshop5.Controllers {

    public class HomeController : Controller {
        readonly DBO dbo = DBO.Instance;
        const bool debug = false;
        /*
         *  Brandon
         */
        public ActionResult Index() {
            ViewBag.Loggin = IsLoggedIn();
            return View();

        }

        public ActionResult Contact() { //by Brando, additions by Sarah
            ViewBag.Loggin = IsLoggedIn();
            SQLAdapter.SQLAdapter.GetFromDB<Agents>(out List<Agents> agents, new TravelExpertsDB());
            return View(agents);
        }
        /*
         * Neel
         */
        public ActionResult Packages() {
            ViewBag.Loggin = IsLoggedIn();
            dbo.GetConglomerate(out List<TravelPackage> packages);
            return View(packages);
        }
        /* Fixed Up by Sarah */
        public ActionResult Booking(int id) {
            ViewBag.Loggin = IsLoggedIn();
            TravelBooking b = new TravelBooking();
            b.BookingDate = DateTime.Today;
            b.PackageId = id;

            return View(b);
        }
        public ActionResult Book(TravelBooking model) {
            if (IsLoggedIn()) {
                ViewBag.Loggin = IsLoggedIn();
                model.CustomerId = (int)Session["UserID"];
                dbo.AddtoDB(model);
            }
            return View("index", null);
        }
        public ActionResult Register() {
            //By Brandon 
            ViewBag.Loggin = IsLoggedIn();
            return View();
        }
        public ActionResult MakeRegister(TravelCustomer model) {//By Brandon with significant help from Sarah
            SQLAdapter.SQLAdapter.InsertToDB<Customers>(model, new TravelExpertsDB());

            dbo.GetConglomerate(out TravelCustomer cust, model.CustUserName);
            LogUserIn(model.CustUserName, model.CustomerID);
            ViewBag.Loggin = IsLoggedIn();
            return View("Index", null);
        }
        /*
         * Sarah
         */
        public ActionResult UserProfile() {
            ViewBag.Loggin = IsLoggedIn();
            if (debug) { LogUserIn("user1", 104); }

            dbo.GetConglomerate(out TravelCustomer travelCust, Session["UserLogin"].ToString());
            travelCust.CustPassword = SimpleSecurity.Decrypt(travelCust.CustPassword);
            return View(travelCust);
        }
        [HttpPost]
        public ActionResult UpdateUser(TravelCustomer model) {
            ViewBag.Loggin = IsLoggedIn();
            model.CustomerID = (int)Session["UserID"];
            model.CustPassword = SimpleSecurity.Encrypt(model.CustPassword);
            dbo.UpdateConglomerate(model);
            dbo.GetConglomerate(out TravelCustomer travelCust, Session["UserLogin"].ToString()); //get it again since the model passback is borken for the non-pure object bits
            return View("UserProfile", travelCust);
        }
        [HttpPost]
        public ActionResult Login(string UserName, string Password) {
            Password = SimpleSecurity.Encrypt(Password);
            SQLAdapter.SQLAdapter.GetFromDB<Customers>(out List<Customers> custs, new TravelExpertsDB());
            foreach (Customers tc in custs) {
                if ((tc.CustUserName.Equals(UserName)) &&
                    tc.CustPassword.Equals(Password)) {
                    LogUserIn(UserName, tc.CustomerID); // Its a match!
                    break;
                }
            }
            ViewBag.Loggin = IsLoggedIn();
            return View("index", null);
        }
        public ActionResult Logout(string UserName, string Password) {
            LogUserOut();
            ViewBag.Loggin = IsLoggedIn();
            return View("index", null);
        }
        /*
         * Author: Sarah
         * These guys are pretty self-documenting
         */
        public bool IsLoggedIn() {
            return (Session["UserLogin"] != null);
        }
        public void LogUserIn(string userName, int userID) {
            Session.Add("UserLogin", userName);
            Session.Add("UserID", userID);
        }
        public void LogUserOut() {
            if (IsLoggedIn()) {
                Session.Clear();
            }
        }
    }
}