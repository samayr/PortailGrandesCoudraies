using LesGrandesCoudraies.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LesGrandesCoudraies.Controllers
{
    public class SectionController : Controller
    {
        // GET: Section
        public ActionResult News()
        {
            ViewBag.RootDomain = Request.ApplicationPath.EndsWith("/") ? Request.ApplicationPath : Request.ApplicationPath + "/";
            ViewBag.SectionName = "Actualités";
            ViewBag.Config = "News";
			ViewBag.MenuItems = new List<Menu>()
				{
					new Menu() 
					{
 						Name = "Les travaux",
					},
					new Menu() 
					{
 						Name = "Les projets",
					},
					new Menu() 
					{
 						Name = "Vos suggestions",
					},
				};
            return View();
        }

        // GET: Section
        public ActionResult Syndic()
        {
            ViewBag.RootDomain = Request.ApplicationPath.EndsWith("/") ? Request.ApplicationPath : Request.ApplicationPath + "/";
            ViewBag.SectionName = "Syndic";
			ViewBag.Config = "Syndic";
			ViewBag.MenuItems = new List<Menu>()
				{
					new Menu() 
					{
 						Name = "Les documents",
					},
					new Menu() 
					{
 						Name = "Les contacts",
					},
				};
            return View();
        }

        // GET: Section
        public ActionResult Residence()
        {
            ViewBag.RootDomain = Request.ApplicationPath.EndsWith("/") ? Request.ApplicationPath : Request.ApplicationPath + "/";
            ViewBag.SectionName = "La résidence";
			ViewBag.Config = "Residence";
			ViewBag.MenuItems = new List<Menu>()
				{
					new Menu() 
					{
 						Name = "Présentation",
					},
					new Menu() 
					{
 						Name = "Portfolio",
					},
				};
            return View();
        }

        // GET: Section
        public ActionResult Contacts()
        {
            ViewBag.RootDomain = Request.ApplicationPath.EndsWith("/") ? Request.ApplicationPath : Request.ApplicationPath + "/";
            ViewBag.SectionName = "Les contacts";
			ViewBag.Config = "Syndic";
			ViewBag.MenuItems = new List<Menu>()
				{
					new Menu() 
					{
 						Name = "Le conseil",
					},
				};
            return View();
        }
    }
}