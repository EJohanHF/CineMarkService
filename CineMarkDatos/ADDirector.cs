using CineMarkModelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkDatos
{
   public class ADDirector
    {        
        ADConexion cnn = new ADConexion();
        public List<Director> Lee_Director()
        {
            List<Director> listaDirector = new List<Director>();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "";
                cmd.Connection = cnn.cn;
                cnn.Conectar();
                //cmd.Parameters.Add(new SqlParameter("@IdAplicacion", SqlDbType.Int)).Value = idAplicacion;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                for (int n = 0; n < dt.Rows.Count; n++)
                {
                    Director director = new Director();
                    director.Cod_Director = Funciones.ToString(dt.Rows[n]["Cod_Director"]);
                    director.Dir_Nombre = Funciones.ToString(dt.Rows[n]["Dir_Nombre"]);
                    director.Dir_Apellido = Funciones.ToString(dt.Rows[n]["Dir_Apellido"]);
                    listaDirector.Add(director);
                }
            }
            catch (SqlException ex) { }

            try
            {
                cnn.Desconectar();
            }
            catch (SqlException ex) { }
            return listaDirector;
        }

        public string Crear_Director(Director director)
        {
            //DataTable dt = new DataTable();
            string rpta = "";
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Director_Crear";
                cmd.Connection = cnn.cn;
                cnn.Conectar();
                cmd.Parameters.Add(new SqlParameter("@Dir_Nombre", SqlDbType.Text)).Value = director.Dir_Nombre;
                cmd.Parameters.Add(new SqlParameter("@Dir_Apellido", SqlDbType.Text)).Value = director.Dir_Apellido;

                rpta = cmd.ExecuteNonQuery() == 1 ? "[CREO]" : "No Realizo Registro";

            }
            catch (SqlException ex)
            {
                //rpta = null;
                Console.WriteLine("--------Error: CineMarkDao Director Registrar: " + ex.Message);
            }
            try
            {
                cnn.Desconectar();
            }
            catch (SqlException ex) { }

            return rpta;

        }

    }
}
