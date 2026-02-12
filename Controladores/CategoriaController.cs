using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace UMCAEstilo.Controladores
{
    public class CategoriaController
    {
        private string connectionString;

        public CategoriaController()
        { 
            connectionString = ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString;// Obtener la cadena de conexión desde Web.config
        }
        //CRUD
        //C:Create crear
        public void AgregarCategoria(string nombre, string descripcion, string usuarioCreacion)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_AgregarCategoria", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@Descripcion", descripcion);
                cmd.Parameters.AddWithValue("@UsuarioCreacion", usuarioCreacion);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        //R:Read: Leer/selecionar
        //Seleccionar

        //U:Update Modificar/Actualizar/Corregir 
        //Modificar 

        //D:Delete Eliminar 
        //Eliminar
         

    }
}