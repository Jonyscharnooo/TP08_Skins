using System.Data.SqlClient;
using Dapper;
using System.Collections.Generic;
namespace TP08_Skins.Models{
public class BD{
    private static string _connectionString = @"Server=A-PHZ2-AMI-019;DataBase=Skins;Trusted_Connection=True";
    public static List<Personajes> ObtenerPersonajes(){
        List<Personajes>? lista = null;
        string SQL = "SELECT * FROM Personaje";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            lista = db.Query<Personajes>(SQL).ToList(); 
        } 
        return lista;
    }
    public static List<Skins> ObtenerSkins(int Id){
        List<Skins>? lista = null;
        string SQL = "SELECT * FROM Skin WHERE IdPersonaje = @pId"; 
        using(SqlConnection db = new SqlConnection(_connectionString)){
            lista = db.Query<Skins>(SQL, new {pId = Id}).ToList(); 
        } 
        return lista;
    }
    public static Personajes InfoPersonaje(int Id){
        Personajes? info = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
        string sql = "SELECT * FROM Personaje WHERE IdPersonaje = @pId";
        info = db.QueryFirstOrDefault<Personajes>(sql, new {pId = Id});
        }
        return info;
    }
    public static Skins InfoSkin(int Id){
        Skins? info = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
        string sql = "SELECT * FROM Skin WHERE IdSkin = @pId";
        info = db.QueryFirstOrDefault<Skins>(sql, new {pId = Id});
        }
        return info;
    }
    public static void AgregarSkin(Skins Skn){
        string sql = "INSERT INTO Skin(Nombre, Foto, Precio, Categoria, Creacion, IdPersonaje) VALUES (@pNombre, @pFoto, @pPrecio, @pCategoria, @pCreacion, @pIdPersonaje)";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            db.Execute(sql, new {pNombre = Skn.Nombre, pFoto = Skn.Foto, pPrecio = Skn.Precio, pCategoria = Skn.Categoria, pCreacion = Skn.Creacion, pIdPersonaje = Skn.IdPersonaje});
        }
    }
    public static void EliminarSkinPorId(int Id){
        string SQL = "DELETE FROM Skin WHERE IdSkin = @pId"; 
        using(SqlConnection db = new SqlConnection(_connectionString)){
            db.Execute(SQL, new {pId = Id}); 
        } 
    }
}
}