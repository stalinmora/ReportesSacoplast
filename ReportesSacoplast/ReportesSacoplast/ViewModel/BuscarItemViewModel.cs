using GalaSoft.MvvmLight.Command;
using ReportesSacoplast.Controllers;
using ReportesSacoplast.Model.ListoSoft;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace ReportesSacoplast.ViewModel
{
    public class BuscarItemViewModel: ViewModelBase
    {
        

        #region Atributos
        private ObservableCollection<fGetItems_Result> _items;
        private fGetItems_Result _selectItem;
        #endregion

        #region Propiedades
        public ObservableCollection<fGetItems_Result> Items
        {
            get => _items;
            set
            {
                _items = value;
                OnPropertyChanged(nameof(Items));
            }
        }
        public fGetItems_Result SelectItem
        {
            get => _selectItem;
            set
            {
                _selectItem = value;
                OnPropertyChanged(nameof(SelectItem));
            }
        }
        #endregion
        public BuscarItemViewModel()
        {
            ItemController ic = new ItemController();
            Items = new ObservableCollection<fGetItems_Result>(ic.GetItems());
            if (!(Items is null))
            {
                Items.Clear();
                Items = new ObservableCollection<fGetItems_Result>(ic.GetItems());
            }
        }

        public ICommand SaveItemCommand { get { return new RelayCommand<Window>(SaveItem); } }

        private void SaveItem(Window obj)
        {
            if(obj != null)
            {
                obj.Close();
            }
        }
    }
}
