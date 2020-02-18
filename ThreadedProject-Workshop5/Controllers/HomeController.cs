
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
         *  This page just needs to look pretty and navigate to other pages
         */
        public ActionResult Index() {
            return View();

        }
        /*
         *  Brandon
         *  Functionality, Use list of agencie with agents to show the contact info for 
         *  all the agents (preferably with a separate section for each agency)
         */
        public ActionResult Contact() {
            List<Agents> agents;
            SQLAdapter.SQLAdapter.GetFromDB<Agents>(out agents, new TravelExpertsDB());
            return View(agents);
        }
        /*
         * Neel
         * Display all packages, allow selecting a package to book, or redirecting to 
         * registration if not logged in
         */
        public ActionResult Packages() {
            ViewBag.Message = "Your package page.";
            List<TravelPackage> packages;
            dbo.GetConglomerate(out packages);

            return View(packages);
        }
        /*
         * Neel
         * Allows a logged in customer to book a vacation
         */
        public ActionResult Booking(TravelBooking book)
        {
            dbo.AddtoDB(book);
            return View(book);
        }
        public ActionResult book(TravelBooking model)
        {
            return View(model);
        }
        public ActionResult Register() {
            ViewBag.Message = "Your Register Page";

                return View();
        }
        public ActionResult UserProfile() {
            if (debug) { LogUserIn("user1"); }

            dbo.GetConglomerate(out TravelCustomer travelCust, Session["UserLogin"].ToString());
            travelCust.CustPassword = SimpleSecurity.Decrypt(travelCust.CustPassword);
            return View(travelCust);
        }
        [HttpPost]
        public ActionResult UpdateUser(TravelCustomer model) {

            dbo.UpdateConglomerate(model);
            model.CustPassword = SimpleSecurity.Encrypt(model.CustPassword);
            dbo.GetConglomerate(out TravelCustomer travelCust, Session["UserLogin"].ToString());
            return View("UserProfile",travelCust);
        }

        /*
         * Author: Sarah
         * These guys are pretty self-documenting
         */
        public bool IsLoggedIn() {
            return (Session["UserLogin"] != null);
        }
        public void LogUserIn(string userName) {
            Session.Add("UserLogin", userName);
        }
        public void LogUserOut() {
            if (!IsLoggedIn()) {
                Session.Clear();
            }
        }
    }
}