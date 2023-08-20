using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkModelo
{
   public class Director
    {
        [DataMember]
        public String Cod_Director { get; set; }
        [DataMember]
        public String Dir_Nombre { get; set; }
        [DataMember]
        public String Dir_Apellido { get; set; }
    }
}
