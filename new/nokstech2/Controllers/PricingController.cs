using Microsoft.AspNetCore.Mvc;
using nokstech2.Models;
using System.Diagnostics;

namespace nokstech2.Controllers
{
    public class PricingController : Controller
    {
        private readonly ILogger<PricingController> _logger;

        public PricingController(ILogger<PricingController> logger)
        {
            _logger = logger;
        }

        public IActionResult Pricing()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
