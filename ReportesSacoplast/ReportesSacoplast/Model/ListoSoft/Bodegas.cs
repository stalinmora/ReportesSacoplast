//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReportesSacoplast.Model.ListoSoft
{
    using System;
    using System.Collections.Generic;
    
    public partial class Bodegas
    {
        public int BodegaID { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public Nullable<int> CentroCostoID { get; set; }
        public string RUC { get; set; }
        public string Direccion { get; set; }
        public bool CargarTodoAlFacturar { get; set; }
        public byte[] RowVersion { get; set; }
        public Nullable<bool> NoDisponibleVenta { get; set; }
        public string Telefonos { get; set; }
        public Nullable<int> LocalidadIDPais { get; set; }
        public Nullable<int> LocalidadIDCiudad { get; set; }
        public Nullable<int> CuentaContableID { get; set; }
        public string TipoBodega { get; set; }
        public Nullable<bool> EsDeInventario { get; set; }
        public Nullable<bool> EsDeActivoFijo { get; set; }
        public string IDConsolidado { get; set; }
        public Nullable<int> PersonaID { get; set; }
        public Nullable<int> DireccionID { get; set; }
        public Nullable<bool> EsDeConsignacion { get; set; }
    }
}
