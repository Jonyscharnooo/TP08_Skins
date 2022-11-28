using System;
namespace TP08_Skins.Models
{
    public class Personajes
    {
        private int _IdPersonaje;
        public int IdPersonaje { get { return _IdPersonaje;} set { _IdPersonaje = value;}}
        private string? _Nombre;
        public string? Nombre { get { return _Nombre;} set { _Nombre = value;}}
        private string? _Foto;
        public string? Foto { get { return _Foto;} set { _Foto = value;}}
    }
}