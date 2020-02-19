
using System;
using System.Collections.Generic;
using System.Web.Mvc;
using ThreadedProject_Workshop5.Models;
using ThreadedProject_Workshop5.Models.DBEntities;
using ThreadedProject_Workshop5.Models.DBEntities.Conglomerates;

/*
* Framework:Sarah
*/
namespace ThreadedProject_Workshop5.Controllers {

    public class HomeController : Controller {
        List<Agents> agents;
        readonly DBO dbo = DBO.Instance;
        const bool debug = true;
        /*
         *  Brandon
         */
        public ActionResult Index() {
            ViewBag.Loggin = IsLoggedIn();
            return View();

        }
        public ActionResult Contact() {
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
        public ActionResult Booking(TravelBooking book) {
            ViewBag.Loggin = IsLoggedIn();
            dbo.AddtoDB(book);
            return View(book);
        }
        public ActionResult book(TravelBooking model) {
            ViewBag.Loggin = IsLoggedIn();
            return View(model);
        }
        public ActionResult Register() {
            ViewBag.Loggin = IsLoggedIn();
            return View();
        }
        /*
         * Sarah
         */
        public ActionResult UserProfile() {
            ViewBag.Loggin = IsLoggedIn();
            if (debug) { LogUserIn("user1",104); }

            dbo.GetConglomerate(out TravelCustomer travelCust, Session["UserLogin"].ToString());
            travelCust.CustPassword = SimpleSecurity.Decrypt(travelCust.CustPassword);
            return View(travelCust);
        }
        [HttpPost]
        public ActionResult UpdateUser(TravelCustomer model) {
            ViewBag.Loggin = IsLoggedIn();

            dbo.UpdateConglomerate(model);
            model.CustPassword = SimpleSecurity.Encrypt(model.CustPassword);
            model.CustomerID = (int)Session["UserID"];
            dbo.GetConglomerate(out TravelCustomer travelCust, Session["UserLogin"].ToString()); //get it again since the model passback is borken for the non-pure object bits
            return View("UserProfile", travelCust);
        }
        [HttpPost]
        public ActionResult Login(string UserName, string Password) {
            Password = SimpleSecurity.Encrypt(Password);
            dbo.GetConglomerate(out List<TravelCustomer> custs);
            foreach(TravelCustomer tc in custs) {
                if((tc.CustUserName.Equals(UserName)) &&
                    tc.CustPassword.Equals(Password)) {
                    LogUserIn(UserName, tc.CustomerID); // Its a match!
                    break;
                }
            }
            ViewBag.Loggin = IsLoggedIn();
            return View("index",null);
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