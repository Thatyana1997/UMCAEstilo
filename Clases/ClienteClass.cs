using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UMCAEstilo.Clases
{
    public class ClienteClass
    {
		public int Id { get; set; }

        public string TipoIdentificacion { get; set; }
        public string Identificacion { get; set; }
        public string Nombre { get; set; }
		public string PrimerApellido { get; set; }
        public string SegudoApellido { get; set; }


    }
}