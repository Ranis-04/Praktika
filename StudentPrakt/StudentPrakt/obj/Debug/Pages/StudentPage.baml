   M S B A M L   `   `   `  ����G  CStudentPrakt, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:StudentPrakt.PagesStudentPrakt.Pages  5      $    StudentPrakt.Pages.StudentPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:StudentPrakt.Pages     5      -   5          N� Title$  StudentPage��5
       N� 
Background
 ����.��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ TableStudGrid��5      $��1��6*      AutoGenerateColumns .  $��5q�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ФИО��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6J   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *FIO+6J     5      $ Группа��6%   $ * 6P    65   �� *Groups+6P     5      $  Специальность��6%   $ * 6e    6<   �� *Specialization.Title+6e   5      �� 5   
   -   5        	 ��Name$	 Vixod��5   F   $��2��6   $��25��6   $	��130��6*   $��
Выйти��66   $
��Left=�6U   $��10 0 0 0q�6p   6�   �� 5   
   $��2��6   $��25��6   $	��130��6*   $!��Редактировать ��66   $��Center=�6O   $��
-140 0 0 0q�6l   �� 5   
   $��2��6   $��25��6   $	��130��6*   $��Удалить��66   $��Center=�6H   $��	150 0 0 0q�6e   �� 5   
   $��Фильтрация :��6   $��0��6(   $��25��65   $��16(�6A   $��
100 0 0 0 q�6O   �� 5   
   $��0��6   $	��300��6    $��30��6,   $
��Left=�68   $��	200 0 0 0q�6S   .@�5      �� $	��911��6   �� 5       $	��921��6   �� 5!      $	��931��6   �� 5"      $	��941��6   �� 5#      $	��211��6   �� 5$      $	��221��6   �� 5%      $	��231��6   �� 5&      $	��241��6   �� 5'      $	��311��6   �� 5(      $	��321��6   �� 5)      $	��331��6   �� 5*      $	��341��6   �� 5+      $	��811��6   �� 5,      $	��821��6   �� 5-      $	��831��6   �� 5.      $	��841��6   5/      �� 51   
   -   5        $	 Dobav��51   I   $��0��6   $��25��6   $	��130��6*   $��Добавить��66   $��Center=�6l   $��	650 0 0 0q�6�   52      53      