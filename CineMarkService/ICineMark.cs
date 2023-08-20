using CineMarkLogica;
using CineMarkModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace CineMarkService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface ICineMark
    {
        [OperationContract]
       string Actore_Crear(Actore actore);
        [OperationContract]
        string Director_Crear(Director director);
        [OperationContract]
        string Genero_Crear(Genero genero);
        [OperationContract]
        string Pelicula_Crear(Pelicula pelicula);
        [OperationContract]

        List<Actore> ActoreList();
    }
}
