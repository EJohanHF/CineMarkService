using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using CineMarkLogica;
using CineMarkModelo;

namespace CineMarkService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class CineMark : ICineMark
    {
        LNActore lnActore = new LNActore();
        LNDirector lnDirector = new LNDirector();
        LNGenero lnGenero = new LNGenero();
        LNPelicula lnPelicula = new LNPelicula();
        public string Actore_Crear(Actore actore)
        {
            return lnActore.Actore_Crear(actore);
        }

        public string Director_Crear(Director director)
        {
            return lnDirector.Director_Crear(director);
        }

        public string Genero_Crear(Genero genero)
        {
            return lnGenero.Genero_Crear(genero);
        }

        public string Pelicula_Crear(Pelicula pelicula)
        {
             return lnPelicula.Pelicula_Crear(pelicula);
        }

        public List<Actore> ActoreList() { 
        
           return lnActore.Actore_Lista();
        }
    }
}
