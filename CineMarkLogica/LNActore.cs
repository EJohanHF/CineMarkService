using CineMarkDatos;
using CineMarkModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkLogica
{
    public class LNActore
    {
        ADActore adActore = new ADActore();

        public List<Actore> Actore_Lista()
        {
            return adActore.Lee_Actore();
        }
        public string Actore_Crear(Actore actore)
        {
            return adActore.Crear_Actore(actore);
        }
    }
}
