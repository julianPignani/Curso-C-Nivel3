using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace domino
{
    public class Auto
    {
        public int Id { get; set; }
        public string Marca { get; set; }
        public string Color { get; set; }
        public  DateTime Modelo { get; set; }
        public bool  Usado { get; set; }
        public bool Importado { get; set; }
    }

    public class AutoNegocio
    {
        public List<Auto> listar()
        {
            List<Auto> lista = new List<Auto>();

            lista.Add(new Auto
            {
                Id = 1,
                Marca = "Golf",
                Color = "Rojo",
                Modelo = DateTime.Now,
                Usado = false,
                Importado = true
            });

            lista.Add(new Auto
            {
                Id = 2,
                Marca = "Focus",
                Color = "Negro",
                Modelo = DateTime.Now,
                Usado = true,
                Importado = false
            });

            return lista;
        }
    }

       
}
