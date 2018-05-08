using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace answerDigital.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
          


                // TODO, Get data from SQL database using ADO.NET or Entity Framework

                PersonId personData = GetDataFromSQLServerRepository();

                // Fill your view model

                PersonViewModel model = new PersonViewModel();

                model.FirstName = personData.FirstName;
                model.LastName = personData.LastName;
                model.ColourName = personData.ColourName;

                return View(model);
           
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}