   M S B A M L   `   `   `  ����N  JReportesSacoplast, Version=19.2.0.20, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ReportesSacoplast.PagesReportesSacoplast.Pages  5   	   (    "ReportesSacoplast.Pages.KardexPage   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:ReportesSacoplast.Pages     5   	   d `Syncfusion.SfDiagram.WPF, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89h dSyncfusion.SfSkinManager.WPF, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.Shared.Wpf, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89`	 \Syncfusion.Tools.Wpf, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89b
 ^Syncfusion.SfChart.WPF, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a ]Syncfusion.SfGrid.WPF, Version=20.1460.0.59, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89<
syncfusion!http://schemas.syncfusion.com/wpf    	 
  5   	   g cMahApps.Metro.IconPacks.Codicons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ac _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a?	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	     � Title$  Kardex Sacoplast��5
   	   $	��450��6b   $	��809��6o    � DataContext 6"   �� *Kardex+   Locator �� Source# [  .��5      � $��2,2,2,2q�6   .+�5   
   �  � RowDefinitions 5      �� 5      $	��70* �6    �� 5      $
��361* �6    .+�5      � $��2,2,2,2q�6    5      �� 5      $	��15* �6$   �� 5      $Q��K15                                                                        * �6$   .+�5      �� $��MOVIMIENTOS DESDE : ��6   $
��Left=�67   $��3,0,0,0q�6R   $��Center=�6c   $��23��6~   $	��145��6�   $
��Bold"�6�   (  "System.Windows.Controls.DatePicker  5      $
��Left=�6n   $��	149,0,0,0q�6�   $��Center=�6�      SelectedDate 6   �� *FechaInicio+   DisplayDate 6B   �� *System.DateTime.Now+6�   �� 5      $��HASTA  ��6   $
��Left=�6*   $��	304,0,0,0q�6E   $��Center=�6X   $��23��6s   $��54��6   $
��Bold"�6�     5      $
��Left=�6k   $��Center=�6�   $��	365,0,0,0q�6�   $	��141��6�    6   �� *
FechaFin+ 6?   �� *System.DateTime.Now+6�   �� 5      $��BODEGA:��6   $
��Left=�6*   $��Center=�6E   $��23��6`   $��66��6l   $
��Bold"�6w   $��	514,0,0,0q�6�   �� 5       �� DisplayMemberPath$ Nombre��6`    �� SelectedValuePath$ BodegaID��6{   $
��Left=�6�   $��	585,0,0,0q�6�   $��Center=�6�   $	��197��6�   ��6   �� *Bodega+ �� SelectedItem 6:   �� *SelectBodega+6�   �� 5      $��ITEM : ��6   $
��Left=�6*   $��3,5,0,0q�6E   $	��Top=�6V   $��23��6n   $��46��6z   $
��Bold"�6�   $��1��6�   �� 5      	 �� 
IsReadOnly	 . $
��Left=�6M   $��	161,5,0,0q�6h   $��1��6{   
 �� TextWrapping$

 Wrap=�6�   $	��Top=�6�   $	��433��6�   $��23��6�   ��6   �� *DescripcionItem+6�   �� 5      $
��Left=�66   $��51,5,0,0q�6Q   $��1��6c   $

 Wrap=�6p   $	��Top=�6�   $��85��6�   $��23��6�   ��6   �� *
CodigoItem+6�   � 5      $��	612,0,0,0q�6   $��1��6*   $
��Left=�67   $	��170��6R   .+�5       �� $��BUSCAR��6E   $	��Top=�6V   $��24��6n   $
��Left=�6z   $��90��6�   $��0,4,0,0q�6�   ��6   �� *BuscarKardexCommand+6�   �� 5!      $��SALIR��6   $	��Top=�6-   $��24��6E   $��95,4,2,0q�6Q    J� RenderTransformOrigin$ -0.382,0.505&�6c   5"      �� 5#      $
��Left=�6@   $��	136,5,0,0q�6[   $��1��6n   $	��Top=�6{   $��25��6�   $��23��6�   ��6   �� *BuscarItemCommand+.��5$      (� .��5%      � $��Center=�6   $��Center=�6<   .+�5&      /  )MahApps.Metro.IconPacks.CodiconsExtension     Kind$ Search=�61   3  -MahApps.Metro.IconPacks.BasePackIconExtension   Width$ 48Q�6?      Height$ 43Q�6J   5'      5(      5)      5+      (  "Syncfusion.UI.Xaml.Grid.SfDataGrid  5,      $��1��6$   $��10,10,10,10q�6P   (  "Syncfusion.UI.Xaml.Grid.SfGridBase   AutoGenerateColumns .  $��10(�6�      AllowFiltering .    ItemsSource 61   �� *Kardex+   Columns 5.      0  *Syncfusion.UI.Xaml.Grid.GridDateTimeColumn  ,  &Syncfusion.UI.Xaml.Grid.GridColumnBase   Width$	 150Q�64   (  "Syncfusion.UI.Xaml.Grid.GridColumn   FilteredFrom$ AdvancedFilter=�6[      
HeaderText$ Fecha��6y      Pattern$ UniversalSortableDateTime=�6�      MappingName$ Fecha��6�      TextAlignment$ Center=�6�      DisplayBinding 6@   Z�    ValueBinding 6�   Z� ,	  &Syncfusion.UI.Xaml.Grid.GridTextColumn	  50      $	 150Q�60   $ AdvancedFilter=�6W   $ Egreso/Ingreso��6u   $ EgrIng��6�   $ Center=�6�    6<   Z�  6�   Z� 	  51      $	 180Q�60   $ AdvancedFilter=�6W   $ Concepto��6u   $ Concepto��6�   $
 Left=�6�    6<   Z�  6�   Z� 	  52      $ 70Q�60   $ AdvancedFilter=�6V   $ Bodega��6t   $	 Bod��6�   $ Center=�6�    6;   Z�  6�   Z� 	  53      $	 150Q�60   $ AdvancedFilter=�6W   $ 
Referencia��6u   $ Refer��6�   $ Center=�6�    6<   Z�  6�   Z� 	  54      $	 100Q�60   $ AdvancedFilter=�6W   $
 Item��6u   $ CodItem��6�   $ Center=�6�    6<   Z�  6�   Z� 	  55      $	 600Q�60   $ AdvancedFilter=�6W   $ Descripcion��6u   $ DescripcionItem��6�   $ Center=�6�    6<   Z�  6�   Z� /
  )Syncfusion.UI.Xaml.Grid.GridNumericColumn
  56      $	 150Q�63   $ AdvancedFilter=�6Y   $ Ingreso��6w   $ Ingreso��6�   $ Right=�6�    6?   Z�  6�   Z� 
  57      $	 150Q�63   $ AdvancedFilter=�6Y   $ Egreso��6w   $ Egreso��6�   $ Right=�6�    6?   Z�  6�   Z� 
  58      $	 150Q�63   $ AdvancedFilter=�6Y   $ Saldo��6w   $ Saldo��6�   $ Right=�6�    6?   Z�  6�   Z�    TableSummaryRows 5;      1  +Syncfusion.UI.Xaml.Grid.GridTableSummaryRow  ,  &Syncfusion.UI.Xaml.Grid.GridSummaryRow   ShowSummaryInRow .     SummaryColumns 5=      /  )Syncfusion.UI.Xaml.Grid.GridSummaryColumn     Name$ PriceAmount��6;      Format8  2Syncfusion.UI.Xaml.Grid.GridSummaryFormatConverter$ 'Total Ingreso : {Sum:N}' 5>   /       MappingName$  Ingreso��5?   /   !   SummaryType$! DoubleAggregate=�5@   /     5A      $ PriceAmount��6;   $ 'Total Egreso : {Sum:N}' 5B   /   $  Egreso��5C   /   $! DoubleAggregate=�5D   /   5F      5H      5I      5K      5L      