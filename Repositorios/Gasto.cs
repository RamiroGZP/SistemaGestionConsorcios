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

    public partial class Gasto
    {
        public int IdGasto { get; set; }

        [DataType(DataType.Text)]
        [Required(ErrorMessage = "El nombre es requerido")]
        public string Nombre { get; set; }

        [DataType(DataType.Text)]
        public string Descripcion { get; set; }
        public int IdConsorcio { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "Seleccione tipo de gasto")]
        public int IdTipoGasto { get; set; }

        [Required(ErrorMessage = "Fecha es requerido")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}")]
        public System.DateTime FechaGasto { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "El año es requerido")]
        public int AnioExpensa { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "El mes es requerido")]
        public int MesExpensa { get; set; }

        [DataType(DataType.Text)]
        [Required(ErrorMessage = "El ArchivoComprobante es requerido")]
        public string ArchivoComprobante { get; set; }

        [DataType(DataType.Text)]
        [Range(1, int.MaxValue, ErrorMessage = "Ingrese un monto mayor a 0")]
        public decimal Monto { get; set; }

        [DataType(DataType.DateTime)]
        public System.DateTime FechaCreacion { get; set; }
        public int IdUsuarioCreador { get; set; }
    
        public virtual Consorcio Consorcio { get; set; }
        
        public virtual TipoGasto TipoGasto { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}