using ReportesSacoplast.Model.ListoSoft;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReportesSacoplast.Controllers
{
    public class BodegaController
    {
        public List<Bodegas> GetBodegas()
        {
            try
            {
                using(var db = new SACO_0990868107001())
                {
                    var a = db.Bodegas.ToList();
                    return a;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
