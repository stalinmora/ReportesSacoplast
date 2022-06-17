using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReportesSacoplast.Model
{
    public class Kardex
    {
        public DateTime Fecha { get; set; }
        public string EgrIng { get; set; }
        public string Bod { get; set; }
        public string Refer { get; set; }
        public string Concepto { get; set; }
        public decimal? Ingreso { get; set; }
        public decimal? Egreso { get; set; }
        public decimal? Saldo { get; set; }
        public decimal? CostoUnitario { get; set; }
        public decimal? CostIngreso { get; set; }
        public decimal? CostEgreso { get; set; }
        public decimal? CostoSaldo { get; set; }
        public string CodigoItem { get; set; }
        public string DescripcionItem { get; set; }
        public string Unidad { get; set; }
        public int? ItemID { get; set; }
        public int? LineaID { get; set; }
        public string LineaCodigo { get; set; }
        public string Linea { get; set; }
        public string Persona { get; set; }
        public string TipoItem { get; set; }
        public string CodigoCuenta { get; set; }
        public string CuentaContable { get; set; }
        public int? ComprobanteID { get; set; }
        public string Remision { get; set; }
        public decimal? PVPUnitario { get; set; }
        public decimal? PVPTotal { get; set; }
        public string NotaDetalle { get; set; }
        public string CodItem { get; set; }
        public decimal? IngresoAlterno { get; set; }
        public decimal? EgresoAlterno { get; set; }
        public decimal? SaldoAlterno { get; set; }
    }
}
