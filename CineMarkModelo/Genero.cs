using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkModelo
{
    public class Genero
    {
        [DataMember]
        public String Cod_Genero { get; set; }
        [DataMember]
        public String Gen_Nombre { get; set; }

    }
}
