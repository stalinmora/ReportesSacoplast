   M S B A M L   `   `   `  ���� N  JReportesSacoplast, Version=19.2.0.20, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ReportesSacoplast.PagesReportesSacoplast.Pages  (    "ReportesSacoplast.Pages.KardexPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     7local%clr-namespace:ReportesSacoplast.Pages     d `Syncfusion.SfDiagram.WPF, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89h dSyncfusion.SfSkinManager.WPF, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.Shared.Wpf, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89`	 \Syncfusion.Tools.Wpf, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89b
 ^Syncfusion.SfChart.WPF, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.SfGrid.WPF, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89<
syncfusion!http://schemas.syncfusion.com/wpf    	 
  g cMahApps.Metro.IconPacks.Codicons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ac _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks     � Title$  Kardex Sacoplast��$	��450��$	��809�� � DataContext �� *Kardex+   Locator �� Source# [  .��� $��2,2,2,2q�.+��  � RowDefinitions �� $	��70* ��� $
��361* �.+�� $��2,2,2,2q� �� $	��15* ��� $Q��K15                                                                        * �.+��� $��MOVIMIENTOS DESDE : ��$
��Left=�$��3,0,0,0q�$��Center=�$��23��$	��145��$
��Bold"�(  "System.Windows.Controls.DatePicker  $
��Left=�$��	149,0,0,0q�$��Center=�   SelectedDate �� *FechaInicio+   DisplayDate �� *System.DateTime.Now+�� $��HASTA  ��$
��Left=�$��	304,0,0,0q�$��Center=�$��23��$��54��$
��Bold"�  $
��Left=�$��Center=�$��	365,0,0,0q�$	��141�� �� *
FechaFin+ �� *System.DateTime.Now+�� $��BODEGA:��$
��Left=�$��Center=�$��23��$��66��$
��Bold"�$��	514,0,0,0q���  �� DisplayMemberPath$ Nombre�� �� SelectedValuePath$ BodegaID��$
��Left=�$��	585,0,0,0q�$��Center=�$	��197������ *Bodega+ �� SelectedItem �� *SelectBodega+�� $��ITEM : ��$
��Left=�$��3,5,0,0q�$	��Top=�$��23��$��46��$
��Bold"�$��1���� 	 �� 
IsReadOnly	 . $
��Left=�$��	161,5,0,0q�$��1��
 �� TextWrapping$

 Wrap=�$	��Top=�$	��433��$��23������ *DescripcionItem+�� $
��Left=�$��51,5,0,0q�$��1��$

 Wrap=�$	��Top=�$��85��$��23������ *
CodigoItem+� $��	612,0,0,0q�$��1��$
��Left=�$	��170��.+��� $��BUSCAR��$	��Top=�$��24��$
��Left=�$��90��$��0,4,0,0q����� *BuscarKardexCommand+�� $��SALIR��$	��Top=�$��24��$��95,4,2,0q� J� RenderTransformOrigin$ -0.382,0.505&��� $
��Left=�$��	136,5,0,0q�$��1��$	��Top=�$��25��$��23������ *BuscarItemCommand+.��(� .��� $��Center=�$��Center=�.+�/  )MahApps.Metro.IconPacks.CodiconsExtension     Kind$ Search=�3  -MahApps.Metro.IconPacks.BasePackIconExtension   Width$ 48Q�   Height$ 43Q�(  "Syncfusion.UI.Xaml.Grid.SfDataGrid  $��1��$��10,10,10,10q�(  "Syncfusion.UI.Xaml.Grid.SfGridBase   AutoGenerateColumns .  $��10(�   AllowFiltering .    ItemsSource �� *Kardex+   Columns 0  *Syncfusion.UI.Xaml.Grid.GridDateTimeColumn  ,  &Syncfusion.UI.Xaml.Grid.GridColumnBase   Width$	 150Q�(  "Syncfusion.UI.Xaml.Grid.GridColumn   FilteredFrom$ AdvancedFilter=�   
HeaderText$ Fecha��   Pattern$ UniversalSortableDateTime=�   MappingName$ Fecha��   TextAlignment$ Center=�   DisplayBinding Z�    ValueBinding Z� ,	  &Syncfusion.UI.Xaml.Grid.GridTextColumn	  $	 150Q�$ AdvancedFilter=�$ Egreso/Ingreso��$ EgrIng��$ Center=� Z�  Z� 	  $	 180Q�$ AdvancedFilter=�$ Concepto��$ Concepto��$
 Left=� Z�  Z� 	  $ 70Q�$ AdvancedFilter=�$ Bodega��$	 Bod��$ Center=� Z�  Z� 	  $	 150Q�$ AdvancedFilter=�$ 
Referencia��$ Refer��$ Center=� Z�  Z� 	  $	 100Q�$ AdvancedFilter=�$
 Item��$ CodItem��$ Center=� Z�  Z� 	  $	 600Q�$ AdvancedFilter=�$ Descripcion��$ DescripcionItem��$ Center=� Z�  Z� /
  )Syncfusion.UI.Xaml.Grid.GridNumericColumn
  $	 150Q�$ AdvancedFilter=�$ Ingreso��$ Ingreso��$ Right=� Z�  Z� 
  $	 150Q�$ AdvancedFilter=�$ Egreso��$ Egreso��$ Right=� Z�  Z� 
  $	 150Q�$ AdvancedFilter=�$ Saldo��$ Saldo��$ Right=� Z�  Z�    TableSummaryRows 1  +Syncfusion.UI.Xaml.Grid.GridTableSummaryRow  ,  &Syncfusion.UI.Xaml.Grid.GridSummaryRow   ShowSummaryInRow .     SummaryColumns /  )Syncfusion.UI.Xaml.Grid.GridSummaryColumn     Name$ PriceAmount��   Format8  2Syncfusion.UI.Xaml.Grid.GridSummaryFormatConverter$ 'Total Ingreso : {Sum:N}'     MappingName$  Ingreso��!   SummaryType$! DoubleAggregate=�  $ PriceAmount��$ 'Total Egreso : {Sum:N}' $  Egreso��$! DoubleAggregate=�