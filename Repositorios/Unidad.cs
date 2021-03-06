//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Repositorios
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Unidad
    {
        public int IdUnidad { get; set; }
        public int IdConsorcio { get; set; }

        [DataType(DataType.Text)]
        [Required(ErrorMessage = "El nombre es requerido")]
        public string Nombre { get; set; }

        [DataType(DataType.Text)]
        [Required(ErrorMessage = "El nombre del propietario es requerido")]
        public string NombrePropietario { get; set; }

        [DataType(DataType.Text)]
        [Required(ErrorMessage = "El apellido es requerido")]
        public string ApellidoPropietario { get; set; }

        [Required(ErrorMessage = "El email es requerido")]
        [RegularExpression(@"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$", ErrorMessage = "El email no es valido")]
        public string EmailPropietario { get; set; }

        [Range(0, int.MaxValue, ErrorMessage = "Ingrese un número entero")]
        [DataType(DataType.Text)]
        public Nullable<int> Superficie { get; set; }
        [DataType(DataType.DateTime)]
        public System.DateTime FechaCreacion { get; set; }
        public int IdUsuarioCreador { get; set; }
    
        public virtual Consorcio Consorcio { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}
