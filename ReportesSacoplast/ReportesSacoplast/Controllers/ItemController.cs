using ReportesSacoplast.Model.ListoSoft;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReportesSacoplast.Controllers
{
    public class ItemController
    {
        public List<fGetItems_Result> GetItems()
        {
            try
            {
                using (var db = new SACO_0990868107001())
                {
                    var a = db.fGetItems(2, true);
                    return a.ToList();
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
