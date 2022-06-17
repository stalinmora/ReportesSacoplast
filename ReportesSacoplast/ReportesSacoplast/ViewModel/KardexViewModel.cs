using GalaSoft.MvvmLight.Command;
using ReportesSacoplast.Controllers;
using ReportesSacoplast.Model;
using ReportesSacoplast.Model.ListoSoft;
using ReportesSacoplast.Pages.Dialog;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace ReportesSacoplast.ViewModel
{
    public class KardexViewModel : ViewModelBase
    {
        public KardexViewModel()
        {
            BodegaController bc = new BodegaController();
            Bodega = new ObservableCollection<Bodegas>(bc.GetBodegas());
        }

        public ICommand BuscarItemCommand { get { return new RelayCommand(BuscarItem); } }
        public ICommand BuscarKardexCommand { get { return new RelayCommand(BuscarKardex); } }

        

        #region Atributos
        private string _codigoItem { get; set; }
        private string _descripcionItem { get; set; }
        private ObservableCollection<Bodegas> _bodega;
        private Bodegas _selectBodega;
        private DateTime _fechaInicio;
        private DateTime _fechiaFin;
        private int _itemID;
        private ObservableCollection<Kardex> _kardex;
        #endregion


        #region Propiedades
        public string CodigoItem
        {
            get => _codigoItem;
            set
            {
                _codigoItem = value;
                OnPropertyChanged(nameof(CodigoItem));
            }
        }
        public string DescripcionItem
        {
            get => _descripcionItem;
            set
            {
                _descripcionItem = value;
                OnPropertyChanged(nameof(DescripcionItem));
            }
        }
        public ObservableCollection<Bodegas> Bodega
        {
            get => _bodega;
            set
            {
                _bodega = value;
                OnPropertyChanged(nameof(Bodega));
            }
        }
        public Bodegas SelectBodega
        {
            get => _selectBodega;
            set
            {
                _selectBodega = value;
                OnPropertyChanged(nameof(SelectBodega));
            }
        }
        public DateTime FechaInicio
        {
            get => _fechaInicio;
            set
            {
                _fechaInicio = value;
                OnPropertyChanged(nameof(_fechaInicio));
            }
        }
        public DateTime FechaFin
        {
            get => _fechiaFin;
            set
            {
                _fechiaFin = value;
                OnPropertyChanged(nameof(_fechiaFin));
            }
        }
        public int ItemID
        {
            get => _itemID;
            set
            {
                _itemID = value;
                OnPropertyChanged(nameof(ItemID));
            }
        }
        public ObservableCollection<Kardex> Kardex
        {
            get => _kardex;
            set
            {
                _kardex = value;
                OnPropertyChanged(nameof(Kardex));
            }
        }

        #endregion

        private void BuscarItem()
        {
            var vm = new BuscarItemViewModel();
            BuscaItemPage bi = new BuscaItemPage();
            bi.DataContext = vm;
            bi.ShowDialog();
            var value = vm.SelectItem;
            if (!(value is null))
            {
                CodigoItem = value.Codigo;
                DescripcionItem = value.Descripcion;
                ItemID = value.ItemID;
            }
        }

        private void BuscarKardex()
        {
            KardexController kc = new KardexController();
            var b = kc.GetKardex(FechaInicio.Date, FechaFin.Date, ItemID, SelectBodega.BodegaID);
            Kardex = new ObservableCollection<Kardex>(b);
        }
    }
}
