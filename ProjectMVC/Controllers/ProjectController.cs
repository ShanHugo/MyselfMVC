using Microsoft.AspNetCore.Mvc;
using ProjectMVC.Models;

namespace ProjectMVC.Controllers
{
    public class ProjectController : Controller
    {
        ForProjectContext db = new ForProjectContext();
        public IActionResult Index()
        {
            var projects = db.Projects.ToList();
            return View(projects);
        }

        public IActionResult Details(int id)
        {
            var project = db.Projects.FirstOrDefault(p => p.Id == id);
            if (project == null)
                return NotFound();
            return View(project);
        }
        public IActionResult Contact()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Contact(Contacts contact)
        {
            if (ModelState.IsValid)
            {
                contact.SubmitDate = DateTime.Now;
                db.Contacts.Add(contact);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            return View(contact);
        }
    }
}
