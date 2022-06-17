using ReportesSacoplast.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReportesSacoplast.Infrastructure
{
    public class InstanceLocator
    {
        
        public KardexViewModel Kardex { get; set; }
        public BuscarItemViewModel BuscarItem { get; set; }
        public InstanceLocator()
        {
            
            Kardex = new KardexViewModel();
            BuscarItem = new BuscarItemViewModel();
        }
    }
}
