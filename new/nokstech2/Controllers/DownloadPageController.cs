using Microsoft.AspNetCore.Mvc;
using nokstech2.Models;
using System.Diagnostics;

namespace nokstech2.Controllers
{
    public class DownloadPageController : Controller
    {
        private readonly ILogger<DownloadPageController> _logger;

        public DownloadPageController(ILogger<DownloadPageController> logger)
        {
            _logger = logger;
        }

        public IActionResult Downloadpage()
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
