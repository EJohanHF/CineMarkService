using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkModelo
{
    public class Sala
    {
        [DataMember]
        public Int32 Num_Sala { get; set; }
        [DataMember]
        public String Sal_Fila { get; set; }
        [DataMember]
        public Int32 Sal_Columna { get; set; }

    }
}
