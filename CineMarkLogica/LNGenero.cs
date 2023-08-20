using CineMarkDatos;
using CineMarkModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkLogica
{
   public class LNGenero
    {
        ADGenero adGenero = new ADGenero();

        public List<Genero> Genero_Leer()
        {
            return adGenero.Lee_Genero();
        }

        public string Genero_Crear(Genero genero)
        {
            return adGenero.Crear_Genero(genero);
        }

    }
}
