using System.Web.Mvc;
using ThreadedProject_Workshop5.Models;
using ThreadedProject_Workshop5.Models.DBEntities.Conglomerates;
/*
* Framework:Sarah
*/
namespace ThreadedProject_Workshop5.Controllers {
    public class HomeController : Controller {
        readonly DBO dbo = DBO.Instance;
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
          
            return View();
        }
        /*
         * Neel
         * Display all packages, allow selecting a package to book, or redirecting to 
         * registration if not logged in
         */
        public ActionResult Packages() {
            ViewBag.Message = "Your package page.";

            return View();
        }   
        /*
         * Neel
         * Allows a logged in customer to book a vacation
         */
        public ActionResult Booking() {
            ViewBag.Message = "Your booking page.";

            return View();
        }
        /*
         * Sarah
         */
         public ActionResult Register()
        {
            ViewBag.Message = "Your Register Page";

                return View();
        }
        public ActionResult UserProfile() {
            TravelCustomer travelCust;
            dbo.GetConglomerate(out travelCust, Session["UserLogin"].ToString());

            ViewBag.User = travelCust;
            ViewBag.Message = "Your profile page.";

            return View();
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