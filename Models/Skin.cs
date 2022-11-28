using System;
namespace TP08_Skins.Models
{
    public class Skins
    {
        private int _IdSkin;
        public int IdSkin { get { return _IdSkin;} set { _IdSkin = value;}}
        private string? _Nombre;
        public string? Nombre { get { return _Nombre;} set { _Nombre = value;}}
        private string? _Foto;
        public string? Foto { get { return _Foto;} set { _Foto = value;}}
        private int _Precio;
        public int Precio { get { return _Precio;} set { _Precio = value;}}
        private string? _Categoria;
        public string? Categoria { get { return _Categoria;} set { _Categoria = value;}}
        private DateTime _Creacion;
        public DateTime Creacion { get { return _Creacion;} set { _Creacion = value;}}
        private int _IdPersonaje;
        public int IdPersonaje { get { return _IdPersonaje;} set { _IdPersonaje = value;}}
    }
}