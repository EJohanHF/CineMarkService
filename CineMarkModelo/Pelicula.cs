using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkModelo
{
    public class Pelicula
    {


        [DataMember]
        public String Cod_Pelicula { get; set; }
        [DataMember]
        public String Pel_Nombre { get; set; }
        [DataMember]
        public String Pel_Sionopsis { get; set; }
        [DataMember]
        public String Pel_TituloOriginal { get; set; }
        [DataMember]
        public String Cod_Genero { get; set; }
        [DataMember]
        public String Pel_Duracion { get; set; }
        [DataMember]
        public DateTime Pel_Anio { get; set; }
        [DataMember]
        public String Cod_Director { get; set; }
        [DataMember]
        public String Cod_Actor { get; set; }
        [DataMember]
        public Int32 Num_Sala { get; set; }
        [DataMember]
        public Int32 STCOK { get; set; }
        [DataMember]
        public DateTime FechaEstreno { get; set; }
        [DataMember]
        public Boolean STS { get; set; }




    }
}
