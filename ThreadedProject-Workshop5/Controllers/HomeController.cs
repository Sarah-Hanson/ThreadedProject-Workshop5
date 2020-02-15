using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
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
            ViewBag.Message = "Your contact page.";

            return View();
        }
        /*
         * Neel
         */
        public ActionResult Booking() {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        /*
         * Sarah
         */
        public ActionResult UserProfile() {
            ViewBag.Message = "Your contact page.";

            return View();
        }




    }
}