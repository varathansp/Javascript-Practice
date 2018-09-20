using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace JavaScriptInRazorView.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            
            return View();
        }
        [HttpPost]
        public ActionResult Index(string txtName,string txtEmail)
        {
            Response.Write("Name is "+txtName + "Email is"+ txtEmail);
            return View();
        }
        public ActionResult Convertion()
        {

            return View();
        }
        public ActionResult Strings()
        {

            return View();
        }
        public ActionResult Arrays()
        {

            return View();
        }
        public ActionResult ArrayFilter()
        {

            return View();
        }
        public ActionResult Functions()
        {

            return View();
        }
        public ActionResult Closure()
        {

            return View();
        }
        public ActionResult Arguments()
        {

            return View();
        }



    }
}