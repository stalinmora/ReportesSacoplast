using ReportesSacoplast.Model;
using ReportesSacoplast.Model.ListoSoft;
using ReportesSacoplast.SQL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReportesSacoplast.Controllers
{
    internal class KardexController
    {

        public List<Kardex> GetKardex(DateTime Inicio, DateTime Fin, int ItemID, int BodegaID)
        {
            Utilidades util = new Utilidades();
            List<Kardex> res = new List<Kardex>();
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@fechadesde", Inicio),
                    new SqlParameter("@fechahasta", Fin),
                    new SqlParameter("@incluircostos", false),
                    new SqlParameter("@itemid", ItemID),
                    new SqlParameter("@bodegaid", BodegaID),
                };
                using (var db = new SACO_0990868107001())
                {
                    var ini = new SqlParameter("@fechadesde", Inicio);
                    var fi = new SqlParameter("@fechahasta", Fin);
                    var incluir = new SqlParameter("@incluircostos", false);
                    var item = new SqlParameter("@itemid", ItemID);
                    var bodega = new SqlParameter("@bodegaid", BodegaID);

                    var a = db.spRepKardex(Inicio, Fin, false, ItemID, BodegaID);
                    var g = db.GetListKardexSacoplast(Inicio, Fin, false, ItemID, BodegaID);
                    //var b = db.Database.SqlQuery<Kardex>("spRepKardex @fechadesde, @fechahasta,@incluircostos,@itemid, @bodegaid", ini, fi, incluir, item, bodega).ToList();
                    var b = db.Database.SqlQuery<Kardex>("spRepKardexSacoPlast @fechadesde, @fechahasta,@incluircostos,@itemid, @bodegaid", ini, fi, incluir, item, bodega).ToList();
                    //var c = Utilidades.SqlQuery<Kardex>(db, "spRepKardex", parameters);
                    res = b.ToList();
                }
                return res;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
       
    }
}
