using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkModelo
{
    public class Usuario
    {

        [DataMember]
        public String Usuario1 { get; set; }
        [DataMember]
        public String ClaveAcceso { get; set; }
        [DataMember]
        public String Usu_Nombre { get; set; }
        [DataMember]
        public String Usu_Apellido { get; set; }
        [DataMember]
        public DateTime Usu_FechaCreacion { get; set; }
        [DataMember]
        public String Usu_UsuarioCreacion { get; set; }
        [DataMember]
        public DateTime? Usu_FechaModificacion { get; set; }
        [DataMember]
        public String Usu_UsuarioModificacion { get; set; }
        [DataMember]
        public Boolean Usu_Sts { get; set; }


    }
}
