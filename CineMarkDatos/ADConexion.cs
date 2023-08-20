using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkDatos
{
    class ADConexion
    {

        public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["UB_Safe_Connector"].ConnectionString);

        public string Conexion()
        {
            return cn.ConnectionString;
        }
        public void Conectar()
        {
            cn.Open();
        }
        public void Desconectar()
        {
            cn.Close();
        }
    }
}
