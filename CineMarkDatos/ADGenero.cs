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
    public class ADGenero
    {

        ADConexion cnn = new ADConexion();
        public List<Genero> Lee_Genero()
        {
            List<Genero> listaGenero = new List<Genero>();
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
                    Genero genero = new Genero();
                    genero.Cod_Genero = Funciones.ToString(dt.Rows[n]["Cod_Genero"]);
                    genero.Gen_Nombre = Funciones.ToString(dt.Rows[n]["Gen_Nombre"]);

                    listaGenero.Add(genero);
                }
            }
            catch (SqlException ex) { }

            try
            {
                cnn.Desconectar();
            }
            catch (SqlException ex) { }
            return listaGenero;
        }

        public string Crear_Genero(Genero genero)
        {
            //DataTable dt = new DataTable();
            string rpta = "";
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Genero_Crear";
                cmd.Connection = cnn.cn;
                cnn.Conectar();
                cmd.Parameters.Add(new SqlParameter("@Gen_Nombre", SqlDbType.Text)).Value = genero.Gen_Nombre;       

                rpta = cmd.ExecuteNonQuery() == 1 ? "[CREO]" : "No Realizo Registro";

            }
            catch (SqlException ex)
            {
                //rpta = null;
                Console.WriteLine("--------Error: CineMarkDao Genero Registrar: " + ex.Message);
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
