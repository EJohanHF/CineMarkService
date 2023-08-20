using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkModelo
{
    public class Cliente
    {

        [DataMember]
        public String Cod_Cliente { get; set; }
        [DataMember]
        public String Cli_Nombre { get; set; }
        [DataMember]
        public String Cli_Apellido { get; set; }
        [DataMember]
        public String Cli_Direccion { get; set; }
        [DataMember]
        public String Cli_Celular { get; set; }
        [DataMember]
        public String Cli_Correo { get; set; }
        [DataMember]
        public String Usuario { get; set; }
        [DataMember]
        public DateTime Cli_FechaCreacion { get; set; }



    }
}
