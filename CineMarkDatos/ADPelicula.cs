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
    public class ADPelicula
    {

        ADConexion cnn = new ADConexion();
        public List<Pelicula> Lee_Pelicula()
        {
            List<Pelicula> listaPelicula = new List<Pelicula>();
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
                    Pelicula pelicula = new Pelicula();
                    pelicula.Cod_Pelicula = Funciones.ToString(dt.Rows[n]["Cod_Pelicula"]);
                    pelicula.Pel_Nombre = Funciones.ToString(dt.Rows[n]["Pel_Nombre"]);
                    pelicula.Pel_Sionopsis = Funciones.ToString(dt.Rows[n]["Pel_Sionopsis"]);
                    pelicula.Pel_TituloOriginal = Funciones.ToString(dt.Rows[n]["Pel_TituloOriginal"]);
                    pelicula.Cod_Genero = Funciones.ToString(dt.Rows[n]["Cod_Genero"]);
                    pelicula.Pel_Duracion = Funciones.ToString(dt.Rows[n]["Pel_Duracion"]);
                    pelicula.Pel_Anio = Funciones.ToDateTime(dt.Rows[n]["Pel_Anio"]);
                    pelicula.Cod_Director = Funciones.ToString(dt.Rows[n]["Cod_Director"]);
                    pelicula.Cod_Actor = Funciones.ToString(dt.Rows[n]["Cod_Actor"]);
                    pelicula.Num_Sala = Funciones.ToInt(dt.Rows[n]["Num_Sala"]);
                    pelicula.STCOK = Funciones.ToInt(dt.Rows[n]["STCOK"]);
                    pelicula.FechaEstreno = Funciones.ToDateTime(dt.Rows[n]["FechaEstreno"]);
                    pelicula.STS = Funciones.ToBoolean(dt.Rows[n]["STS"]);
                    listaPelicula.Add(pelicula);
                }
            }
            catch (SqlException ex) { }

            try
            {
                cnn.Desconectar();
            }
            catch (SqlException ex) { }
            return listaPelicula;
        }

        public string Crear_Pelicula(Pelicula pelicula)
        {
            //DataTable dt = new DataTable();
            string rpta = "";
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Pelicula_Crear";
                cmd.Connection = cnn.cn;
                cnn.Conectar();
                cmd.Parameters.Add(new SqlParameter("@Pel_Nombre", SqlDbType.Text)).Value = pelicula.Pel_Nombre;
                cmd.Parameters.Add(new SqlParameter("@Pel_Sionopsis", SqlDbType.Text)).Value = pelicula.Pel_Sionopsis;
                cmd.Parameters.Add(new SqlParameter("@Pel_TituloOriginal", SqlDbType.Text)).Value = pelicula.Pel_TituloOriginal;
                cmd.Parameters.Add(new SqlParameter("@Cod_Genero", SqlDbType.Text)).Value = pelicula.Cod_Genero;
                cmd.Parameters.Add(new SqlParameter("@Pel_Duracion", SqlDbType.Text)).Value = pelicula.Pel_Duracion;
                cmd.Parameters.Add(new SqlParameter("@Pel_Anio", SqlDbType.DateTime)).Value = pelicula.Pel_Anio;
                cmd.Parameters.Add(new SqlParameter("@Cod_Director", SqlDbType.Text)).Value = pelicula.Cod_Director;
                cmd.Parameters.Add(new SqlParameter("@Cod_Actor", SqlDbType.Text)).Value = pelicula.Cod_Actor;
                cmd.Parameters.Add(new SqlParameter("@Num_Sala", SqlDbType.Int)).Value = pelicula.Num_Sala;
                cmd.Parameters.Add(new SqlParameter("@STCOK", SqlDbType.Int)).Value = pelicula.STCOK;
                cmd.Parameters.Add(new SqlParameter("@FechaEstreno", SqlDbType.DateTime)).Value = pelicula.FechaEstreno;
                cmd.Parameters.Add(new SqlParameter("@STS", SqlDbType.Bit)).Value = pelicula.STS;

                rpta = cmd.ExecuteNonQuery() == 1 ? "[CREO]" : "No Realizo Registro";

            }
            catch (SqlException ex)
            {
                //rpta = null;
                Console.WriteLine("--------Error: CineMarkDao Actore Registrar: " + ex.Message);
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
