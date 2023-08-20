using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkModelo
{
    public class Actore
    {
        [DataMember]
        public String Cod_Actor { get; set; }
        [DataMember]
        public String Act_Nombre { get; set; }
        [DataMember]
        public String Act_Apellido { get; set; }
    }
}
