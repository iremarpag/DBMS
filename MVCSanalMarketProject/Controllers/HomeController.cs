using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Mysql.Data.MySqlClient;

namespace MVCSanalMarketProject.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Anasayfa()
        {
            return View();
        }
    }
}