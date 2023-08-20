using CineMarkDatos;
using CineMarkModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineMarkLogica
{
    public class LNDirector
    {
        ADDirector adDirector = new ADDirector();

        public List<Director> Director_Crear()
        {
            return adDirector.Lee_Director();
        }

        public string Director_Crear(Director director)
        {
            return adDirector.Crear_Director(director);
        }



    }
}
