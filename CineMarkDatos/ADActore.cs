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
    public class ADActore
    {
        ADConexion cnn = new ADConexion();
        public List<Actore> Lee_Actore()
        {
            List<Actore> listaActore = new List<Actore>();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Lee_Actore";
                cmd.Connection = cnn.cn;
                cnn.Conectar();
                //cmd.Parameters.Add(new SqlParameter("@IdAplicacion", SqlDbType.Int)).Value = idAplicacion;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                for (int n = 0; n < dt.Rows.Count; n++)
                {
                    Actore actore = new Actore();
                    actore.Cod_Actor = Funciones.ToString(dt.Rows[n]["Cod_Actor"]);
                    actore.Act_Nombre = Funciones.ToString(dt.Rows[n]["Act_Nombre"]);
                    actore.Act_Apellido = Funciones.ToString(dt.Rows[n]["Act_Apellido"]);
                    listaActore.Add(actore);
                }
            }
            catch (SqlException ex) { }

            try
            {
                cnn.Desconectar();
            }
            catch (SqlException ex) { }
            return listaActore;
        }

        public  string Crear_Actore(Actore actore)
        {
            //DataTable dt = new DataTable();
            string rpta ="";
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Actore_Crear";
                cmd.Connection = cnn.cn;
                cnn.Conectar();
                cmd.Parameters.Add(new SqlParameter("@Act_Nombre", SqlDbType.Text)).Value = actore.Act_Nombre;
                cmd.Parameters.Add(new SqlParameter("@Act_Apellido", SqlDbType.Text)).Value = actore.Act_Apellido;

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
