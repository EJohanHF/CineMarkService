using CineMarkDatos;
using CineMarkModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkLogica
{
   public class LNPelicula
    {

        ADPelicula adPelicula = new ADPelicula();

        public List<Pelicula> Pelicula_Leer()
        {
            return adPelicula.Lee_Pelicula();
        }

        public string Pelicula_Crear(Pelicula pelicula)
        {
            return adPelicula.Crear_Pelicula(pelicula);
        }

    }
}
