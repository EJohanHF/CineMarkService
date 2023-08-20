using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkModelo
{
    public class Ticke
    {
        [DataMember]
        public String Num_Ticke { get; set; }
        [DataMember]
        public String Usuario { get; set; }
        [DataMember]
        public String Cod_Pelicula { get; set; }
        [DataMember]
        public String Cod_Cliente { get; set; }
        [DataMember]
        public DateTime FechaCreacion { get; set; }



    }
}
