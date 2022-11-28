using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP08_Skins.Models;

namespace TP08_Skins.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        ViewBag.ListaPersonajes = BD.ObtenerPersonajes();
        return View();
    }
    public IActionResult InfoPersonaje(int Id){
        ViewBag.Personaje = BD.InfoPersonaje(Id);
        ViewBag.ListaSkins = BD.ObtenerSkins(Id);
        return View();
    }
    public IActionResult InfoSkin(int Id){
        ViewBag.Skin = BD.InfoSkin(Id);
        return View();
    }
    public IActionResult EliminarSkin(int IdSkin, int IdPersonaje){
        BD.EliminarSkinPorId(IdSkin);
        return RedirectToAction("InfoPersonaje", new {Id = IdPersonaje});
    }
    public IActionResult AgregarSkin(int Id){
        ViewBag.Personaje = BD.InfoPersonaje(Id);
        return View();
    }
    [HttpPost]
    public IActionResult GuardarSkin(Skins Skn){
        BD.AgregarSkin(Skn);
        return RedirectToAction("InfoPersonaje", new { Id = Skn.IdPersonaje});
    }
    public IActionResult Privacy()
    {
        return View();
    }
    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
