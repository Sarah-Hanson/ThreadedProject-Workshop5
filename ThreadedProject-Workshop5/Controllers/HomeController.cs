using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThreadedProject_Workshop5.Models.DBEntities;
using ThreadedProject_Workshop5.Models.DBEntities.Conglomerates;
/*
 * Framework:Sarah
 */
namespace ThreadedProject_Workshop5.Controllers {
    public class HomeController : Controller {
        /*
         *  Brandon
         */
        public ActionResult Index() {
            return View();
        }
        /*
         *  Brandon
         */
        public ActionResult Contact() {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        /*
         * Neel
         */
        public ActionResult Packages() {
            ViewBag.Message = "Your package page.";

            return View();
        }
        /*
         * Neel
         */
        public ActionResult Booking() {
            ViewBag.Message = "Your booking page.";

            return View();
        }
        /*
         * Sarah
         */
        public ActionResult UserProfile() {
            ViewBag.Message = "Your profile page.";

            return View();
        }

        public bool isLoggedIn() {
            return (Session["UserLogin"] != null);
        }
        public void logUserIn(Customer UserName) {
            
        }
     }
}